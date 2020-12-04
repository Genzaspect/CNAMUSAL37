<?php

$retraite = 55;

$reste_retraite = 55 - $age;

$plus_retraite = $age - 55;

$age = 60;

if ($age < $retraite)

{
    echo 'Il vous reste ' $reste_retraite 'ans avant la retraite.';
}
    
elseif ($age > $retraite)
{
    echo 'Vous êtes à la retraite depuis ' $plus_retraite;
}
    
else
{
    echo 'La retraite est pour cette année.';
}

?>