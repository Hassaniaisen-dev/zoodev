<?php
// Informations de connexion à la base de données
$servername = "localhost"; // Généralement "localhost" pour un serveur local
$username = "root"; // Nom d'utilisateur par défaut pour XAMPP
$password = ""; // Mot de passe par défaut pour XAMPP (vide)
$dbname = "parc"; // Votre nom de base de données
$port = 3306; // Spécifiez le port personnalisé

// Création de la connexion
$conn = new mysqli($servername, $username, $password, $dbname, $port);

// Vérification de la connexion
if ($conn->connect_error) {
    die("La connexion a échoué : " . $conn->connect_error);
}

// Configuration du jeu de caractères
$conn->set_charset("utf8mb4");

// Activation du mode d'erreur pour les requêtes préparées
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

// Message de succès (optionnel)
echo "Connexion réussie à la base de données !";
?>
