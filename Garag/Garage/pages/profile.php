<?php 



require_once('header.php');
?>

<img src="images/GTAcustoms.webp" class="LosSantoStatus">
<div class="profile">

<div class="pfp">
<svg xmlns="http://www.w3.org/2000/svg" width="200" height="200" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
</svg>
<p class="pfptext">Profiel naam</p>
</div>

<form class="profileform">
    <div class="firsthalf">
    <label for="name">Naam</label><br>
    <input type="text" name="name"> <br>
    <label for="lastname">Achternaam</label><br>
    <input type="text" name="lastname"> <br>
    <label for="Email">Email</label><br>
    <input type="text" name="Email"> <br>
    </div>

    <div class="secondhalf">
    <label for="brand">Auto merk</label><br>
    <input type="text" name="brand"> <br>
    <label for="chassis">Chassisnummer</label><br>
    <input type="text" name="chassis"> <br>
    <label for="plate">Kenteken</label><br>
    <input type="text" name="plate"> <br>
    </div>
</form>

</div>