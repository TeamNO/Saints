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
    
   
}
