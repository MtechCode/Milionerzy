<?php
header("Content-Type: application/json");

if ($_SERVER['REQUEST_METHOD'] !== 'GET') {
    http_response_code(405); // Method Not Allowed
    exit;
}

$headers = getallheaders();
$apiKey = $headers['Authorization'] ?? '';
$validApiKey = 'nielubimydisa'; 

if (trim($apiKey) !== "Bearer $validApiKey") {
    http_response_code(401); // Unauthorized
    echo json_encode(["error" => "Unauthorized access"]);
    exit;
}


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "milionerzy";

try {
    // Database connection
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $categoryId = isset($_GET['category']) ? intval($_GET['category']) : null;
    if (!$categoryId) { 
        http_response_code(400); // Bad Request
        echo json_encode(["error" => "Category ID is required"]);
        exit;
    }
    

    $stmt = $conn->prepare("SELECT * FROM pytania WHERE kategoria = :kategoria ORDER BY RAND() LIMIT 1");
    $stmt->bindParam(':kategoria', $categoryId, PDO::PARAM_INT);
    $stmt->execute();

    // Fetch results as associative array
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Return results as JSON
    if (count($result) > 0) {
        echo json_encode($result);
    } else {
        http_response_code(404); // Not Found
        echo json_encode(["error" => "No questions found for this category."]);
    }
} catch (PDOException $e) {
    error_log($e->getMessage()); // Log error for server reference
    http_response_code(500); // Internal Server Error
    echo json_encode(["error" => "An error occurred while processing the request."]);
}

?>
