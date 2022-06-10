<?php 


?>

<img src="images/GTAcustoms.webp" class="LosSantoStatus">
<form action="" method="post" enctype="multipart/form-data">
<div class="calendar2">
    
    <div class="calendarText">
    Kies een datum:<br> <br>
    <label for="Afspraak">Afspraak:</label>
    <input type="date" id="Afspraak" name="Afspraak" value="2022-07-22"> 
    </div>
   
   
</div>

<div class="itemA">
    <label for="TypeAfspraak">Choose a car:</label>

    <select name="TypeAfspraak" id="TypeAfspraak">
        <option value="volvo">APK</option>
        <option value="saab">Controle</option>
        <option value="mercedes">Reparatie</option>
        <option value="audi">Lak</option>
    </select>
    <p class="itemText"> Text type voor uitleg afspraak type</p>
</div>
<button class="submitAfspraak" name="submit">Maak Afspraak</button>
</form>

<?php
makeAppointment();
?>