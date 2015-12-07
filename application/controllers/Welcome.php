<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Home Page
 */
class Welcome extends Application {
   
    /**
     * CTOR
     */
    public function __construct() {
        parent::__construct();
    }
    
    /**
     * Display the welcome view.
     */
    public function index()
    {
        /*
        $this->data['pagebody'] = 'welcome';
        $league = array();
        $league = $this->standing->all();
        $this->data['leagueteams'] = $league;
        $this->render();  */
        $this->data['pagebody'] = 'welcome';
        $league = array();
        $league = $this->standing->all();
        $this->data['teamnames'] = $league;
        $this->data['title'] = 'Home';
        $this->render();
    }
    
    public function predict()
    {
         $leagueteams = $this->input->post('leagueteams', TRUE);
        if (empty($leagueteams)) {
            echo 'No team code';
            return;
        }


        // Get overall average
        $homeAverage = 0.7 * $this->scores->getAverage('NO');
        $awayAverage = 0.7 * $this->scores->getAverage($leagueteams);

        // Get last 5 games average
        $home_5avg = 0.1 * $this->scores->get5Avg('NO');
        $away_5avg = 0.1 * $this->scores->get5Avg($leagueteams);

        // Get last 5 games average against selected opponent
        $home_5avg_sameOpponent = 0.2 * $this->scores->get5Avg_SameOpponent('NO', $leagueteams);
        $away_5avg_sameOpponent = 0.2 * $this->scores->get5Avg_SameOpponent($leagueteams, 'NO');

        $homePrediction = $homeAverage + $home_5avg + $home_5avg_sameOpponent;
        $homePrediction = round($homePrediction);

        $finalPrediction = $awayAverage + $away_5avg + $away_5avg_sameOpponent;
        $finalPrediction = round($finalPrediction);

        if ($homePrediction == 1 && $finalPrediction == 1) {
            echo 'Invalid data';
            return;
        }

        if ($homePrediction > $finalPrediction)
            echo 'Saints win.<br>';

        if ($homePrediction < $finalPrediction)
            echo 'Saints lose.<br>';

        if ($homePrediction == $finalPrediction)
            echo 'Tie game.<br>';

		echo $homePrediction . ' to ' . $finalPrediction;
    }

    
    public function updateStandings()
	{
            echo 'This may take a bit. Please wait.<br>';
		$url = 'nfl.jlparry.com/rpc';
		$this->load->library('xmlrpc');
		$this->xmlrpc->server($url, 80);
		$this->xmlrpc->method('since');

        if ($this->input->post('dbreset') === 'true') {
            $this->scores->truncate();
            echo 'Success! Table is now truncated.<br>';
        }
        else
        {
            echo 'Table not truncated (checkbox has to be ticked)<br>';
        }

        $request = array('20150101');
		$date_since_last_update = $this->scores->lastUpdate();
        if ($this->input->post('reset') === 'false' && $date_since_last_update) {
            $request = array($date_since_last_update);
            
        }

		$this->xmlrpc->request($request);             

        // Make game records
        foreach ($this->xmlrpc->display_response() as $key => $val) {
            $game_score = $this->scores->create();
            $game_score->Number = $val['number'];
            $game_score->Away   = $val['away'];
            $game_score->Home   = $val['home'];
            $game_score->Date   = $val['date'];
            $game_score->Score  = $val['score'];
            $game_score->AwayScores = explode(':', $val['score'])[0];
            $game_score->HomeScores = explode(':', $val['score'])[1];
            $this->scores->add($game_score);
        }

        // Clear all scores
        $this->standing->reset();
        echo 'Standing values all cleared.<br>';
           
        // Re-calculate standings
        $scores = $this->scores->all();
        foreach ($scores as $score) {
            // Win for away and loss for home
            if ($score->AwayScores > $score->HomeScores) {
                // Away
                
                $this->db->set('W', 'W+1', FALSE);
                $this->db->set('Net', 'Net+' . $score->AwayScores, FALSE);
                $this->db->where('TLC', $score->Away);
                $this->db->update('standing');
                // Home
                $this->db->set('L', 'L+1', FALSE);
                $this->db->where('TLC', $score->Home);
                $this->db->update('standing');
            }

            // Win for home and loss for away
            if ($score->AwayScores < $score->HomeScores) {
                // Home
                $this->db->set('W', 'W+1', FALSE);
                $this->db->set('Net', 'Net+' . $score->HomeScores, FALSE);
                $this->db->where('TLC', $score->Home);
                $this->db->update('standing');
                // Away
                $this->db->set('L', 'L+1', FALSE);
                $this->db->where('TLC', $score->Away);
                $this->db->update('standing');
            }

            // Tie
            if ($score->AwayScores == $score->HomeScores) {
                // Home
                $this->db->set('T', 'T+1', FALSE);
                $this->db->set('Net', 'Net+' . $score->HomeScores, FALSE);
                $this->db->where('TLC', $score->Home);
                $this->db->update('standing');
                // Away
                $this->db->set('T', 'T+1', FALSE);
                $this->db->set('Net', 'Net+' . $score->AwayScores, FALSE);
                $this->db->where('TLC', $score->Away);
                $this->db->update('standing');
            }
        }
        echo 'Standings updated!<br>';

		echo count($this->xmlrpc->display_response()) . ' amount of db data updated. <br>';
        echo 'Everything is done!<br>';
    }
    
   
}
