<?php 
		session_start();
		$userSaisie = $_SESSION['username'];
		$dbuser = 'review_site';
		$dbpass = 'password';
		$conn = new mysqli("localhost", $dbuser, $dbpass, "momentos");
		$conn->set_charset("utf8");

		if ($conn->connect_error) 
        {
			echo "Erreur de connexion à la base de données";
		}
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/style.css">
</head>

<body>
    <nav>
        <img src="../images/logo.svg" alt="">
        <ul>
            <li><a class="btnoff" href="page-co.php">Accueil</a></li>
            <li><a class="btn" href="page-fav.php">Favoris</a></li>
        </ul>
        <ul>
            <li><a class="button" href="page.php">Déconnexion</a></li>
        </ul>
    </nav>
    <main>

        <div class="grille">

        <?php
            $sql = "SELECT * FROM Fav f join VIDEOS v on v.liens = f.liens WHERE username = '" . $userSaisie . "';";
            $result = $conn->query($sql);
            if ($result->num_rows > 0)
            {
                while ($row = $result->fetch_assoc()) 
                {
                    echo '
                    <div class="block">
                        <iframe class="video" width="230" height="130" src="' . $row["liens"] . '" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    </div>
                    ';
                }
            }
        ?>
        </div>
        
    </main>

</body>

</html>