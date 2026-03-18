<?php
include "db.php";
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require './vendor/autoload.php';
function sendStatusMail($toEmail, $toName, $subject, $body) {
    $mail = new PHPMailer(); 
    $mail->isSMTP();
    $mail->Host       = 'asmtp.bilkent.edu.tr';
    $mail->SMTPAuth   = true;
    $mail->Username   = 'rand_mail239223@gmail.com'; //given a random mail adn psswd for security reasons
    $mail->Password   = '1234';
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port       = 587;

    $mail->setFrom('rand_mail239223@gmail.com', 'COMD Inventory System');
    $mail->addAddress($toEmail, $toName);
    $mail->addAddress('eda.abacioglu@ug.bilkent.edu.tr', 'Admin');

    $mail->isHTML(true);
    $mail->Subject = $subject;
    $mail->Body    = $body;

    $mail->send(); 
}

function checkUser($email, $passwd,&$user)
{
  global $db;

  $stmt = $db->prepare("select * from users where email = ?");
  $stmt->execute([$email]);

  if ($stmt->rowCount()) {
    $user = $stmt->fetch(PDO::FETCH_ASSOC);
    return password_verify($passwd, $user["password"]);
  }

  return false;
}



function isAuthenticated()
{
    return isset($_SESSION["user"]);
}

function getUserByToken($token) {
    global $db ;
    $stmt = $db->prepare("select * from users where token = ?") ;
    $stmt->execute([$token]) ;
    return $stmt->fetch(PDO::FETCH_ASSOC) ;
 }


  function setTokenByEmail($email, $token) {
    global $db ;
    $stmt = $db->prepare("update users set token = ? where email = ?") ;
    $stmt->execute([$token, $email]) ;
 }


 function validUserType($t) {
    $allowed = ["student", "instructor", "admin"];
    return in_array($t, $allowed, true);
}
?>