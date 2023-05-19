<!DOCTYPE html>
<html>
	<body>
        <?php
            session_start();
            $dbuser = 'review_site';
            $dbpass = 'password';
            $conn = new mysqli("localhost", $dbuser, $dbpass, "momentos");
            $conn->set_charset("utf8");

            if (!$conn->connect_error) 
            {
                echo "Connecté";
            }
            else 
            {
                echo "Erreur de connexion à la base de données";
            }

        
            $userSaisi = $_POST["username"];
            $mdpSaisi  = $_POST["password"];

            echo $userSaisi;
            echo $mdpSaisi;

            $query = "SELECT * FROM Users WHERE username = '" . $userSaisi . "' AND mdp = '" . $mdpSaisi . "';";
            echo $query;

            $queryArray = $conn->query($query)->fetch_array();
            // if (!$queryArray) 
            // {
            //     echo "Erreur de requête : " . $conn->error;
            //     exit();
            // }

            if (! $queryArray) 
            {
                header("Location: login.html");
                exit();
            }
            else
            {
                $_SESSION['username'] = $userSaisi;
                header("Location: page-co.php");
                exit();
            }
        ?>
    </body>
</html>