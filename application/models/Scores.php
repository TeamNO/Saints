<?php

class Scores extends MY_Model
{
    function __construct() {
        parent::__construct('game_scores', 'Id');
    }

    /**
     * Returns records
     */
    function get_since() {
        $query = $this->db->get('standing');

        return $query->result_array();
    }

    function get_date_since_last_update()
    {
        $result = $this->db->query("SELECT MAX(Date) as date FROM game_scores")
            ->row()
            ->date;
        if (empty($result))
            return false;
        return str_replace('-', '', $result);
    }

    function truncate()
    {
        $this->db->query("truncate game_scores");
    }

    /**
     * Returns count of rows
     */
    function count()
    {
        return $this->db->get('game_scores')->num_rows();
    }

    function getAverage($TLC)
    {
        $points = $this->db->query("SELECT Net AS points FROM standing WHERE TLC ='$TLC'")->row()->points;
        $gamecount = $this->db->query("SELECT (W + L + T) AS gamecount FROM standing WHERE TLC='$TLC'")->row()->gamecount;
        if (empty($gamecount))
            return 0;
        return $points / $gamecount;
    }

    function get5Avg($TLC)
    {
        $points = 0;
        $last_5_games = $this->db->query("SELECT * FROM game_scores WHERE (Away = '$TLC' OR Home = '$TLC') ORDER BY Date DESC LIMIT 5")->result();

        foreach ($last_5_games as $game) {
            if ($game->Away == $TLC) {
                $points += $game->AwayPoints;
            }
            if ($game->Home == $TLC) {
                $points += $game->HomePoints;
            }
        }

        if (count($last_5_games) == 0)
            return 0;

        return $points / count($last_5_games);
    }

    function get5Avg_SameOpponent($TLC1, $TLC2)
    {
        $score = 0;
        $previous5Games = $this->db->query("
            SELECT * FROM game_scores
            WHERE (Away = '$TLC1' OR Home = '$TLC1')
            AND (Away = '$TLC2' OR Home = '$TLC2')
            ORDER BY Date DESC LIMIT 5")
            ->result();
            //go through the 5 games
        foreach ($previous5Games as $game) {
            if ($game->Away == $TLC1) {
                $score += $game->AwayPoints;
            }
            if ($game->Home == $TLC1) {
                $score += $game->HomePoints;
            }
        }

        if (count($previous5Games) == 0)
            return 0;

        return $score / count($previous5Games);
    }
}