$Folder = Get-Location
$WareFile = "libraries\wares.xml"
$EQFile = "libraries\equipmentmods.xml"

# WEAPON STATS
<#
$MODNAMEMods = @{
    NAME_OF_MOD = @{
        AMOUNT = 1 # Amount of Nodes
        EXCLUDES = "" # NAME_OF_MODs to Exclude, ALSO VALID[SLOTA, SLOTB, SLOTC, SPECIAL]
        Name_of_Node = @{ # Names the node
            NAME = "NODE as Text" #Workaround
            BASE = Tier 0 Stat
            OFFSET = Tier 1 Stat
            MULTI = 1 # Used Mostly as Exponent
            TYPE = "LINEAR" "EXPONENT"
            MIN = 0  # Floor limit
            MAX = 10 # Celing Limit
            STATS = DEPRECIATED FALLBACK
        }
    }
}


#>
$WeaponMods = @{
    DAMAGE = @{
        TFILE = "11"
        AMOUNT = 1
        EXCLUDES = "MINING", "STICKTIME"
        DAMAGE = @{
            NAME ="DAMAGE"
            BASE = 0.05
            OFFSET = 1.05
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.1, 1.15, 1.2, 1.25, 1.3
        }
    }
    COOLING = @{
        TFILE = "12"
        AMOUNT = 1
        EXCLUDES = "MINING"
        COOLING = @{
            NAME = "COOLING"
            BASE = 0.0125
            OFFSET = 1
            MULTI = 1
            TYPE = "EXP"
            # STATS = 1.025, 1.05, 1.1, 1.2, 1.4
        }
    }
    RELOAD = @{
        TFILE = "13"
        AMOUNT = 1
        EXCLUDES = "MINING", "BEAMLENGTH"
        RELOAD = @{
            NAME = "RELOAD"
            BASE = -0.05
            OFFSET = 1
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 0.95, 0.9, 0.85, 0.8, 0.75
        }
    }
    BEAMLENGTH = @{
        TFILE = "14"
        AMOUNT = 1
        EXCLUDES = "MINING", "SPEED", "RELOAD"
        BEAMLENGTH = @{
            NAME = "BEAMLENGTH"
            BASE = 0.05
            OFFSET = 1.05
            MULTI = 1
            TYPE = "LINEAR"
            #STATS = 1.1, 1.15, 1.2, 1.25, 1.3
        }
    }
    SPEED = @{
        TFILE = "15"
        AMOUNT = 2
        EXCLUDES = "BEAMLENGTH", "MINING"
        SPEED = @{
            NAME = "SPEED"
            BASE = 0.1
            OFFSET = 1
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.1, 1.2, 1.3, 1.4, 1.5
        }
        LIFETIME = @{
            NAME = "LIFETIME"
            BASE = -0.05
            OFFSET = 1
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 0.95, 0.9, 0.85, 0.8, 0.75
        }
    }
    CHARGETIME = @{
        TFILE = "16"
        AMOUNT = 1
        EXCLUDES = "MINING"
        CHARGETIME = @{
            NAME = "CHARGETIME"
            BASE = -0.05
            OFFSET = 1
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 0.95, 0.9, 0.85, 0.8, 0.75
        }
    }
    ROTATIONSPEED = @{
        TFILE = "17"
        AMOUNT = 1
        EXCLUDES = "MINING"
        ROTATIONSPEED = @{
            NAME = "ROTATIONSPEED"
            BASE = 0.05
            OFFSET = 1.05
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.1, 1.15, 1.2, 1.25, 1.3
        }
    }
    STICKTIME = @{
        TFILE = "18"
        AMOUNT = 1
        EXCLUDES = "MINING", "DAMAGE", "BEAMLENGTH"
        STICKTIME = @{
            NAME = "STICKTIME"
            BASE = 0.05
            OFFSET = 1.05
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.1, 1.15, 1.2, 1.25, 1.3
        }
    }
    SURFACEELEMENT = @{
        TFILE = "19"
        AMOUNT = 1
        EXCLUDES = "MINING"
        SURFACEELEMENT = @{
            NAME = "SURFACEELEMENT"
            BASE = 0.2
            OFFSET = 1
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.2, 1.4, 1.6, 1.8, 2.0
        }
    }
    MINING = [Ordered]@{
        TFILE = "10"
        AMOUNT = 3
        EXCLUDES = "ALL"
        MINING = @{
            NAME = "MINING"
            BASE = 1
            OFFSET = 2
            MULTI = 1
            TYPE = "LINEAR"
            #STATS = 3, 4, 5, 6, 7
        }
        RELOAD = @{
            NAME = "RELOAD"
            BASE = 0.2
            OFFSET = 1
            MULTI = 1
            TYPE = "LINEAR"
            #STATS = 1.2, 1.4, 1.6, 1.8, 2.0
        }
        DAMAGE = @{
            NAME="DAMAGE"
            BASE = 0.1
            OFFSET = 1.0
            MULTI = 1
            TYPE = "LINEAR"
            #STATS= 1.1, 1.2, 1.3, 1.4, 1.5
        }
    }
}
# ENGINE STATS
$EngineMods = @{
    COUNT = 3
    FORWARDTHRUST = @{
        TFILE = "21"
        AMOUNT = 1
        EXCLUDES = ""
        FORWARDTHRUST = @{
            NAME = "FORWARDTHRUST"
            BASE = 0.05
            OFFSET = 1.05
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.1, 1.15, 1.2, 1.25, 1.3
        }
    }
    BOOSTTHRUST = @{
        TFILE = "22"
        AMOUNT = 1
        EXCLUDES = ""
        BOOSTTHRUST = @{
            NAME = "BOOSTTHRUST"
            BASE = 0.05
            OFFSET = 1.05
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.1, 1.15, 1.2, 1.25, 1.3
        }
        BOOSTDURRATION = @{
            NAME = "BOOSTDURRATION"
            BASE = 0.05
            OFFSET = 1.05
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.1, 1.15, 1.2, 1.25, 1.3
        }
    }
    TRAVELTHRUST = @{
        TFILE = "23"
        AMOUNT = 1
        EXCLUDES = ""
        TRAVELTHRUST = @{
            NAME = "TRAVELTHRUST"
            BASE = 0.05
            OFFSET = 1.05
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.1, 1.15, 1.2, 1.25, 1.3
        }
        travelstartthrust = @{
            NAME = "travelstartthrust"
            BASE = 0.05
            OFFSET = 1.05
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.1, 1.15, 1.2, 1.25, 1.3
        }
        travelattacktime = @{
            NAME = "travelattacktime"
            BASE = 0.05
            OFFSET = 1.05
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.1, 1.15, 1.2, 1.25, 1.3
        }
        travelchargetime = @{
            NAME = "travelchargetime"
            BASE = 0.05
            OFFSET = 1.05
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.1, 1.15, 1.2, 1.25, 1.3
        }
        travelreleasetime = @{
            NAME = "travelreleasetime"
            BASE = 0.05
            OFFSET = 1.05
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.1, 1.15, 1.2, 1.25, 1.3
        }
    }
    ROTATIONSTRAIF = @{
        TFILE = "24"
        AMOUNT = 1
        EXCLUDES = ""
        strafethrust = @{
            NAME = "strafethrust"
            BASE = 0.1
            OFFSET = 1
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.1, 1.2, 1.3, 1.4, 1.5
        }
        rotationthrust = @{
            NAME = "rotationthrust"
            BASE = 0.1
            OFFSET = 1
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.1, 1.2, 1.3, 1.4, 1.5
        }
    }
}

# SHIP STATS
$ShipMods = @{
    Count = 3
    MAXHULL = @{
        TFILE = "31"
        AMOUNT = 1
        EXCLUDES = ""
        MAXHULL = @{
            NAME = "MAXHULL"
            BASE = 0.1
            OFFSET = 1
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.1, 1.2, 1.3, 1.4, 1.5
        }
    }
    DRAGMASS = @{
        TFILE = "32"
        AMOUNT = 1
        EXCLUDES = ""
        MASS = @{
            NAME = "MASS"
            BASE = -0.05
            OFFSET = 1
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 0.95, 0.9, 0.85, 0.8, 0.75
        }
        DRAG = @{
            NAME = "DRAG"
            BASE = -0.05
            OFFSET = 1
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 0.95, 0.9, 0.85, 0.8, 0.75
        }
    }
    REGIONDAMAGE = @{
        TFILE = "33"
        AMOUNT = 1
        EXCLUDES = ""
        REGIONDAMAGE = @{
            NAME = "REGIONDAMAGE"
            BASE = 0.2
            OFFSET = 0
            MULTI = 1
            TYPE = "LINEAR"
            MAX = 1
            # STATS = 0.2, 0.4, 0.6, 0.8, 1.0
        }
    }
    MISSILECAPACITY = @{
        TFILE = "34"
        AMOUNT = 1
        EXCLUDES = ""
        MISSILECAPACITY = @{
            NAME = "MISSILECAPACITY"
            BASE = 2
            OFFSET = 0
            MULTI = 2
            TYPE = "EXP"
            # STATS = 2, 4, 8, 16, 32
        }
    }
    UNITCAPACITY = @{
        TFILE = "35"
        AMOUNT = 1
        EXCLUDES = ""
        UNITCAPACITY = @{
            NAME = "UNITCAPACITY"
            BASE = 1
            OFFSET = 0
            MULTI = 1
            TYPE = "EXP"
            # STATS = 1, 2, 4, 8, 16
        }
    }
    RADARCLOAK = @{
        TFILE = "36"
        AMOUNT = 2
        EXCLUDES = ""
        RADARCLOAK = @{
            NAME = "RADARCLOAK"
            BASE = 0.015
            OFFSET = -0.05
            MULTI = 1
            TYPE = "LINEAR", "SUBTRACTION"
            # STATS = -0.2, -0.35, -0.5, -0.65, -0.8
        }
        RADARRANGE = @{
            NAME = "RADARRANGE"
            BASE = 0.15
            OFFSET = 0.5
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 0.6, 0.75, 0.9, 1.05, 1.2
        }
    }
    RADARRANGE = @{
        TFILE = "37"
        AMOUNT = 1
        EXCLUDES = ""
        RADARRANGE = @{
            NAME = "RADARRANGE"
            BASE = 0.25
            OFFSET = 1
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.25, 1.5, 2
        }
    }
}

# SHIELD STATS
$ShieldMods = @{
    Count = 2
    CAPACITY = @{
        TFILE = "41"
        AMOUNT = 1
        EXCLUDES = ""
        CAPACITY = @{
            NAME = "CAPACITY"
            BASE = 1
            OFFSET = 0.2
            MULTI = 1
            TYPE = "LINEAR"
            # STATS = 1.2, 1.4, 1.6, 1.8, 2.0
        }
    }
    RECHARGERATE = @{
        TFILE = "42"
        AMOUNT = 1
        EXCLUDES = ""
        RECHARGERATE = @{
            NAME = "RECHARGERATE"
            BASE = 1
            OFFSET = 0.025
            MULTI = 2
            TYPE = "LINEAR"
            # STATS = 1.2, 1.4, 1.6, 1.8, 2.0
        }
    }
    RECHARGEDELAY = @{
        TFILE = "43"
        AMOUNT = 1
        EXCLUDES = ""
        RECHARGEDELAY = @{
            NAME = "RECHARGEDELAY"
            BASE = 1
            OFFSET = -0.2
            MULTI = 1
            TYPE = "LINEAR", "SUBTRACTION"
            MIN = 0.0
            # STATS = 0.8, 0.6, 0.4, 0.2, 0.0
        }
    }
}

$Tiers = [Ordered]@{
    01 = @{
        Quality = 1
        Level = 1
    }
    02 = @{
        Quality = 1
        Level = 2
    }
    03 = @{
        Quality = 2
        Level = 3
    }
    04 = @{
        Quality = 2
        Level = 4
    }
    05 = @{
        Quality = 3
        Level = 5
    }
}

$Slots = [Ordered]@{
    A = @{
        MinTier = 1
        MaxTier = 5
    }
    B = @{
        MinTier = 3
        MaxTier = 5
        OFFSET = -2
    }
    C = @{
        MinTier = 5
        MaxTier = 5
        OFFSET = -4
    }
}

function Check_Wares {
    If ([System.IO.File]::Exists($WareFile)) {
        Write-Output (" wares file exists, Regenerate?")
        Write-Host "1 = Yes"
        Write-Host "2 = No & Exit"
        $choice = Read-Host "Select Command (1-2)"
        if ($choice -match '^[1-2]$') {
            switch ($choice) {
                1 { Create_Wares }
                2 { Ext }
            }
        }
        else {
            Write-Host "Invalid Input (1-2)"
            Start-Sleep -Seconds 1
        }
    }
}

function Check_EquipmentMods {
    If ([System.IO.File]::Exists($EQFile)) {
        Write-Output ("Equipment Mods file exists, Regenerate?")
        Write-Host "1 = Yes"
        Write-Host "2 = No & Exit"
        $choice = Read-Host "Select Command (1-2)"
        if ($choice -match '^[1-2]$') {
            switch ($choice) {
                1 { Create_EquipmentMods }
                2 { Ext }
            }
        }
        else {
            Write-Host "Invalid Input (1-2)"
            Start-Sleep -Seconds 1
        }
    }
}
function Create_Wares {

Write-Output "Generating Wares.XML"
Write-Output ("<?xml version='1.0' encoding='utf-8'?>")>$WareFile
Write-Output ("<diff>")>>$WareFile
Write-Output (" <add sel='/wares'>")>>$WareFile
Write-Output ("  <!-- Weapon MODS -->")>>$WareFile
$warefileXML = [xml](Get-Content $WareFile)

List Tier Slot


foreach ($Tier in $Tears) {
    $WareElement = $warefileXML.CreateElement("ware")
    $WareID = $WareElement.SetAttribute("id", "")
    $WareID_STRING = "VMOD_WEAPON_"
    $WareName = $WareElement.SetAttribute("name", "")
    $WareDescription = $WareElement.SetAttribute( "description", "")
    $WareShortname = $WareElement.SetAttribute("shortname", "")
    $WareTransport= $WareElement.SetAttribute("transport", "inventory")
    $WareVolume = $WareElement.SetAttribute("volume", 1)
    $WareTags = $WareElement.SetAttribute("tags", "equipmentmod engineeringmod")
foreach ($Slot in $Slots) {
    IF ($Slot.MinTier )
foreach ($WMod in $WeaponMods) {

}
}
}




foreach ($M in $WeaponMods.GetEnumerator()) {
    Write-Output ("  <ware id='VMOD_WEAPON_" + $M.Name + "_01_EMPTY_00_EMPTY_00' name='" + $M.Name + "1' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
    Write-Output ("  <ware id='VMOD_WEAPON_" + $M.Name + "_02_EMPTY_00_EMPTY_00' name='" + $M.Name + "2' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
    If ($M.Name -eq 'MINING') {
        Write-Output ("  <ware id='VMOD_WEAPON_" + $M.Name + "_03_EMPTY_00_EMPTY_00' name='" + $M.Name + "3' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
        Write-Output ("  <ware id='VMOD_WEAPON_" + $M.Name + "_04_EMPTY_00_EMPTY_00' name='" + $M.Name + "4' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
        Write-Output ("  <ware id='VMOD_WEAPON_" + $M.Name + "_05_EMPTY_00_EMPTY_00' name='" + $M.Name + "5' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
     } else {
    foreach ($N in $WeaponMods.GetEnumerator()) {
        If (($N.Name -notin ($M.Name, "BEAMLENGTH", "MINING", "SPEED" )) -xor (($N.Name -eq "SPEED") -and ($M.Name -notin ("BEAMLENGTH", "MINING", "SPEED"))) -xor (($N.Name -eq "BEAMLENGTH") -and ($M.Name -notin ("BEAMLENGTH", "MINING", "SPEED")))) {
            Write-Output ("  <ware id='VMOD_WEAPON_" + $M.Name + "_03_" + $N.Name + "_01_EMPTY_00' name='" + $M.Name + "3 and " + $N.Name +"1' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
            Write-Output ("  <ware id='VMOD_WEAPON_" + $M.Name + "_04_" + $N.Name + "_02_EMPTY_00' name='" + $M.Name + "4 and " + $N.Name +"2' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
            foreach ($O in $WeaponMods.GetEnumerator()) {
                If (($O.Name -notin ($N.Name, $M.Name, "BEAMLENGTH", "MINING", "SPEED")) -xor (($O.Name -eq "SPEED") -and (($N.Name -notin ("BEAMLENGTH", "MINING", "SPEED")) -and ($M.Name -notin ("BEAMLENGTH", "MINING", "SPEED")))) -xor (($O.Name -eq "BEAMLENGTH") -and (($N.Name -notin ("BEAMLENGTH", "MINING", "SPEED")) -and ($M.Name -notin ("BEAMLENGTH", "MINING", "SPEED"))))) {
                    Write-Output ( "  <ware id='VMOD_WEAPON_" + $M.Name + "_05_" + $N.Name + "_03_" + $O.Name + "_01' name='" + $M.Name + "5 and " + $N.Name +"3 and " + $O.Name +"1' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
}}}}}}
Write-Output ( "  <!-- ENGINE MODS -->")>>$WareFile
foreach ($M in $EngineMods.GetEnumerator()) {
    Write-Output ( "  <ware id='VMOD_ENGINE_" + $M.Name + "_01_EMPTY_00_EMPTY_00' name='" + $M.Name + "1' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
    Write-Output ( "  <ware id='VMOD_ENGINE_" + $M.Name + "_02_EMPTY_00_EMPTY_00' name='" + $M.Name + "2' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
    foreach ($N in $EngineMods.GetEnumerator()) {
        If ($N.Name -ne $M.Name) {
            Write-Output ( "  <ware id='VMOD_ENGINE_" + $M.Name + "_03_" + $N.Name + "_01_EMPTY_00' name='" + $M.Name + "3 and " + $N.Name +"1' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
            Write-Output ( "  <ware id='VMOD_ENGINE_" + $M.Name + "_04_" + $N.Name + "_02_EMPTY_00' name='" + $M.Name + "4 and " + $N.Name +"2' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
            foreach ($O in $EngineMods.GetEnumerator()) {
                If ($O.Name -notin ($N.Name, $M.Name)) {
                    Write-Output ( "  <ware id='VMOD_ENGINE_" + $M.Name + "_05_" + $N.Name + "_03_" + $O.Name + "_01' name='" + $M.Name + "5 and " + $N.Name +"3 and " + $O.Name +"1' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
}}}}}
Write-Output ( "  <!-- SHIP MODS -->")>>$WareFile
foreach ($M in $ShipMods.GetEnumerator()) {
    if ($M.Name -ne "RADARRANGE") {
    Write-Output ( "  <ware id='VMOD_SHIP_" + $M.Name + "_01_EMPTY_00_EMPTY_00' name='" + $M.Name + "1' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
    Write-Output ( "  <ware id='VMOD_SHIP_" + $M.Name + "_02_EMPTY_00_EMPTY_00' name='" + $M.Name + "2' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
    foreach ($N in $ShipMods.GetEnumerator()) {
        If (($N.Name -notin ($M.Name, "RADARCLOAK", "RADARRANGE")) -xor (($N.Name -eq "RADARRANGE") -and ($M.Name -ne "RADARCLOAK"))) {
            Write-Output ( "  <ware id='VMOD_SHIP_" + $M.Name + "_03_" + $N.Name + "_01_EMPTY_00' name='" + $M.Name + "3 and " + $N.Name +"1' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
            Write-Output ( "  <ware id='VMOD_SHIP_" + $M.Name + "_04_" + $N.Name + "_02_EMPTY_00' name='" + $M.Name + "4 and " + $N.Name +"2' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
            foreach ($O in $ShipMods.GetEnumerator()) {
                If (($O.Name -notin ($N.Name, $M.Name, "RADARCLOAK", "RADARRANGE")) -xor (($O.Name -eq "RADARRANGE") -and (($M.Name -ne "RADARCLOAK") -and ($N.Name -ne "RADARRANGE")))) {
                    Write-Output ( "  <ware id='VMOD_SHIP_" + $M.Name + "_05_" + $N.Name + "_03_" + $O.Name + "_01' name='" + $M.Name + "5 and " + $N.Name +"3 and " + $O.Name +"1' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
}}}}}}
Write-Output ( "  <!-- SHIELD MODS -->")>>$WareFile
foreach ($M in $ShieldMods.GetEnumerator()) {
    Write-Output ( "  <ware id='VMOD_SHIELD_" + $M.Name + "_01_EMPTY_00_EMPTY_00' name='" + $M.Name + "1' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
    Write-Output ( "  <ware id='VMOD_SHIELD_" + $M.Name + "_02_EMPTY_00_EMPTY_00' name='" + $M.Name + "2' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
    foreach ($N in $ShieldMods.GetEnumerator()) {
        If ($N.Name -ne $M.Name) {
            Write-Output ( "  <ware id='VMOD_SHIELD_" + $M.Name + "_03_" + $N.Name + "_01_EMPTY_00' name='" + $M.Name + "3 and " + $N.Name +"1' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
            Write-Output ( "  <ware id='VMOD_SHIELD_" + $M.Name + "_04_" + $N.Name + "_02_EMPTY_00' name='" + $M.Name + "4 and " + $N.Name +"2' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
            foreach ($O in $ShieldMods.GetEnumerator()) {
                If ($O.Name -notin ($N.Name, $M.Name)) {
                    Write-Output ( "  <ware id='VMOD_SHIELD_" + $M.Name + "_05_" + $N.Name + "_03_" + $O.Name + "_01' name='" + $M.Name + "5 and " + $N.Name +"3 and " + $O.Name +"1' description='' shortname='' transport='inventory' volume='1' tags='equipmentmod engineeringmod'/>")>>$WareFile
}}}}}

Write-Output ( " </add>")>>$WareFile
Write-Output ( "</diff>")>>$WareFile
Write-Output Operation Complete
pause
Ext
}

function Create_EquipmentMods {
Write-Output ("<?xml version='1.0' encoding='utf-8'?>")>$EQFile
Write-Output ("<diff>")>>$EQFile
Write-Output (" <add sel='/equipmentmods/weapon'>")>>$EQFile
$Tiers = 1, 2, 3, 4, 5
foreach ($M in $WeaponMods.GetEnumerator()) {
    $Iter = 0
    foreach ($T in $Tiers) {
        if ($T -eq 3){
            $B = 1
            $BV = 0
        } elseif ($T -eq 4) {
            $B = 2
            $BV = 1
        } elseif ($T -eq 5) {
            $B = 3
            $BV = 2
            $C = 1
            $CV = 0
        }
    Write-Output ("<!-- "+$M.Name+" TIER " +$T+ " BLOCK -->")>>$EQFile
    If ($M.Name -eq "MINING") {
        If ($T -le 2) {
            Write-Output ("  <MINING ware='VMOD_WEAPON_MINING_0"+ $T +"_EMPTY_00_EMPTY_00' quality='1' min='"+ $WeaponMods.MINING.MINING[$Iter] +"' max='"+ $WeaponMods.MINING.MINING[$Iter] +"' />")>>$EQFile
            Write-Output ("   <bonus chance='1.0' max='2'>")>>$EQFile
            Write-Output ("    <DAMAGE min='"+ $WeaponMods.MINING.DAMAGE[$Iter] +"' max='"+ $WeaponMods.MINING.DAMAGE[$Iter] +"'/>")>>$EQFile
            Write-Output ("    <RELOAD min='"+ $WeaponMods.MINING.RELOAD[$Iter] +"' max='"+ $WeaponMods.MINING.RELOAD[$Iter] +"'/>")>>$EQFile
            Write-Output ("   <bonus/>")>>$EQFile
            Write-Output ("  <MINING/>")>>$EQFile
        } elseif ($T -le 4) {
            Write-Output ("  <MINING ware='VMOD_WEAPON_MINING_0"+ $T +"_EMPTY_00_EMPTY_00' quality='2' min='"+ $WeaponMods.MINING.MINING[$Iter] +"' max='"+ $WeaponMods.MINING.MINING[$Iter] +"' />")>>$EQFile
            Write-Output ("   <bonus chance='1.0' max='2'>")>>$EQFile
            Write-Output ("    <DAMAGE min='"+ $WeaponMods.MINING.DAMAGE[$Iter] +"' max='"+ $WeaponMods.MINING.DAMAGE[$Iter] +"'/>")>>$EQFile
            Write-Output ("    <RELOAD min='"+ $WeaponMods.MINING.RELOAD[$Iter] +"' max='"+ $WeaponMods.MINING.RELOAD[$Iter] +"'/>")>>$EQFile
            Write-Output ("   <bonus/>")>>$EQFile
            Write-Output ("  <MINING/>")>>$EQFile
        } elseif ($T -le 5) {
            Write-Output ("  <MINING ware='VMOD_WEAPON_MINING_0"+ $T +"_EMPTY_00_EMPTY_00' quality='3' min='"+ $WeaponMods.MINING.MINING[$Iter] +"' max='"+ $WeaponMods.MINING.MINING[$Iter] +"' />")>>$EQFile
            Write-Output ("   <bonus chance='1.0' max='2'>")>>$EQFile
            Write-Output ("    <DAMAGE min='"+ $WeaponMods.MINING.DAMAGE[$Iter] +"' max='"+ $WeaponMods.MINING.DAMAGE[$Iter] +"'/>")>>$EQFile
            Write-Output ("    <RELOAD min='"+ $WeaponMods.MINING.RELOAD[$Iter] +"' max='"+ $WeaponMods.MINING.RELOAD[$Iter] +"'/>")>>$EQFile
            Write-Output ("   <bonus/>")>>$EQFile
            Write-Output ("  <MINING/>")>>$EQFile
        } else {
            Write-Output "Failure In Mining"
        }
    } ELSEIF ($M.Name -eq "SPEED") {
        IF ($T -le 2) {
            Write-Output ("  <SPEED ware='VMOD_WEAPON_SPEED_0"+ $T +"_EMPTY_00_EMPTY_00' quality='1' min='"+ $WeaponMods.SPEED.SPEED[$Iter] +"' max='"+ $WeaponMods.SPEED.SPEED[$Iter] +"' />")>>$EQFile
            Write-Output ("   <bonus chance='1.0' max='1'>")>>$EQFile
            Write-Output ("    <LIFETIME min='"+ $WeaponMods.SPEED.LIFETIME[$Iter] +"' max='"+ $WeaponMods.SPEED.LIFETIME[$Iter] +"'/>")>>$EQFile
            Write-Output ("   <bonus/>")>>$EQFile
            Write-Output ("  <SPEED/>")>>$EQFile
        } elseif ($T -le 4) {
            foreach ($N in $WeaponMods.GetEnumerator()) {
                IF ($N.Name -notin ("SPEED", "MINING", "BEAMLENGTH")) {
                    Write-Output ("  <SPEED ware='VMOD_WEAPON_SPEED_0" + $T + "_" + $N.Name + "_0" + $B + "_EMPTY_00' quality='2' min='"+ $WeaponMods.SPEED.SPEED[$Iter] +"' max='"+ $WeaponMods.SPEED.SPEED[$Iter] +"' />")>>$EQFile
                    Write-Output ("   <bonus chance='1.0' max='2'>")>>$EQFile
                    Write-Output ("    <LIFETIME min='"+ $WeaponMods.SPEED.LIFETIME[$Iter] +"' max='"+ $WeaponMods.SPEED.LIFETIME[$Iter] +"'/>")>>$EQFile
                    Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                    Write-Output ("   <bonus/>")>>$EQFile
                    Write-Output ("  <SPEED/>")>>$EQFile
                }
            }
        } elseif ($T -le 5) {
            foreach ($N in $WeaponMods.GetEnumerator()) {
                foreach ($O in $WeaponMods.GetEnumerator()){
                    If (($O.Name -notin ($N.Name, $M.Name, "MINING", "BEAMLENGTH", "SPEED" )) -and ($N.Name -notin ($M.Name, "MINING", "BEAMLENGTH", "SPEED"))) {
                        Write-Output ("  <SPEED ware='VMOD_WEAPON_SPEED_0"+ $T +"_" + $N.Name + "_0" + $B + "_" + $O.Name + "_0" + $C + "' quality='3' min='"+ $WeaponMods.SPEED.SPEED[$Iter] +"' max='"+ $WeaponMods.SPEED.SPEED[$Iter] +"' />")>>$EQFile
                        Write-Output ("   <bonus chance='1.0' max='3'>")>>$EQFile
                        Write-Output ("    <LIFETIME min='"+ $WeaponMods.SPEED.LIFETIME[$Iter] +"' max='"+ $WeaponMods.SPEED.LIFETIME[$Iter] +"'/>")>>$EQFile
                        Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                        Write-Output ("    <" + $O.Name + " min='"+ $O.Value[$CV] +"' max='"+ $O.Value[$CV] +"'/>")>>$EQFile
                        Write-Output ("   <bonus/>")>>$EQFile
                        Write-Output ("  <SPEED/>")>>$EQFile
                    }
                }
            }
        }
    } else {
        If ($T -le 2) {
            Write-Output ("  <"+ $M.Name + " ware='VMOD_WEAPON_" + $M.Name + "_0"+ $T +"_EMPTY_00_EMPTY_00' quality='1' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
        } elseif ($T -le 4) {
            foreach ($N in $WeaponMods.GetEnumerator()) {
                if ($N.Name -notin ($M.Name, "MINING", "SPEED")) {
                    Write-Output ("  <"+ $M.Name + " ware='VMOD_WEAPON_" + $M.Name + "_0"+ $T +"_" + $N.Name + "_0"+ $B +"_EMPTY_00' quality='2' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
                    Write-Output ("   <bonus chance='1.0' max='1'>")>>$EQFile
                    Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                    Write-Output ("   <bonus/>")>>$EQFile
                    Write-Output ("  <"+ $M.Name +"/>")>>$EQFile
                } elseif (($N.Name -eq "SPEED") -and ($M.Name -notin ("BEAMLENGTH", "MINING", "SPEED"))) {
                    Write-Output ("  <"+ $M.Name + " ware='VMOD_WEAPON_" + $M.Name + "_0"+ $T +"_" + $N.Name + "_0"+ $B +"_EMPTY_00' quality='2' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
                    Write-Output ("   <bonus chance='1.0' max='2'>")>>$EQFile
                    Write-Output ("    <SPEED min='"+ $WeaponMods.SPEED.SPEED[$BV] +"' max='"+ $WeaponMods.SPEED.SPEED[$BV] +"'/>")>>$EQFile
                    Write-Output ("    <LIFETIME min='"+ $WeaponMods.SPEED.LIFETIME[$BV] +"' max='"+ $WeaponMods.SPEED.LIFETIME[$BV] +"'/>")>>$EQFile
                    Write-Output ("   <bonus/>")>>$EQFile
                    Write-Output ("  <"+ $M.Name +"/>")>>$EQFile
                }
            }
        } elseif ($T -le 5) {
            foreach ($N in $WeaponMods.GetEnumerator()) {
                if ($N.Name -notin ($M.Name, "MINING", "SPEED")) {
                    foreach ($O in $WeaponMods.GetEnumerator()) {
                        if ($O.Name -notin ($M.Name, $N.Name, "MINING", "SPEED")) {
                            Write-Output ("  <"+ $M.Name + " ware='VMOD_WEAPON_" + $M.Name + "_0"+ $T +"_" + $N.Name + "_0"+ $B +"_EMPTY_00' quality='2' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
                            Write-Output ("   <bonus chance='1.0' max='2'>")>>$EQFile
                            Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                            Write-Output ("    <" + $O.Name + " min='"+ $O.Value[$CV] +"' max='"+ $O.Value[$CV] +"'/>")>>$EQFile
                            Write-Output ("   <bonus/>")>>$EQFile
                            Write-Output ("  <"+ $M.Name +"/>")>>$EQFile
                        }
                        elseif (($O.Name -eq "SPEED") -and (($N.Name -notin ($M.Name, "MINING", "SPEED", "BEAMLENGTH")) -and ($M.Name -notin ("Mining", "SPEED", "BEAMLENGTH")))) {
                            if ($O.Name -notin ($M.Name, $N.NAME, "MINING", "SPEED", "BEAMLENGTH")) {
                                Write-Output ("  <"+ $M.Name + " ware='VMOD_WEAPON_" + $M.Name + "_0"+ $T +"_" + $N.Name + "_0"+ $B +"_" + $O.Name + "_0"+ $C +"' quality='3' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
                                Write-Output ("   <bonus chance='1.0' max='3'>")>>$EQFile
                                Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                                Write-Output ("    <SPEED min='"+ $WeaponMods.SPEED.SPEED[$CV] +"' max='"+ $WeaponMods.SPEED.SPEED[$CV] +"'/>")>>$EQFile
                                Write-Output ("    <LIFETIME min='"+ $WeaponMods.SPEED.LIFETIME[$CV] +"' max='"+ $WeaponMods.SPEED.LIFETIME[$CV] +"'/>")>>$EQFile
                                Write-Output ("   <bonus/>")>>$EQFile
                                Write-Output ("  <"+ $M.Name +"/>")>>$EQFile
                            }
                        }
                    }
                } elseif (($N.Name -eq "SPEED") -and ($M.Name -notin ("BEAMLENGTH", "MINING", "SPEED"))) {
                    foreach ($O in $WeaponMods.GetEnumerator()) {
                        if ($O.Name -notin ($M.Name, $N.NAME, "MINING", "SPEED", "BEAMLENGTH")) {
                            Write-Output ("  <"+ $M.Name + " ware='VMOD_WEAPON_" + $M.Name + "_0"+ $T +"_" + $N.Name + "_0"+ $B +"_" + $O.Name + "_0"+ $C +"' quality='3' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
                            Write-Output ("   <bonus chance='1.0' max='3'>")>>$EQFile
                            Write-Output ("    <SPEED min='"+ $WeaponMods.SPEED.SPEED[$BV] +"' max='"+ $WeaponMods.SPEED.SPEED[$BV] +"'/>")>>$EQFile
                            Write-Output ("    <LIFETIME min='"+ $WeaponMods.SPEED.LIFETIME[$BV] +"' max='"+ $WeaponMods.SPEED.LIFETIME[$BV] +"'/>")>>$EQFile
                            Write-Output ("    <" + $O.Name + " min='"+ $O.Value[$CV] +"' max='"+ $O.Value[$CV] +"'/>")>>$EQFile
                            Write-Output ("   <bonus/>")>>$EQFile
                            Write-Output ("  <"+ $M.Name +"/>")>>$EQFile
                        }
                    }
                }
            }
        }
    }
    $Iter += 1
}}
Write-Output ( "</add>")>>$EQFile
Write-Output ( "<add sel='/equipmentmods/engine'>")>>$EQFile
foreach ($M in $EngineMods.GetEnumerator()) {
    $Iter = 0
    foreach ($T in $Tiers) {
        
        if ($T -eq 3){
            $B = 1
        } elseif ($T -eq 4) {
            $B = 2
        } elseif ($T -eq 5) {
            $B = 3
            $C = 1
        }
        Write-Output ("<!-- "+$M.Name+" TIER " +$T+ " BLOCK -->")>>$EQFile
        If ($T -le 2) {
            Write-Output ("  <"+ $M.Name + " ware='VMOD_ENGINE_" + $M.Name + "_0"+ $T +"_EMPTY_00_EMPTY_00' quality='1' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
        } elseif ($T -le 4) {
            foreach ($N in $EngineMods.GetEnumerator()) {
                IF ($N.Name -ne $M.Name) {
                Write-Output ("  <"+ $M.Name + " ware='VMOD_ENGINE_" + $M.Name + "_0"+ $T +"_" + $N.Name + "_0"+ $B +"_EMPTY_00' quality='2' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
                Write-Output ("   <bonus chance='1.0' max='1'>")>>$EQFile
                Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                Write-Output ("   <bonus/>")>>$EQFile
                Write-Output ("  <"+ $M.Name +"/>")>>$EQFile
                }
            }
        } elseif ($T -le 5) {
            foreach ($N in $EngineMods.GetEnumerator()) {
                foreach ($O in $EngineMods.GetEnumerator()) {
                    if($O.Name -notin ($M.Name, $N.Name)) {
                    Write-Output ("  <"+ $M.Name + " ware='VMOD_ENGINE_" + $M.Name + "_0"+ $T +"_" + $N.Name + "_0"+ $B +"_" + $O.Name + "_0"+ $C +"' quality='3' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
                    Write-Output ("   <bonus chance='1.0' max='2'>")>>$EQFile
                    Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                    Write-Output ("    <" + $O.Name + " min='"+ $O.Value[$CV] +"' max='"+ $O.Value[$CV] +"'/>")>>$EQFile
                    Write-Output ("   <bonus/>")>>$EQFile
                    Write-Output ("  <"+ $M.Name +"/>")>>$EQFile
                }
                }
            }
        }
    $Iter += 1
    }
}
Write-Output ( "</add>")>>$EQFile
Write-Output ( "<add sel='/equipmentmods/ship'>")>>$EQFile
foreach ($M in $ShipMods.GetEnumerator()) {
    $Iter = 0
    foreach ($T in $Tiers) {
        if ($T -eq 3){
            $B = 1
        } elseif ($T -eq 4) {
            $B = 2
        } elseif ($T -eq 5) {
            $B = 3
            $C = 1
        }
        Write-Output ("<!-- "+$M.Name+" TIER " +$T+ " BLOCK -->")>>$EQFile
        if ($M.Name -eq "RADARCLOAK") {
            If ($T -le 2) {
                Write-Output ("  <RADARCLOAK ware='VMOD_SHIP_RADARCLOAK_0"+ $T +"_EMPTY_00_EMPTY_00' quality='1' min='"+ $ShipMods.RADARCLOAK.RADARCLOAK[$Iter] +"' max='"+ $ShipMods.RADARCLOAK.RADARCLOAK[$Iter] +"' />")>>$EQFile
                Write-Output ("   <bonus chance='1.0' max='1'>")>>$EQFile
                Write-Output ("    <RADARRANGE min='"+ $ShipMods.RADARCLOAK.RADARRANGE[$Iter] +"' max='"+ $ShipMods.RADARCLOAK.RADARRANGE[$Iter] +"'/>")>>$EQFile
                Write-Output ("   <bonus/>")>>$EQFile
                Write-Output ("  <RADARCLOAK />")>>$EQFile
            } elseif ($T -le 4) {
                foreach ($N in $ShipMods.GetEnumerator()) {
                    if (($N.Name -notin ($M.Name, "RADARCLOAK", "RADARRANGE", "DRAGMASS"))) {
                        Write-Output ("  <RADARCLOAK ware='VMOD_SHIP_RADARCLOAK_0"+ $T +"_" + $N.Name + "_0"+ $B +"_EMPTY_00' quality='2' min='"+ $ShipMods.RADARCLOAK.RADARCLOAK[$Iter] +"' max='"+ $ShipMods.RADARCLOAK.RADARCLOAK[$Iter] +"' />")>>$EQFile
                        Write-Output ("   <bonus chance='1.0' max='2'>")>>$EQFile
                        Write-Output ("    <RADARRANGE min='"+ $ShipMods.RADARCLOAK.RADARRANGE[$Iter] +"' max='"+ $ShipMods.RADARCLOAK.RADARRANGE[$Iter] +"'/>")>>$EQFile
                        Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                        Write-Output ("   <bonus/>")>>$EQFile
                        Write-Output ("  <RADARCLOAK />")>>$EQFile
                    } elseif ($N.Name -eq "DRAGMASS") {
                        Write-Output ("  <RADARCLOAK ware='VMOD_SHIP_RADARCLOAK_0"+ $T +"_" + $N.Name + "_0"+ $B +"_EMPTY_00' quality='2' min='"+ $ShipMods.RADARCLOAK.RADARCLOAK[$Iter] +"' max='"+ $ShipMods.RADARCLOAK.RADARCLOAK[$Iter] +"' />")>>$EQFile
                        Write-Output ("   <bonus chance='1.0' max='3'>")>>$EQFile
                        Write-Output ("    <RADARRANGE min='"+ $ShipMods.RADARCLOAK.RADARRANGE[$Iter] +"' max='"+ $ShipMods.RADARCLOAK.RADARRANGE[$Iter] +"'/>")>>$EQFile
                        Write-Output ("    <DRAG min='"+ $ShipMods.DRAGMASS.DRAG[$BV] +"' max='"+ $ShipMods.DRAGMASS.DRAG[$BV] +"'/>")>>$EQFile
                        Write-Output ("    <MASS min='"+ $ShipMods.DRAGMASS.MASS[$BV] +"' max='"+ $ShipMods.DRAGMASS.MASS[$BV] +"'/>")>>$EQFile
                        Write-Output ("   <bonus/>")>>$EQFile
                        Write-Output ("  <RADARCLOAK />")>>$EQFile
                    }
                }
            } elseif ($T -le 5) {
                foreach ($N in $ShipMods.GetEnumerator()) {
                    foreach ($O in $ShipMods.GetEnumerator()) {
                        if ($O.Name -notin ($M.Name, $N.Name, "RADARCLOAK", "RADARRANGE", "DRAGMASS") -and ($N.Name -notin ($M.Name, "RADARCLOAK", "RADARRANGE", "DRAGMASS"))) {
                            Write-Output ("  <RADARCLOAK ware='VMOD_SHIP_RADARCLOAK_0"+ $T +"_" + $N.Name + "_0"+ $B +"_" + $O.Name + "_0"+ $C +"' quality='3' min='"+ $ShipMods.RADARCLOAK.RADARCLOAK[$Iter] +"' max='"+ $ShipMods.RADARCLOAK.RADARCLOAK[$Iter] +"' />")>>$EQFile
                            Write-Output ("   <bonus chance='1.0' max='3'>")>>$EQFile
                            Write-Output ("    <RADARRANGE min='"+ $ShipMods.RADARCLOAK.RADARRANGE[$Iter] +"' max='"+ $ShipMods.RADARCLOAK.RADARRANGE[$Iter] +"'/>")>>$EQFile
                            Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                            Write-Output ("    <" + $O.Name + " min='"+ $O.Value[$CV] +"' max='"+ $O.Value[$CV] +"'/>")>>$EQFile
                            Write-Output ("   <bonus/>")>>$EQFile
                            Write-Output ("  <RADARCLOAK />")>>$EQFile
                        }  elseif ($O.Name -notin ($M.Name, $N.Name, "RADARCLOAK", "RADARRANGE", "DRAGMASS") -and ($N.Name -eq "DRAGMASS")) {
                            Write-Output ("  <RADARCLOAK ware='VMOD_SHIP_RADARCLOAK_0"+ $T +"_" + $N.Name + "_0"+ $B +"_" + $O.Name + "_0"+ $C +"' quality='3' min='"+ $ShipMods.RADARCLOAK.RADARCLOAK[$Iter] +"' max='"+ $ShipMods.RADARCLOAK.RADARCLOAK[$Iter] +"' />")>>$EQFile
                            Write-Output ("   <bonus chance='1.0' max='3'>")>>$EQFile
                            Write-Output ("    <RADARRANGE min='"+ $ShipMods.RADARCLOAK.RADARRANGE[$Iter] +"' max='"+ $ShipMods.RADARCLOAK.RADARRANGE[$Iter] +"'/>")>>$EQFile
                            Write-Output ("    <DRAG min='"+ $ShipMods.DRAGMASS.DRAG[$BV] +"' max='"+ $ShipMods.DRAGMASS.DRAG[$BV] +"'/>")>>$EQFile
                            Write-Output ("    <MASS min='"+ $ShipMods.DRAGMASS.MASS[$BV] +"' max='"+ $ShipMods.DRAGMASS.MASS[$BV] +"'/>")>>$EQFile
                            Write-Output ("    <" + $O.Name + " min='"+ $O.Value[$CV] +"' max='"+ $O.Value[$CV] +"'/>")>>$EQFile
                            Write-Output ("   <bonus/>")>>$EQFile
                            Write-Output ("  <RADARCLOAK />")>>$EQFile
                        }
                         elseif (($O.Name -eq "DRAGMASS") -and (($O.Name -notin ($N.Name, $M.Name, "RADARCLOAK", "RADARRANGE")) -and ($N.Name -notin ($M.Name,"RADARCLOAK", "RADARRANGE", "DRAGMASS")))) {
                            Write-Output ("  <RADARCLOAK ware='VMOD_SHIP_RADARCLOAK_0"+ $T +"_" + $N.Name + "_0"+ $B +"_" + $O.Name + "_0"+ $C +"' quality='3' min='"+ $ShipMods.RADARCLOAK.RADARCLOAK[$Iter] +"' max='"+ $ShipMods.RADARCLOAK.RADARCLOAK[$Iter] +"' />")>>$EQFile
                            Write-Output ("   <bonus chance='1.0' max='4'>")>>$EQFile
                            Write-Output ("    <RADARRANGE min='"+ $ShipMods.RADARCLOAK.RADARRANGE[$Iter] +"' max='"+ $ShipMods.RADARCLOAK.RADARRANGE[$Iter] +"'/>")>>$EQFile
                            Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                            Write-Output ("    <DRAG min='"+ $ShipMods.DRAGMASS.DRAG[$CV] +"' max='"+ $ShipMods.DRAGMASS.DRAG[$CV] +"'/>")>>$EQFile
                            Write-Output ("    <MASS min='"+ $ShipMods.DRAGMASS.MASS[$CV] +"' max='"+ $ShipMods.DRAGMASS.MASS[$CV] +"'/>")>>$EQFile
                            Write-Output ("   <bonus/>")>>$EQFile
                            Write-Output ("  <RADARCLOAK />")>>$EQFile
                        }
                    }                    
                }
            }
        } elseif ($M.Name -eq "DRAGMASS") {
            If ($T -le 2) {
                Write-Output ("  <DRAG ware='VMOD_SHIP_DRAGMASS_0"+ $T +"_EMPTY_00_EMPTY_00' quality='1' min='"+ $ShipMods.DRAGMASS.DRAG[$Iter] +"' max='"+ $ShipMods.DRAGMASS.DRAG[$Iter] +"' />")>>$EQFile
                Write-Output ("   <bonus chance='1.0' max='1'>")>>$EQFile
                Write-Output ("    <MASS min='"+ $ShipMods.DRAGMASS.MASS[$Iter] +"' max='"+ $ShipMods.DRAGMASS.MASS[$Iter] +"'/>")>>$EQFile
                Write-Output ("   <bonus/>")>>$EQFile
                Write-Output ("  <DRAG />")>>$EQFile
            } elseif ($T -le 4) {
                foreach ($N in $ShipMods.GetEnumerator()) {
                    if ($N.Name -notin ($M.Name, "RADARCLOAK")) {
                        Write-Output ("  <DRAG ware='VMOD_SHIP_DRAGMASS_0"+ $T +"_" + $N.Name + "_0"+ $B +"_EMPTY_00' quality='2' min='"+ $ShipMods.DRAGMASS.DRAG[$Iter] +"' max='"+ $ShipMods.DRAGMASS.DRAG[$Iter] +"' />")>>$EQFile
                        Write-Output ("   <bonus chance='1.0' max='2'>")>>$EQFile
                        Write-Output ("    <MASS min='"+ $ShipMods.DRAGMASS.MASS[$Iter] +"' max='"+ $ShipMods.DRAGMASS.MASS[$Iter] +"'/>")>>$EQFile
                        Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                        Write-Output ("   <bonus/>")>>$EQFile
                        Write-Output ("  <DRAG />")>>$EQFile
                    }
                }
            } elseif ($T -le 5) {
                foreach ($N in $ShipMods.GetEnumerator()) {
                    foreach ($O in $ShipMods.GetEnumerator()) {
                        if ($O.Name -notin ($M.Name, $N.Name, "RADARCLOAK") -and ($N.Name -notin ($M.Name, "RADARCLOAK"))) {
                            Write-Output ("  <DRAG ware='VMOD_SHIP_DRAGMASS_0"+ $T +"_" + $N.Name + "_0"+ $B +"_" + $O.Name + "_0"+ $C +"' quality='3' min='"+ $ShipMods.DRAGMASS.DRAG[$Iter] +"' max='"+ $ShipMods.DRAGMASS.DRAG[$Iter] +"' />")>>$EQFile
                            Write-Output ("   <bonus chance='1.0' max='3'>")>>$EQFile
                            Write-Output ("    <MASS min='"+ $ShipMods.DRAGMASS.MASS[$Iter] +"' max='"+ $ShipMods.DRAGMASS.MASS[$Iter] +"'/>")>>$EQFile
                            Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                            Write-Output ("    <" + $O.Name + " min='"+ $O.Value[$BV] +"' max='"+ $O.Value[$BV] +"'/>")>>$EQFile
                            Write-Output ("   <bonus/>")>>$EQFile
                            Write-Output ("  <DRAG />")>>$EQFile
                        }
                    }
                }
            }
        } elseif ($M.Name -ne "RADARRANGE") {
            If ($T -le 2) {
                Write-Output ("  <"+ $M.Name + " ware='VMOD_SHIP_" + $M.Name + "_0"+ $T +"_EMPTY_00_EMPTY_00' quality='1' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
            } elseif ($T -le 4) {
                foreach ($N in $ShipMods.GetEnumerator()) {
                    If ($N.Name -notin ($M.Name,$N.Name, "RADARCLOAK", "DRAGMASS")) {
                        Write-Output ("<!-- This Was Validated -->")>>$EQFile
                        Write-Output ("  <"+ $M.Name + " ware='VMOD_SHIP_" + $M.Name + "_0"+ $T +"_" + $N.Name + "_0"+ $B +"_EMPTY_00' quality='2' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
                        Write-Output ("   <bonus chance='1.0' max='1'>")>>$EQFile
                        Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                        Write-Output ("   <bonus/>")>>$EQFile
                        Write-Output ("  <"+ $M.Name +"/>")>>$EQFile
                    } elseif (($N.Name -eq "DRAGMASS"))   {
                        Write-Output ("<!-- This Was Validated 2 -->")>>$EQFile
                        Write-Output ("  <"+ $M.Name + " ware='VMOD_SHIP_" + $M.Name + "_0"+ $T +"_" + $N.Name + "_0"+ $B +"_EMPTY_00' quality='2' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
                        Write-Output ("   <bonus chance='1.0' max='2'>")>>$EQFile
                        Write-Output ("    <DRAG min='"+ $ShipMods.DRAGMASS.DRAG[$BV] +"' max='"+ $ShipMods.DRAGMASS.DRAG[$BV] +"'/>")>>$EQFile
                        Write-Output ("    <MASS min='"+ $ShipMods.DRAGMASS.MASS[$BV] +"' max='"+ $ShipMods.DRAGMASS.MASS[$BV] +"'/>")>>$EQFile
                        Write-Output ("   <bonus/>")>>$EQFile
                        Write-Output ("  <"+ $M.Name +"/>")>>$EQFile
                    }
                }
            } elseif ($T -le 5) {
                foreach ($N in $ShipMods.GetEnumerator()) {
                    foreach ($O in $ShipMods.GetEnumerator()) {
                        If (($O.Name -notin ($M.Name, $N.Name, "RADARCLOAK", "DRAGMASS")) -and ($N.Name -notin ($M.Name, "RADARCLOAK", "DRAGMASS"))) {
                            Write-Output ("<!-- This Was Validated 3 -->")>>$EQFile
                            Write-Output ("  <"+ $M.Name + " ware='VMOD_SHIP_" + $M.Name + "_0"+ $T +"_" + $N.Name + "_0"+ $B +"_" + $O.Name + "_0"+ $C +"' quality='3' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
                            Write-Output ("   <bonus chance='1.0' max='2'>")>>$EQFile
                            Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                            Write-Output ("    <" + $O.Name + " min='"+ $O.Value[$CV] +"' max='"+ $O.Value[$CV] +"'/>")>>$EQFile
                            Write-Output ("   <bonus/>")>>$EQFile
                            Write-Output ("  <"+ $M.Name +"/>")>>$EQFile
                        }
                        elseif (($O.Name -eq "DRAGMASS") -and ($N.Name -notin ($M.Name, "RADARCLOAK", "DRAGMASS"))) {
                            Write-Output ("<!-- This Was Validated 4 -->")>>$EQFile
                            Write-Output ("  <"+ $M.Name + " ware='VMOD_SHIP_" + $M.Name + "_0"+ $T +"_" + $N.Name + "_0"+ $B +"_" + $O.Name + "_0"+ $C +"' quality='3' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
                            Write-Output ("   <bonus chance='1.0' max='2'>")>>$EQFile
                            Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                            Write-Output ("    <DRAG min='"+ $ShipMods.DRAGMASS.DRAG[$CV] +"' max='"+ $ShipMods.DRAGMASS.DRAG[$CV] +"'/>")>>$EQFile
                            Write-Output ("    <MASS min='"+ $ShipMods.DRAGMASS.MASS[$CV] +"' max='"+ $ShipMods.DRAGMASS.MASS[$CV] +"'/>")>>$EQFile
                            Write-Output ("   <bonus/>")>>$EQFile
                            Write-Output ("  <"+ $M.Name +"/>")>>$EQFile
                        }
                    }
                }
            }
        }
        $Iter += 1
    }
}
Write-Output ( "</add>")>>$EQFile
Write-Output ( "<add sel='/equipmentmods/shield'>")>>$EQFile
foreach ($M in $ShieldMods.GetEnumerator()) {
    $Iter = 0
    foreach ($T in $Tiers) {
        if ($T -eq 3){
            $B = 1
        } elseif ($T -eq 4) {
            $B = 2
        } elseif ($T -eq 5) {
            $B = 3
            $C = 1
        }
        Write-Output ("<!-- "+$M.Name+" TIER " +$T+ " BLOCK -->")>>$EQFile
        If ($T -le 2) {
            Write-Output ("  <"+ $M.Name + " ware='VMOD_SHIELD_" + $M.Name + "_0"+ $T +"_EMPTY_00_EMPTY_00' quality='1' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
        } elseif ($T -le 4) {
            foreach ($N in $ShieldMods.GetEnumerator()) {
                if ($N.Name -ne $M.Name) {
                Write-Output ("  <"+ $M.Name + " ware='VMOD_SHIELD_" + $M.Name + "_0"+ $T +"_" + $N.Name + "_0"+ $C +"_EMPTY_00' quality='2' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
                Write-Output ("   <bonus chance='1.0' max='1'>")>>$EQFile
                Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                Write-Output ("   <bonus/>")>>$EQFile
                Write-Output ("  <"+ $M.Name +"/>")>>$EQFile
                }
            }
        } elseif ($T -le 5) {
            foreach ($N in $ShieldMods.GetEnumerator()) {
                foreach ($O in $ShieldMods.GetEnumerator()) {
                    if ($O.Name -notin ($N.Name, $M.Name)) {
                    Write-Output ("  <"+ $M.Name + " ware='VMOD_SHIELD_" + $M.Name + "_0"+ $T +"_" + $N.Name + "_0"+ $B +"_" + $O.Name + "_0"+ $C +"' quality='3' min='"+ $M.Value[$Iter] +"' max='"+ $M.Value[$Iter] +"' />")>>$EQFile
                    Write-Output ("   <bonus chance='1.0' max='2'>")>>$EQFile
                    Write-Output ("    <" + $N.Name + " min='"+ $N.Value[$BV] +"' max='"+ $N.Value[$BV] +"'/>")>>$EQFile
                    Write-Output ("    <" + $O.Name + " min='"+ $O.Value[$CV] +"' max='"+ $O.Value[$CV] +"'/>")>>$EQFile
                    Write-Output ("   <bonus/>")>>$EQFile
                    Write-Output ("  <"+ $M.Name +"/>")>>$EQFile
                    }
                }
            }
        }
        $Iter += 1
    }
}
Write-Output ( "</add>")>>$EQFile
Write-Output ( "</diff>")>>$EQFile
}


function TestingFunction {
Write-Output Testing
pause
Write-Output ($WeaponMods.SPEED.Keys[0])
Write-Output ($WeaponMods.SPEED.Values[0])
Pause
foreach ($M in $WeaponMods.GetEnumerator()) {
    IF ($M.Value -is [hashtable]) {
    Write-Output ( $M.Key + " IS a HASHTABLE ")
        if ($M.Name -eq "SPEED") {
            Write-Output ("Testing Value 1 : " + $M.Vamue.SPEED.Name)
            Write-Output ("Testing Value 2 : " + $M.Value.SPEED[0]    )
            Write-Output ("Testing Value 3 : " + $M.ToString()   )
            Write-Output ("Testing Value 4 : " + $M.Value[0]     )
        }
    }
}

}
function Ext {
    Write-Output "End of File, Exit"
    EXIT
}

Write-Host $Folder
Write-Host $WareFile
Write-Host "1 = Generate Wares"
Write-Host "2 = Generate Equipment Mods"
Write-Host "3 = test"
Write-Host "4 = Exit"
while ($true) {
    $choice = Read-Host "Select Command (1-4)"
    if ($choice -match '^[1-4]$') {
        switch ($choice) {
            1 { 
                Check_Wares 
            }
            2 {
                Check_EquipmentMods
            }
            3 { 
                TestingFunction
            }
            4 { 
                Ext
            }
        }
    }
    else {
        Write-Host "Invalid Input (1-4)"
        Start-Sleep -Seconds 1
    }
}