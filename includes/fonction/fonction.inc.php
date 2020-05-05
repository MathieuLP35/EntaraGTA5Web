<?php

function hex($dec) {
    // init hex array
    $hex = array();
    while ($dec)
    {
        // get modulus // based on docs both params are string
        $modulus = bcmod($dec, '16');
        // convert to hex and prepend to array
        array_unshift($hex, dechex($modulus));
        // update decimal number
        $dec = bcdiv(bcsub($dec, $modulus), 16);
    }
    // array elements to string
    return implode('', $hex);

}

function getAccessLevel($bdd, $steamId) {
    $aLevel= 0;
    $steamId_hex = hex($steamId);
    $request = "select * from users where identifier = 'steam:$steamId_hex'";
    $query = $bdd->query($request);
    while ($accessLevel = $query->fetch()) {
        $aLevel = $accessLevel['permission_level'];
    }
    return $aLevel;
}

function rankList($rank) {
    $PlayerRank = "";
    switch ($rank) {
        case 0:
            $PlayerRank = 'Joueur';
        break;
        case 1:
            $PlayerRank = 'Staff du serveur';
        break;
        case 2:
            $PlayerRank = 'Staff du serveur';
        break;
        case 3:
            $PlayerRank = 'Staff du serveur';
        break;
        case 4:
            $PlayerRank = 'Fondateur du serveur';
        break;
        case 5:
            $PlayerRank = 'Développeur du serveur';
        break;
    }
    return $PlayerRank;
}
