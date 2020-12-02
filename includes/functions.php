<?php

     $result = array();

     function getAllUsers($conn) {
         $query = "SELECT id, name, img, thumb, vid, description, price, slogan FROM miniCooper";
         $runQuery = $conn->query($query);
         while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
             $result[] = $row;
         }
 
         //return $result;
         echo (json_encode($result));
     }

     function getSingleUser($conn, $id) {
        $query = "SELECT * FROM miniCooper WHERE id=" . $id . "";

        $runQuery = $conn->query($query);

        while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }

        //return $result;
        echo (json_encode($result));
    }