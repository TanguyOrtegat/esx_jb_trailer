Config = {}

-- xpos is for moving vehicle on trailer left and right
-- ypos is for moving vehicle on trailer back and forth
-- zpos is for moving the vehicle up and down

Config.Locale = 'en'
Config.Key    = 26 -- Default is C on Keyboard or R3 on Controller

-- Set to true if your using a controller. Looking behind will no longer detach your trailer and you can still use d-pad right to detach trailer as usual.
Config.DisableController = false 
Config.DetachTrailerKey  = 29 -- B on keyboard by default. Wont work if DisableController is set to true

Config.SmallTrailerTowListOnly = true -- Set to false if you want to tow vehicle that are not on the list of the Cartrailer 
Config.BoatTrailerTowListOnly  = true -- Set to false if you want to tow vehicle that are not on the list of the Boattrailer
Config.BigTrailerTowListOnly   = true -- Set to false if you want to tow vehicle that are not on the list of the Trucktrailer.
Config.PjTrailerTowListOnly    = true -- Set to false if you want to tow vehicle that are not on the list of the PjTrailer.

Config.Boattrailer = {
    [-282946103] = {ypos = -0.6 , zpos = 0.3},--suntrap
    [290013743] = {ypos = -0.9, zpos = 0.7 },--tropic
    [1448677353] = {ypos = -0.9, zpos = 0.7 },--tropic2
    [1070967343] = {ypos = -1.3, zpos = 0.7 },--toro
    [908897389] = {ypos = -1.3, zpos = 0.7 },--toro2
    [231083307] = {ypos = -2.1, zpos = 0.4 },--speeder
    [437538602] = {ypos = -2.1, zpos = 0.4 },--speeder2
    [400514754] = {ypos = -1.2, zpos = 0.8 },--squalo
    [861409633] = {ypos = -2.0, zpos = 0.6 },--jetmax
    [1033245328] = {ypos = -1.1, zpos = 0.3 },--Dinghy
    [276773164] = {ypos = -1.1, zpos = 0.3 },--Dinghy2
    [509498602] = {ypos = -1.1, zpos = 0.3 },--Dinghy3
    [867467158] = {ypos = -1.1, zpos = 0.3 },--Dinghy4
    [-1030275036] = {ypos = -1.1, zpos = 0.0 },--Seashark
    [-616331036] = {ypos = -1.1, zpos = 0.0 },--Seashark2
    [-311022263] = {ypos = -1.1, zpos = 0.0 },--Seashark3
	[-488123221] = {ypos = -1.0, zpos = 0.6 },--predator
}

Config.Cartrailer = {
	----------------
	----COMPACTS----
	----------------
	[-344943009] =  {ypos = -0.95 , zpos = 0.5},--blista
	[1039032026] =  {ypos = -0.95 , zpos = 0.2},--blista 2
	[-591651781] =  {ypos = -0.95 , zpos = 0.2},--blista 2
	[1549126457] =  {ypos = -0.70 , zpos = -0.1},--brioso
	[-1130810103] =  {ypos = -0.90 , zpos = 0.2},--Dilettante
	[1682114128] =  {ypos = -0.90 , zpos = 0.2},--Dilettante2
	[-1177863319] =  {ypos = -0.80 , zpos = 0.4},--Issi2
	[-431692672] =  {ypos = -0.50 , zpos = 0.0},--Panto
	[-1450650718] =  {ypos = -0.90 , zpos = 0.3},--Prairie
	[841808271] =  {ypos = -0.90 , zpos = 0.4},--Rhapsody
	--------------
	----COUPES----
	--------------
	[330661258] =  {ypos = -0.95 , zpos = 0.2},--CogCabrio
	[-5153954] =  {ypos = -0.95 , zpos = 0.3},--Exemplar
	[-591610296] =  {ypos = -0.95 , zpos = 0.3},--F620
	[-391594584] =  {ypos = -0.95 , zpos = 0.4},--Felon
	[-89291282] =  {ypos = -0.95 , zpos = 0.4},--Felon2
	[-624529134] =  {ypos = -0.95 , zpos = 0.4},--Jackal
	[1348744438] =  {ypos = -0.95 , zpos = 0.5},--Oracle
	[-511601230] =  {ypos = -1.0 , zpos = 0.0},--Oracle2
	[1349725314] =  {ypos = -1.0 , zpos = 0.1},--Sentinel
	[873639469] =  {ypos = -1.0 , zpos = 0.1},--Sentinel2
	[1581459400] =  {ypos = -0.70 , zpos = 0.1},--Windsor
	[-1930048799] =  {ypos = -0.70 , zpos = 0.1},--Windsor2
	[-1122289213] =  {ypos = -0.70 , zpos = 0.1},--Zion
	[-1193103848] =  {ypos = -0.70 , zpos = 0.1},--Zion2
	--------------
	----CYCLES----
	--------------
	[1131912276] =  {ypos = -1.0 , zpos = 0.1},--Bmx
	[448402357] =  {ypos = -1.2 , zpos = 0.3},--Cruiser
	[-836512833] =  {ypos = -1.2 , zpos = 0.35},--Fixter
	[-186537451] =  {ypos = -1.2 , zpos = 0.35},--Scorcher
	[1127861609] =  {ypos = -1.2 , zpos = 0.35},--TriBike
	[-1233807380] =  {ypos = -1.2 , zpos = 0.35},--TriBike2
	[-400295096] =  {ypos = -1.2 , zpos = 0.35},--TriBike3
	-------------------
	----MOTORCYCLES----
	-------------------
	[1672195559] =  {ypos = -1.0 , zpos = 0.2},--Akuma
	[-2115793025] =  {ypos = -1.2 , zpos = 0.1},--Avarus
	[-2140431165] =  {ypos = -1.2 , zpos = 0.2},--Bagger
	[-891462355] =  {ypos = -1.2 , zpos = 0.1},--Bati2
	[-114291515] =  {ypos = -1.2 , zpos = 0.1},--Bati
	[86520421] =  {ypos = -1.2 , zpos = 0.2},--BF400
	[-440768424] =  {ypos = -1.2 , zpos = 0.0},--Blazer4
	[11251904] =  {ypos = -1.0 , zpos = 0.2},--CarbonRS
	[6774487] =  {ypos = -1.2 , zpos = 0.1},--Chimera
	[390201602] =  {ypos = -1.2 , zpos = 0.2},--Cliffhanger
	[-1404136503] =  {ypos = -1.2 , zpos = 0.2},--Daemon2
	[2006142190] =  {ypos = -1.2 , zpos = 0.2},--Daemon
	[822018448] =  {ypos = -1.2 , zpos = 0.2},--Defiler
	[-1670998136] =  {ypos = -1.2 , zpos = 0.2},--Double
	[1753414259] =  {ypos = -1.0 , zpos = 0.2},--Enduro
	[2035069708] =  {ypos = -1.2 , zpos = 0.2},--Esskey
	[-1842748181] =  {ypos = -1.2 , zpos = 0.2},--Faggio
	[55628203] =  {ypos = -1.2 , zpos = 0.2},--Faggio2
	[-1289178744] =  {ypos = -1.2 , zpos = 0.2},--Faggio3
	[-757735410] =  {ypos = -1.2 , zpos = 0.15},--Fcr2
	[627535535] =  {ypos = -1.2 , zpos = 0.15},--Fcr
	[741090084] =  {ypos = -1.0 , zpos = 0.2},--Gargoyle
	[-255678177] =  {ypos = -1.0 , zpos = 0.2},--Hakuchou2
	[1265391242] =  {ypos = -1.0 , zpos = 0.2},--Hakuchou
	[301427732] =  {ypos = -1.2 , zpos = 0.2},--Hexer
	[-159126838] =  {ypos = -1.2 , zpos = 0.15},--Innovation
	[640818791] =  {ypos = -1.2 , zpos = 0.2},--Lectro
	[-1523428744] =  {ypos = -1.2 , zpos = 0.2},--Manchez
	[-634879114] =  {ypos = -1.2 , zpos = 0.2},--Nemesis
	[-1606187161] =  {ypos = -1.2 , zpos = 0.2},--Nightblade
	[884483972] =  {ypos = -1.2 , zpos = 0.2},--Oppressor
	[-909201658] =  {ypos = -1.2 , zpos = 0.2},--PCJ
	[1873600305] =  {ypos = -1.2 , zpos = 0.2},--Ratbike
	[-893578776] =  {ypos = -1.2 , zpos = 0.2},--Ruffian
	[-1453280962] =  {ypos = -1.2 , zpos = 0.2},--Sanchez2
	[788045382] =  {ypos = -1.2 , zpos = 0.2},--Sanchez
	[1491277511] =  {ypos = -1.2 , zpos = 0.2},--Sanctus
	[-405626514] =  {ypos = -1.2 , zpos = 0.0},--Shotaro
	[743478836] =  {ypos = -1.2 , zpos = 0.2},--Sovereign
	[1836027715] =  {ypos = -1.2 , zpos = 0.0},--Thrust
	[-140902153] =  {ypos = -1.2 , zpos = 0.2},--Vader
	[-1353081087] =  {ypos = -1.2 , zpos = 0.0},--Vindicator
	[-609625092] =  {ypos = -1.2 , zpos = 0.2},--Vortex
	[-618617997] =  {ypos = -1.2 , zpos = 0.2},--Wolfsbane
	[-1009268949] =  {ypos = -1.2 , zpos = 0.2},--Zombiea
	[-570033273] =  {ypos = -1.2 , zpos = 0.2},--Zombieb
	--------------
	----MUSCLE----
	--------------
	[-1205801634] =  {ypos = -1.0 , zpos = 0.1},--Blade
	[-682211828] =  {ypos = -1.0 , zpos = 0.0},--Buccaneer
	[-1013450936] =  {ypos = -1.2 , zpos = -0.1},--Buccaneer2
	[349605904] =  {ypos = -1.2 , zpos = 0.1},--Chino
	[-1361687965] =  {ypos = -1.2 , zpos = 0.0},--Chino2
	[80636076] =  {ypos = -1.2 , zpos = -0.1},--Dominator
	[-915704871] =  {ypos = -1.2 , zpos = -0.1},--Dominator2
	[723973206] =  {ypos = -1.2 , zpos = 0.2},--Dukes
	[-326143852] =  {ypos = -1.2 , zpos = 0.2},--Dukes2
	[-2119578145] =  {ypos = -1.2 , zpos = 0.1},--Faction
	[-1790546981] =  {ypos = -1.2 , zpos = 0.0},--Faction2
	[-2039755226] =  {ypos = -1.2 , zpos = 0.1},--Faction3
	[-1800170043] =  {ypos = -1.2 , zpos = 0.0},--Gauntlet
	[349315417] =  {ypos = -1.2 , zpos = 0.1},--Gauntlet2
	[37348240] =  {ypos = -0.9 , zpos = 0.0},--Hotknife
	[525509695] =  {ypos = -1.2 , zpos = 0.3},--Moonbeam
	[1896491931] =  {ypos = -1.2 , zpos = 0.1},--Moonbeam2
	[-1943285540] =  {ypos = -1.0 , zpos = 0.1},--Nightshade
	[-2095439403] =  {ypos = -1.2 , zpos = 0.1},--Phoenix
	[1507916787] =  {ypos = -1.2 , zpos = 0.3},--Picador
	[-589178377] =  {ypos = -1.2 , zpos = -0.1},--RatLoader2
	[-227741703] =  {ypos = -1.2 , zpos = 0.3},--Ruiner
	[941494461] =  {ypos = -1.2 , zpos = 0.3},--Ruiner2
	[-1685021548] =  {ypos = -1.2 , zpos = 0.1},--SabreGT
	[223258115] =  {ypos = -1.2 , zpos = 0.1},--SabreGT2
	[729783779] =  {ypos = -1.2 , zpos = 0.2},--SlamVan
	[833469436] =  {ypos = -1.2 , zpos = 0.2},--SlamVan2
	[1119641113] =  {ypos = -1.2 , zpos = 0.1},--SlamVan3
	[1923400478] =  {ypos = -1.2 , zpos = 0.1},--Stalion
	[-401643538] =  {ypos = -1.2 , zpos = 0.1},--Stalion2
	[972671128] =  {ypos = -1.2 , zpos = 0.1},--Tampa
	[-1071380347] =  {ypos = -1.2 , zpos = 0.1},--Tampa2
	[-1210451983] =  {ypos = -1.2 , zpos = 0.1},--Tampa3
	[-825837129] =  {ypos = -1.2 , zpos = 0.2},--Vigero
	[-498054846] =  {ypos = -1.2 , zpos = 0.1},--Virgo
	[-899509638] =  {ypos = -1.2 , zpos = 0.1},--Virgo2
	[16646064] =  {ypos = -1.2 , zpos = 0.1},--Virgo3
	[2006667053] =  {ypos = -1.2 , zpos = 0.1},--Voodoo
	[523724515] =  {ypos = -1.2 , zpos = 0.1},--Voodoo2
	[-986944621] =  {ypos = -1.2 , zpos = 0.1},--Dominator3
	----------------
	----OFF-ROAD----
	----------------
	[1126868326] =  {ypos = -1.0 , zpos = 0.3},--BfInjection
	[-349601129] =  {ypos = -0.7 , zpos = 0.2},--Bifta
	[-2128233223] =  {ypos = -1.2 , zpos = 0.25},--Blazer
	[-48031959] =  {ypos = -1.2 , zpos = 0.25},--Blazer2
	[-1269889662] =  {ypos = -1.2 , zpos = 0.25},--Blazer3
	[-1590337689] =  {ypos = -1.2 , zpos = 0.0},--Blazer5
	[-1479664699] =  {ypos = -1.2 , zpos = 0.4},--Brawler
	[-1661854193] =  {ypos = -1.0 , zpos = 0.1},--Dune
	[534258863] =  {ypos = -1.0 , zpos = 0.1},--Dune2
	[92612664] =  {ypos = -0.9 , zpos = 0.2},--Kalahari
	[914654722] =  {ypos = -1.2 , zpos = 0.1},--Mesa
	[-748008636] =  {ypos = -1.2 , zpos = 0.1},--Mesa2
	------------
	----SUVS----
	------------
	[850565707] =  {ypos = -1.2 , zpos = 0.3},--BJXL
	[-808831384] =  {ypos = -1.2 , zpos = 0.3},--Baller
	[142944341] =  {ypos = -1.2 , zpos = 0.3},--Baller2
	[1878062887] =  {ypos = -1.2 , zpos = 0.3},--Baller3
	[634118882] =  {ypos = -1.2 , zpos = 0.5},--Baller4
	[470404958] =  {ypos = -1.2 , zpos = 0.5},--Baller5
	[666166960] =  {ypos = -1.2 , zpos = 0.5},--Baller6
	[2006918058] =  {ypos = -1.2 , zpos = 0.4},--Cavalcade
	[-789894171] =  {ypos = -1.2 , zpos = 0.4},--Cavalcade2
	[1177543287] =  {ypos = -1.0 , zpos = 0.2},--Dubsta
	[-394074634] =  {ypos = -1.0 , zpos = 0.2},--Dubsta2
	[-1137532101] =  {ypos = -1.2 , zpos = 0.3},--FQ2
	[-1543762099] =  {ypos = -1.2 , zpos = 0.5},--Gresley
	[884422927] =  {ypos = -1.2 , zpos = 0.3},--Habanero
	[486987393] =  {ypos = -1.1 , zpos = 0.0},--Huntley
	[1269098716] =  {ypos = -1.2 , zpos = 0.1},--Landstalker
	[-808457413] =  {ypos = -1.2 , zpos = 0.3},--Patriot
	[-1651067813] =  {ypos = -1.2 , zpos = 0.2},--Radi
	[2136773105] =  {ypos = -1.2 , zpos = 0.4},--Rocoto
	[1221512915] =  {ypos = -1.0 , zpos = 0.2},--Seminole
	[1337041428] =  {ypos = -1.0 , zpos = 0.2},--Serrano
	[1203490606] =  {ypos = -1.1 , zpos = 0.5},--XLS
	[-432008408] =  {ypos = -1.1 , zpos = 0.5},--XLS2
	--------------
	----SEDANS----
	--------------
	[-1809822327] =  {ypos = -0.9 , zpos = 0.3},--Asea
	[-1807623979] =  {ypos = -0.9 , zpos = 0.3},--Asea2
	[-1903012613] =  {ypos = -1.1 , zpos = 0.2},--Asterope
	[906642318] =  {ypos = -1.2 , zpos = 0.1},--Cog55
	[704435172] =  {ypos = -1.2 , zpos = 0.1},--Cog552
	[-2030171296] =  {ypos = -1.2 , zpos = 0.1},--Cognoscenti
	[-604842630] =  {ypos = -1.2 , zpos = 0.1},--Cognoscenti2
	[-685276541] =  {ypos = -1.1 , zpos = 0.1},--Emperor
	[-1883002148] =  {ypos = -1.1 , zpos = 0.1},--Emperor2
	[-1241712818] =  {ypos = -1.1 , zpos = 0.1},--Emperor3
	[1909141499] =  {ypos = -1.2 , zpos = 0.3},--Fugitive
	[75131841] =  {ypos = -1.2 , zpos = 0.3},--Glendale
	[-1289722222] =  {ypos = -1.0 , zpos = 0.3},--Ingot
	[886934177] =  {ypos = -1.2 , zpos = 0.3},--Intruder
	[-1883869285] =  {ypos = -1.0 , zpos = 0.2},--Premier
	[-1150599089] =  {ypos = -1.1 , zpos = 0.2},--Primo
	[-2040426790] =  {ypos = -1.1 , zpos = 0.2},--Primo2
	[-14495224] =  {ypos = -1.2 , zpos = 0.3},--Regina
	[-1477580979] =  {ypos = -1.1 , zpos = 0.3},--Stanier
	[1723137093] =  {ypos = -1.0 , zpos = 0.1},--Stratum
	[-1894894188] =  {ypos = -1.0 , zpos = 0.3},--Surge
	[-1008861746] =  {ypos = -1.0 , zpos = 0.3},--Tailgater
	[1373123368] =  {ypos = -1.0 , zpos = -0.2},--Warrener
	[1777363799] =  {ypos = -1.2 , zpos = 0.2},--Washington
	---------------
	----SERVICE----
	---------------
	[-956048545] =  {ypos = -1.1 , zpos = 0.2},--Taxi --Might not be the correct placement for this one as i have a custom taxi crown vic version.
	--------------
	----SPORTS----
	--------------
	[767087018] =  {ypos = -1.2 , zpos = 0.3},--Alpha
	[-1041692462] =  {ypos = -1.0 , zpos = 0.3},--Banshee
	[633712403] =  {ypos = -1.0 , zpos = 0.3},--Banshee2
	[1274868363] =  {ypos = -1.2 , zpos = -0.1},--BestiaGTS
	[-304802106] =  {ypos = -1.2 , zpos = 0.3},--Buffalo
	[736902334] =  {ypos = -1.2 , zpos = 0.3},--Buffalo2
	[237764926] =  {ypos = -1.2 , zpos = 0.3},--Buffalo3
	[2072687711] =  {ypos = -1.0 , zpos = 0.2},--Carbonizzare
	[-1045541610] =  {ypos = -0.8 , zpos = 0.2},--Comet2
	[-2022483795] =  {ypos = -0.8 , zpos = 0.0},--Comet3
	[108773431] =  {ypos = -1.2 , zpos = 0.3},--Coquette
	[196747873] =  {ypos = -1.0 , zpos = 0.0},--Elegy
	[-566387422] =  {ypos = -1.0 , zpos = 0.0},--Elegy2
	[-1995326987] =  {ypos = -1.0 , zpos = 0.3},--Feltzer2
	[-1566741232] =  {ypos = -0.8 , zpos = -0.2},--Feltzer3
	[-1089039904] =  {ypos = -1.1 , zpos = 0.0},--Furoregt
	[499169875] =  {ypos = -0.9 , zpos = 0.0},--Fusilade
	[2016857647] =  {ypos = -0.9 , zpos = 0.1},--Futo
	[-1405937764] =  {ypos = -1.0 , zpos = 0.2},--Infernus2
	[-1297672541] =  {ypos = -0.8 , zpos = -0.1},--Jester
	[-1106353882] =  {ypos = -0.8 , zpos = -0.1},--Jester2
	[544021352] =  {ypos = -1.2 , zpos = -0.1},--Khamelion
	[-1372848492] =  {ypos = -0.9 , zpos = 0.4},--Kuruma
	[410882957] =  {ypos = -0.9 , zpos = 0.4},--Kuruma2
	[482197771] =  {ypos = -0.9 , zpos = 0.3},--Lynx
	[-142942670] =  {ypos = -0.9 , zpos = 0.1},--Massacro
	[-631760477] =  {ypos = -0.9 , zpos = 0.1},--Massacro2
	[1032823388] =  {ypos = -0.9 , zpos = 0.3},--Ninef
	[-1461482751] =  {ypos = -0.9 , zpos = 0.3},--Ninef2
	[-777172681] =  {ypos = -0.8 , zpos = 0.1},--Omnis
	[-377465520] =  {ypos = -0.9 , zpos = 0.1},--Penumbra
	[-1934452204] =  {ypos = -1.0 , zpos = 0.2},--RapidGT
	[1737773231] =  {ypos = -1.0 , zpos = 0.2},--RapidGT2
	[-674927303] =  {ypos = -0.7 , zpos = -0.1},--Raptor
	[719660200] =  {ypos = -0.7 , zpos = 0.0},--Ruston
	[-1255452397] =  {ypos = -1.2 , zpos = 0.2},--Schafter2
	[-1485523546] =  {ypos = -1.2 , zpos = 0.2},--Schafter3
	[1489967196] =  {ypos = -1.2 , zpos = 0.2},--Schafter4
	[-888242983] =  {ypos = -1.2 , zpos = 0.2},--Schafter5
	[1922255844] =  {ypos = -1.2 , zpos = 0.2},--Schafter6
	[-746882698] =  {ypos = -0.9 , zpos = -0.1},--Schwarzer
	[-1757836725] =  {ypos = -1.0 , zpos = -0.1},--Seven70
	[1886268224] =  {ypos = -1.0 , zpos = -0.1},--Specter
	[1074745671] =  {ypos = -1.0 , zpos = -0.1},--Specter2
	[970598228] =  {ypos = -0.9 , zpos = 0.1},--Sultan
	[384071873] =  {ypos = -1.1 , zpos = 0.3},--Surano
	[1887331236] =  {ypos = -0.7 , zpos = 0.0},--Tropos
	[1102544804] =  {ypos = -1.0 , zpos = 0.2},--Verlierer2
	---------------------
	----SPORT CLASSIC----
	---------------------
	[159274291] =  {ypos = -0.9 , zpos = 0.0},--Ardent
	[117401876] =  {ypos = -1.3 , zpos = 0.0},--BType
	[-831834716] =  {ypos = -1.3 , zpos = -0.1},--BType2
	[-602287871] =  {ypos = -1.3 , zpos = 0.0},--BType3
	[941800958] =  {ypos = -1.0 , zpos = -0.1},--Casco
	[223240013] =  {ypos = -0.9 , zpos = 0.3},--Cheetah2
	[1011753235] =  {ypos = -0.9 , zpos = -0.1},--Coquette2
	[784565758] =  {ypos = -0.9 , zpos = 0.1},--Coquette3
	[1051415893] =  {ypos = -0.9 , zpos = 0.2},--JB700
	[-1660945322] =  {ypos = -0.8 , zpos = 0.0},--Mamba
	[-2124201592] =  {ypos = -1.2 , zpos = 0.2},--Manana
	[-433375717] =  {ypos = -0.9 , zpos = -0.1},--Monroe
	[1830407356] =  {ypos = -1.2 , zpos = -0.1},--Peyote
	[1078682497] =  {ypos = -1.1 , zpos = 0.0},--Pigalle
	[1545842587] =  {ypos = -0.9 , zpos = 0.1},--Stinger
	[-2098947590] =  {ypos = -0.9 , zpos = 0.1},--StingerGT
	[1504306544] =  {ypos = -0.9 , zpos = 0.2},--Torero
	[464687292] =  {ypos = -1.1 , zpos = 0.3},--Tornado
	[1531094468] =  {ypos = -1.2 , zpos = 0.3},--Tornado2
	[1762279763] =  {ypos = -1.2 , zpos = 0.3},--Tornado3
	[-2033222435] =  {ypos = -1.2 , zpos = 0.3},--Tornado4
	[-1797613329] =  {ypos = -1.2 , zpos = 0.3},--Tornado5
	[-1558399629] =  {ypos = -1.5 , zpos = 0.3},--Tornado6
	[758895617] =  {ypos = -1.2 , zpos = 0.1},--ZType
	-------------
	----SUPER----
	-------------
	[-1216765807] = {ypos = -1.1 , zpos = 0.3},--adder
	[-1696146015] =  {ypos = -0.9 , zpos = 0.1},--Bullet
	[-1311154784] =  {ypos = -1.0 , zpos = -0.1},--Cheetah
	[-1291952903] =  {ypos = -1.0 , zpos = 0.1},--EntityXF
	[1426219628] =  {ypos = -1.0 , zpos = 0.1},--FMJ
	[1234311532] =  {ypos = -0.8 , zpos = 0.1},--GP1
	[418536135] =  {ypos = -1.0 , zpos = 0.1},--Infernus
	[-1232836011] =  {ypos = -1.2 , zpos = 0.0},--Le7b
	[1034187331] =  {ypos = -1.1 , zpos = 0.2},--Nero
	[1093792632] =  {ypos = -1.1 , zpos = 0.2},--Nero2
	[1987142870] =  {ypos = -1.1 , zpos = 0.2},--Osiris
	[-1758137366] =  {ypos = -1.1 , zpos = -0.1},--Penetrator
	[-1829802492] =  {ypos = -1.0 , zpos = -0.1},--Pfister811
	[2123327359] =  {ypos = -1.2 , zpos = -0.1},--Prototipo
	[234062309] =  {ypos = -1.1 , zpos = 0.2},--Reaper
	[819197656] =  {ypos = -1.0 , zpos = 0.0},--Sheava
	[-295689028] =  {ypos = -1.0 , zpos = 0.0},--SultanRS
	[1123216662] =  {ypos = -1.2 , zpos = 0.1},--Superd
	[1663218586] =  {ypos = -1.0 , zpos = 0.3},--T20
	[272929391] =  {ypos = -0.9 , zpos = -0.1},--Tempesta
	[-982130927] =  {ypos = -1.2 , zpos = 0.3},--Turismo2
	[408192225] =  {ypos = -1.2 , zpos = -0.2},--Turismor
	[2067820283] =  {ypos = -1.1 , zpos = -0.1},--Tyrus
	[338562499] =  {ypos = -0.9 , zpos = 0.2},--Vacca
	[1939284556] =  {ypos = -1.1 , zpos = 0.2},--Vagner
	[-1622444098] =  {ypos = -0.9 , zpos = 0.2},--Voltic
	[989294410] =  {ypos = -0.9 , zpos = 0.2},--Voltic2
	[-1403128555] =  {ypos = -1.0 , zpos = 0.3},--Zentorno
	[-2048333973] =  {ypos = -1.0 , zpos = -0.1},--Italigtb
	[-482719877] =  {ypos = -1.0 , zpos = -0.1},--Italigtb2
	[917809321] =  {ypos = -1.0 , zpos = 0.1},--XA21
	---------------
	----UTILITY----
	---------------
	[1560980623] =  {ypos = -1.2 , zpos = 0.1},--Airtug
	[1147287684] =  {ypos = -1.2 , zpos = 0.1},--Caddy
	[-537896628] =  {ypos = -1.2 , zpos = 0.1},--Caddy2
	[-769147461] =  {ypos = -1.2 , zpos = 0.1},--Caddy3
	[1491375716] =  {ypos = -1.2 , zpos = 0.1},--Forklift
	[1783355638] =  {ypos = -1.2 , zpos = 0.1},--Mower
	[1641462412] =  {ypos = -0.6 , zpos = 0.2},--Tractor
}

Config.Trucktrailer = {
	VoitureAvantBas = {
		[-1216765807] = {xpos = -0.6, ypos = 13.0 , zpos = 1.0},--adder
	},	
	VoitureMilieuBas = {
		[-1216765807] = {xpos = -0.6, ypos = 7.5 , zpos = 1.0},--adder
	},	
	VoitureArriereBas = {
		[-1216765807] = {xpos = -0.6, ypos = 2.5 , zpos = 1.0},--adder
	},	
	VoitureAvantHaut = {
		[-1216765807] = {xpos = -0.6, ypos = 13.0 , zpos = 3.0},--adder
	},	
	VoitureMilieuHaut = {
		[-1216765807] = {xpos = -0.6, ypos = 7.5 , zpos = 3.0},--adder
	},	
	VoitureArriereHaut = {
		[-1216765807] = {xpos = -0.6, ypos = 2.5 , zpos = 3.0},--adder
	},
}

Config.PjTrailer = {

	VoitureAvant = {
	----------------
	----COMPACTS----
	----------------
	[-344943009] =  {xpos = -0.95, ypos = 10.5 , zpos = 1.3},--blista
	[1039032026] =  {xpos = -0.95, ypos = 10.95 , zpos = 1.0},--blista2
	[-591651781] =  {xpos = -0.95, ypos = 10.95 , zpos = 1.0},--blista3
	[1549126457] =  {xpos = -0.95, ypos = 10.70 , zpos = 0.7},--brioso
	[-1130810103] =  {xpos = -0.95, ypos = 10.90 , zpos = 1.0},--Dilettante
	[1682114128] =  {xpos = -0.95, ypos = 10.90 , zpos = 1.0},--Dilettante2
	[-1177863319] =  {xpos = -0.95, ypos = 10.80 , zpos = 1.2},--Issi2
	[-431692672] =  {xpos = -0.95, ypos = 10.50 , zpos = 0.8},--Panto
	[-1450650718] =  {xpos = -0.95, ypos = 10.90 , zpos = 1.0},--Prairie
	[841808271] =  {xpos = -0.95, ypos = 10.90 , zpos = 1.2},--Rhapsody
	--------------
	----COUPES----
	--------------
	[330661258] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--CogCabrio
	[-5153954] =  {xpos = -0.95, ypos = 10.75 , zpos = 1.1},--Exemplar
	[-591610296] =  {xpos = -0.95, ypos = 10.75 , zpos = 1.1},--F620
	[-391594584] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.2},--Felon
	[-89291282] =  {xpos = -0.95, ypos = 10.75 , zpos = 1.2},--Felon2
	[-624529134] =  {xpos = -0.95, ypos = 10.75 , zpos = 1.2},--Jackal
	[1348744438] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.3},--Oracle
	[-511601230] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Oracle2
	[1349725314] =  {xpos = -0.95, ypos = 10.85 , zpos = 0.9},--Sentinel
	[873639469] =  {xpos = -0.95, ypos = 10.85 , zpos = 0.9},--Sentinel2
	[1581459400] =  {xpos = -0.95, ypos = 10.45 , zpos = 0.9},--Windsor
	[-1930048799] =  {xpos = -0.95, ypos = 10.45 , zpos = 0.9},--Windsor2
	[-1122289213] =  {xpos = -0.95, ypos = 10.75 , zpos = 0.9},--Zion
	[-1193103848] =  {xpos = -0.95, ypos = 10.75 , zpos = 0.9},--Zion2
	--------------
	----MUSCLE----
	--------------
	[-1205801634] =  {xpos = -0.95, ypos = 10.85 , zpos = 1.0},--Blade
	[-682211828] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.9},--Buccaneer
	[-1013450936] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.7},--Buccaneer2
	[349605904] =  {xpos = -0.95, ypos = 10.30 , zpos = 1.0},--Chino
	[-1361687965] =  {xpos = -0.95, ypos = 10.30 , zpos = 0.9},--Chino2
	[80636076] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.8},--Dominator
	[-915704871] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.8},--Dominator2
	[-986944621] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.9},--Dominator3
	[723973206] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Dukes
	[-326143852] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Dukes2
	[-2119578145] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Faction
	[-1790546981] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.9},--Faction2
	[-2039755226] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Faction3
	[-1800170043] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Gauntlet
	[349315417] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Gauntlet2
	[37348240] =  {xpos = -0.95, ypos = 11.25 , zpos = 0.8},--Hotknife
	[525509695] =  {xpos = -0.95, ypos = 10.75 , zpos = 1.1},--Moonbeam
	[1896491931] =  {xpos = -0.95, ypos = 10.75 , zpos = 1.0},--Moonbeam2
	[-1943285540] =  {xpos = -0.95, ypos = 10.75 , zpos = 0.9},--Nightshade
	[-2095439403] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.9},--Phoenix
	[1507916787] =  {xpos = -0.95, ypos = 10.75 , zpos = 1.2},--Picador
	[-589178377] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.7},--RatLoader2
	[-227741703] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.2},--Ruiner
	[941494461] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.2},--Ruiner2
	[-1685021548] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.0},--SabreGT
	[223258115] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.9},--SabreGT2
	[729783779] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.1},--SlamVan
	[833469436] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.1},--SlamVan2
	[1119641113] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.0},--SlamVan3
	[1923400478] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Stalion
	[-401643538] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Stalion2
	[972671128] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.0},--Tampa
	[-1071380347] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.9},--Tampa2
	[-1210451983] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.0},--Tampa3
	[-825837129] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.2},--Vigero
	[-498054846] =  {xpos = -0.95, ypos = 10.15 , zpos = 1.0},--Virgo
	[-899509638] =  {xpos = -0.95, ypos = 10.15 , zpos = 1.0},--Virgo2
	[16646064] =  {xpos = -0.95, ypos = 10.15 , zpos = 1.0},--Virgo3
	[2006667053] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Voodoo
	[523724515] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Voodoo2
	----------------
	----OFF-ROAD----
	----------------
	[1126868326] =  {xpos = -0.95, ypos = 11.05 , zpos = 1.1},--BfInjection
	[-349601129] =  {xpos = -0.95, ypos = 11.30 , zpos = 1.0},--Bifta
	[-2128233223] =  {xpos = -0.95, ypos = 11.30 , zpos = 1.0},--Blazer
	[-48031959] =  {xpos = -0.95, ypos = 11.30 , zpos = 1.0},--Blazer2
	[-1269889662] =  {xpos = -0.95, ypos = 11.30 , zpos = 1.0},--Blazer3
	[-1590337689] =  {xpos = -0.95, ypos = 11.30 , zpos = 0.8},--Blazer5
	[-1479664699] =  {xpos = -0.95, ypos = 10.70 , zpos = 1.38},--Brawler
	[-1661854193] =  {xpos = -0.95, ypos = 10.95 , zpos = 1.0},--Dune
	[534258863] =  {xpos = -0.95, ypos = 10.95 , zpos = 1.0},--Dune2
	[92612664] =  {xpos = -0.95, ypos = 10.95 , zpos = 1.0},--Kalahari
	[914654722] =  {xpos = -0.95, ypos = 10.85 , zpos = 1.0},--Mesa
	[-748008636] =  {xpos = -0.95, ypos = 10.85 , zpos = 0.9},--Mesa2
	------------
	----SUVS----
	------------
	[850565707] =  {xpos = -0.95, ypos = 10.85 , zpos = 1.4},--BJXL
	[-808831384] =  {xpos = -0.95, ypos = 10.75 , zpos = 1.5},--Baller
	[142944341] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.45},--Baller2
	[1878062887] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.45},--Baller3
	[634118882] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.45},--Baller4
	[470404958] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.45},--Baller5
	[666166960] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.45},--Baller6
	[2006918058] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.35},--Cavalcade
	[-789894171] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.35},--Cavalcade2
	[1177543287] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.05},--Dubsta
	[-394074634] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.05},--Dubsta2
	[-1137532101] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.15},--FQ2
	[-1543762099] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.4},--Gresley
	[884422927] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.2},--Habanero
	[486987393] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.85},--Huntley
	[1269098716] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Landstalker
	[-808457413] =  {xpos = -0.95, ypos = 10.6 , zpos = 1.25},--Patriot
	[-1651067813] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.1},--Radi
	[2136773105] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.4},--Rocoto
	[1221512915] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.0},--Seminole
	[1337041428] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.0},--Serrano
	[1203490606] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.45},--XLS
	[-432008408] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.45},--XLS2
	--------------
	----SEDANS----
	--------------
	[-1809822327] =  {xpos = -0.95, ypos = 10.45 , zpos = 1.1},--Asea
	[-1807623979] =  {xpos = -0.95, ypos = 10.45 , zpos = 1.1},--Asea2
	[-1903012613] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.0},--Asterope
	[906642318] =  {xpos = -0.95, ypos = 10.45 , zpos = 1.1},--Cog55
	[704435172] =  {xpos = -0.95, ypos = 10.45 , zpos = 1.05},--Cog552
	[-2030171296] =  {xpos = -0.95, ypos = 10.15 , zpos = 1.1},--Cognoscenti
	[-604842630] =  {xpos = -0.95, ypos = 10.15 , zpos = 1.1},--Cognoscenti2
	[-685276541] =  {xpos = -0.95, ypos = 10.45 , zpos = 1.0},--Emperor
	[-1883002148] =  {xpos = -0.95, ypos = 10.45 , zpos = 1.0},--Emperor2
	[-1241712818] =  {xpos = -0.95, ypos = 10.45 , zpos = 1.0},--Emperor3
	[1909141499] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.2},--Fugitive
	[75131841] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.2},--Glendale
	[-1289722222] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.2},--Ingot
	[886934177] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.1},--Intruder
	[-1883869285] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.0},--Premier
	[-1150599089] =  {xpos = -0.95, ypos = 10.45 , zpos = 1.05},--Primo
	[-2040426790] =  {xpos = -0.95, ypos = 10.45 , zpos = 1.05},--Primo2
	[-14495224] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.2},--Regina
	[-1477580979] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.15},--Stanier
	[1723137093] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.9},--Stratum
	[-1894894188] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.2},--Surge
	[-1008861746] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.15},--Tailgater
	[1373123368] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.75},--Warrener
	[1777363799] =  {xpos = -0.95, ypos = 10.45 , zpos = 1.0},--Washington
	---------------
	----SERVICE----
	---------------
	[-956048545] =  {xpos = -0.95, ypos = 10.45 , zpos = 1.15},--Taxi --Might not be the correct placement for this one as i have a custom taxi crown vic version.
	--------------
	----SPORTS----
	--------------
	[767087018] =  {xpos = -0.95, ypos = 10.45 , zpos = 1.2},--Alpha
	[-1041692462] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.1},--Banshee
	[633712403] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.1},--Banshee2
	[1274868363] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--BestiaGTS
	[-304802106] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Buffalo
	[736902334] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Buffalo2
	[237764926] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Buffalo3
	[2072687711] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Carbonizzare
	[-1045541610] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Comet2
	[-2022483795] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Comet3
	[108773431] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Coquette
	[196747873] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.85},--Elegy
	[-566387422] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.85},--Elegy2
	[-1995326987] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.1},--Feltzer2
	[-1566741232] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.7},--Feltzer3
	[-1089039904] =  {xpos = -0.95, ypos = 10.45 , zpos = 0.95},--Furoregt
	[499169875] =  {xpos = -0.95, ypos = 10.45 , zpos = 0.8},--Fusilade
	[2016857647] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.0},--Futo
	[-1405937764] =  {xpos = -0.95, ypos = 10.65 , zpos = 1.0},--Infernus2
	[-1297672541] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.75},--Jester
	[-1106353882] =  {xpos = -0.95, ypos = 10.65 , zpos = 0.75},--Jester2
	[544021352] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Khamelion
	[-1372848492] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.2},--Kuruma
	[410882957] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.2},--Kuruma2
	[482197771] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.15},--Lynx
	[-142942670] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.85},--Massacro
	[-631760477] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.85},--Massacro2
	[1032823388] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Ninef
	[-1461482751] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Ninef2
	[-777172681] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.9},--Omnis
	[-377465520] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.9},--Penumbra
	[-1934452204] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--RapidGT
	[1737773231] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--RapidGT2
	[-674927303] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.7},--Raptor
	[719660200] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Ruston
	[-1255452397] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Schafter2
	[-1485523546] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Schafter3
	[1489967196] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Schafter4
	[-888242983] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Schafter5
	[1922255844] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Schafter6
	[-746882698] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Schwarzer
	[-1757836725] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Seven70
	[1886268224] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.75},--Specter
	[1074745671] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.75},--Specter2
	[970598228] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.9},--Sultan
	[384071873] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.15},--Surano
	[1887331236] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.9},--Tropos
	[1102544804] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Verlierer2
	---------------------
	----SPORT CLASSIC----
	---------------------
	[159274291] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.85},--Ardent
	[117401876] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.95},--BType
	[-831834716] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--BType2
	[-602287871] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.95},--BType3
	[941800958] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.7},--Casco
	[223240013] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Cheetah2
	[1011753235] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Coquette2
	[784565758] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.9},--Coquette3
	[1051415893] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--JB700
	[-1660945322] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Mamba
	[-2124201592] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Manana
	[-433375717] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Monroe
	[1830407356] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Peyote
	[1078682497] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.9},--Pigalle
	[1545842587] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.9},--Stinger
	[-2098947590] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.9},--StingerGT
	[1504306544] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Torero
	[464687292] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.2},--Tornado
	[1531094468] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.2},--Tornado2
	[1762279763] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.2},--Tornado3
	[-2033222435] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.2},--Tornado4
	[-1797613329] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.2},--Tornado5
	[-1558399629] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.2},--Tornado6
	[758895617] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.9},--ZType
	-------------
	----SUPER----
	-------------
	[-1216765807] = {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--adder
	[-1696146015] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.9},--Bullet
	[-1311154784] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.85},--Cheetah
	[-1291952903] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--EntityXF
	[1426219628] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.9},--FMJ
	[1234311532] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.85},--GP1
	[418536135] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Infernus
	[-1232836011] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.85},--Le7b
	[1034187331] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Nero
	[1093792632] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Nero2
	[1987142870] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Osiris
	[-1758137366] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Penetrator
	[-1829802492] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Pfister811
	[2123327359] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Prototipo
	[234062309] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Reaper
	[819197656] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.9},--Sheava
	[-295689028] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.9},--SultanRS
	[1123216662] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.05},--Superd
	[1663218586] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--T20
	[272929391] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Tempesta
	[-982130927] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Turismo2
	[408192225] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.7},--Turismor
	[2067820283] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Tyrus
	[338562499] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Vacca
	[1939284556] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Vagner
	[-1622444098] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--Voltic
	[989294410] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.05},--Voltic2
	[-1403128555] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.1},--Zentorno
	[-2048333973] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Italigtb
	[-482719877] =  {xpos = -0.95, ypos = 10.55 , zpos = 0.8},--Italigtb2
	[917809321] =  {xpos = -0.95, ypos = 10.55 , zpos = 1.0},--XA21
	---------------
	----CUSTOMS----
	---------------
	[-1513691047] = {xpos = -0.95, ypos = 10.5 , zpos = 1.2},--16Charger
	},
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
	VoitureMilieu = {
	----------------
	----COMPACTS----
	----------------
	[-344943009] =  {xpos = -0.95, ypos = 6.85 , zpos = 1.3},--blista
	[1039032026] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--blista2
	[-591651781] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--blista3
	[1549126457] =  {xpos = -0.95, ypos = 6.70 , zpos = 0.7},--brioso
	[-1130810103] =  {xpos = -0.95, ypos = 6.90 , zpos = 1.0},--Dilettante
	[1682114128] =  {xpos = -0.95, ypos = 6.90 , zpos = 1.0},--Dilettante2
	[-1177863319] =  {xpos = -0.95, ypos = 6.80 , zpos = 1.2},--Issi2
	[-431692672] =  {xpos = -0.95, ypos = 6.50 , zpos = 0.8},--Panto
	[-1450650718] =  {xpos = -0.95, ypos = 6.90 , zpos = 1.0},--Prairie
	[841808271] =  {xpos = -0.95, ypos = 6.90 , zpos = 1.2},--Rhapsody
	--------------
	----COUPES----
	--------------
	[330661258] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--CogCabrio
	[-5153954] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Exemplar
	[-591610296] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--F620
	[-391594584] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Felon
	[-89291282] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Felon2
	[-624529134] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Jackal
	[1348744438] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.3},--Oracle
	[-511601230] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Oracle2
	[1349725314] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Sentinel
	[873639469] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Sentinel2
	[1581459400] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Windsor
	[-1930048799] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Windsor2
	[-1122289213] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Zion
	[-1193103848] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Zion2
	--------------
	----MUSCLE----
	--------------
	[-1205801634] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Blade
	[-682211828] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Buccaneer
	[-1013450936] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.7},--Buccaneer2
	[349605904] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Chino
	[-1361687965] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Chino2
	[80636076] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Dominator
	[-915704871] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Dominator2
	[-986944621] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Dominator3
	[723973206] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Dukes
	[-326143852] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Dukes2
	[-2119578145] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Faction
	[-1790546981] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Faction2
	[-2039755226] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Faction3
	[-1800170043] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Gauntlet
	[349315417] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Gauntlet2
	[37348240] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Hotknife
	[525509695] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Moonbeam
	[1896491931] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Moonbeam2
	[-1943285540] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Nightshade
	[-2095439403] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Phoenix
	[1507916787] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Picador
	[-589178377] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.7},--RatLoader2
	[-227741703] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Ruiner
	[941494461] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Ruiner2
	[-1685021548] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--SabreGT
	[223258115] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--SabreGT2
	[729783779] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--SlamVan
	[833469436] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--SlamVan2
	[1119641113] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--SlamVan3
	[1923400478] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Stalion
	[-401643538] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Stalion2
	[972671128] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Tampa
	[-1071380347] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Tampa2
	[-1210451983] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Tampa3
	[-825837129] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Vigero
	[-498054846] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Virgo
	[-899509638] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Virgo2
	[16646064] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Virgo3
	[2006667053] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Voodoo
	[523724515] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Voodoo2
	----------------
	----OFF-ROAD----
	----------------
	[1126868326] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--BfInjection
	[-349601129] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Bifta
	[-2128233223] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Blazer
	[-48031959] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Blazer2
	[-1269889662] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Blazer3
	[-1590337689] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Blazer5
	[-1479664699] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.38},--Brawler
	[-1661854193] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Dune
	[534258863] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Dune2
	[92612664] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Kalahari
	[914654722] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Mesa
	[-748008636] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Mesa2
	------------
	----SUVS----
	------------
	[850565707] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.4},--BJXL
	[-808831384] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.5},--Baller
	[142944341] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.45},--Baller2
	[1878062887] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.45},--Baller3
	[634118882] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.45},--Baller4
	[470404958] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.45},--Baller5
	[666166960] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.45},--Baller6
	[2006918058] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.35},--Cavalcade
	[-789894171] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.35},--Cavalcade2
	[1177543287] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.05},--Dubsta
	[-394074634] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.05},--Dubsta2
	[-1137532101] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.15},--FQ2
	[-1543762099] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.4},--Gresley
	[884422927] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.3},--Habanero
	[486987393] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.85},--Huntley
	[1269098716] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Landstalker
	[-808457413] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.25},--Patriot
	[-1651067813] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Radi
	[2136773105] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.4},--Rocoto
	[1221512915] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Seminole
	[1337041428] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Serrano
	[1203490606] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.45},--XLS
	[-432008408] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.45},--XLS2
	--------------
	----SEDANS----
	--------------
	[-1809822327] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Asea
	[-1807623979] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Asea2
	[-1903012613] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Asterope
	[906642318] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Cog55
	[704435172] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.05},--Cog552
	[-2030171296] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Cognoscenti
	[-604842630] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Cognoscenti2
	[-685276541] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Emperor
	[-1883002148] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Emperor2
	[-1241712818] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Emperor3
	[1909141499] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Fugitive
	[75131841] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Glendale
	[-1289722222] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Ingot
	[886934177] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Intruder
	[-1883869285] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Premier
	[-1150599089] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.05},--Primo
	[-2040426790] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.05},--Primo2
	[-14495224] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Regina
	[-1477580979] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.15},--Stanier
	[1723137093] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Stratum
	[-1894894188] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Surge
	[-1008861746] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.15},--Tailgater
	[1373123368] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.75},--Warrener
	[1777363799] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Washington
	---------------
	----SERVICE----
	---------------
	[-956048545] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.15},--Taxi --Might not be the correct placement for this one as i have a custom taxi crown vic version.
	--------------
	----SPORTS----
	--------------
	[767087018] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Alpha
	[-1041692462] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Banshee
	[633712403] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Banshee2
	[1274868363] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--BestiaGTS
	[-304802106] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Buffalo
	[736902334] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Buffalo2
	[237764926] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Buffalo3
	[2072687711] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Carbonizzare
	[-1045541610] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Comet2
	[-2022483795] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Comet3
	[108773431] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Coquette
	[196747873] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.85},--Elegy
	[-566387422] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.85},--Elegy2
	[-1995326987] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Feltzer2
	[-1566741232] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.7},--Feltzer3
	[-1089039904] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.95},--Furoregt
	[499169875] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Fusilade
	[2016857647] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Futo
	[-1405937764] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Infernus2
	[-1297672541] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.75},--Jester
	[-1106353882] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.75},--Jester2
	[544021352] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Khamelion
	[-1372848492] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Kuruma
	[410882957] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Kuruma2
	[482197771] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.15},--Lynx
	[-142942670] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.85},--Massacro
	[-631760477] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.85},--Massacro2
	[1032823388] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Ninef
	[-1461482751] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Ninef2
	[-777172681] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Omnis
	[-377465520] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Penumbra
	[-1934452204] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--RapidGT
	[1737773231] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--RapidGT2
	[-674927303] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.7},--Raptor
	[719660200] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Ruston
	[-1255452397] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Schafter2
	[-1485523546] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Schafter3
	[1489967196] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Schafter4
	[-888242983] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Schafter5
	[1922255844] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Schafter6
	[-746882698] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Schwarzer
	[-1757836725] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Seven70
	[1886268224] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.75},--Specter
	[1074745671] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.75},--Specter2
	[970598228] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Sultan
	[384071873] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.15},--Surano
	[1887331236] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Tropos
	[1102544804] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Verlierer2
	---------------------
	----SPORT CLASSIC----
	---------------------
	[159274291] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.85},--Ardent
	[117401876] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.95},--BType
	[-831834716] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--BType2
	[-602287871] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.95},--BType3
	[941800958] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.7},--Casco
	[223240013] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Cheetah2
	[1011753235] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Coquette2
	[784565758] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Coquette3
	[1051415893] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--JB700
	[-1660945322] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Mamba
	[-2124201592] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Manana
	[-433375717] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Monroe
	[1830407356] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Peyote
	[1078682497] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Pigalle
	[1545842587] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Stinger
	[-2098947590] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--StingerGT
	[1504306544] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Torero
	[464687292] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Tornado
	[1531094468] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Tornado2
	[1762279763] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Tornado3
	[-2033222435] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Tornado4
	[-1797613329] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Tornado5
	[-1558399629] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.2},--Tornado6
	[758895617] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--ZType
	-------------
	----SUPER----
	-------------
	[-1216765807] = {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--adder
	[-1696146015] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Bullet
	[-1311154784] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.85},--Cheetah
	[-1291952903] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--EntityXF
	[1426219628] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--FMJ
	[1234311532] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.85},--GP1
	[418536135] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Infernus
	[-1232836011] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.85},--Le7b
	[1034187331] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Nero
	[1093792632] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Nero2
	[1987142870] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Osiris
	[-1758137366] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Penetrator
	[-1829802492] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Pfister811
	[2123327359] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Prototipo
	[234062309] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Reaper
	[819197656] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--Sheava
	[-295689028] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.9},--SultanRS
	[1123216662] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.05},--Superd
	[1663218586] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--T20
	[272929391] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Tempesta
	[-982130927] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Turismo2
	[408192225] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.7},--Turismor
	[2067820283] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Tyrus
	[338562499] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Vacca
	[1939284556] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Vagner
	[-1622444098] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--Voltic
	[989294410] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.05},--Voltic2
	[-1403128555] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.1},--Zentorno
	[-2048333973] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Italigtb
	[-482719877] =  {xpos = -0.95, ypos = 6.95 , zpos = 0.8},--Italigtb2
	[917809321] =  {xpos = -0.95, ypos = 6.95 , zpos = 1.0},--XA21
	---------------
	----CUSTOMS----
	---------------
	[-1513691047] = {xpos = -0.95, ypos = 7.5 , zpos = 1.2},--16Charger
	},
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
	VoitureArriere = {
	----------------
	----COMPACTS----
	----------------
	[-344943009] =  {xpos = -0.95, ypos = 3.5 , zpos = 1.3},--blista
	[1039032026] =  {xpos = -0.95, ypos = 3.5 , zpos = 1.0},--blista2
	[-591651781] =  {xpos = -0.95, ypos = 3.5 , zpos = 1.0},--blista3
	[1549126457] =  {xpos = -0.95, ypos = 3.5 , zpos = 0.7},--brioso
	[-1130810103] =  {xpos = -0.95, ypos = 3.90 , zpos = 1.0},--Dilettante
	[1682114128] =  {xpos = -0.95, ypos = 3.90 , zpos = 1.0},--Dilettante2
	[-1177863319] =  {xpos = -0.95, ypos = 3.80 , zpos = 1.2},--Issi2
	[-431692672] =  {xpos = -0.95, ypos = 3.50 , zpos = 0.8},--Panto
	[-1450650718] =  {xpos = -0.95, ypos = 3.90 , zpos = 1.0},--Prairie
	[841808271] =  {xpos = -0.95, ypos = 3.90 , zpos = 1.2},--Rhapsody
	--------------
	----COUPES----
	--------------
	[330661258] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.0},--CogCabrio
	[-5153954] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.1},--Exemplar
	[-591610296] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.1},--F620
	[-391594584] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.2},--Felon
	[-89291282] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.2},--Felon2
	[-624529134] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.2},--Jackal
	[1348744438] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.3},--Oracle
	[-511601230] =  {xpos = -0.95, ypos = 4.30 , zpos = 0.8},--Oracle2
	[1349725314] =  {xpos = -0.95, ypos = 4.30 , zpos = 0.9},--Sentinel
	[873639469] =  {xpos = -0.95, ypos = 4.30 , zpos = 0.9},--Sentinel2
	[1581459400] =  {xpos = -0.95, ypos = 4.30 , zpos = 0.9},--Windsor
	[-1930048799] =  {xpos = -0.95, ypos = 4.70 , zpos = 0.9},--Windsor2
	[-1122289213] =  {xpos = -0.95, ypos = 4.30 , zpos = 0.9},--Zion
	[-1193103848] =  {xpos = -0.95, ypos = 4.30 , zpos = 0.9},--Zion2
	--------------
	----MUSCLE----
	--------------
	[-1205801634] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.0},--Blade
	[-682211828] =  {xpos = -0.95, ypos = 4.50 , zpos = 0.9},--Buccaneer
	[-1013450936] =  {xpos = -0.95, ypos = 4.50 , zpos = 0.7},--Buccaneer2
	[349605904] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.0},--Chino
	[-1361687965] =  {xpos = -0.95, ypos = 4.50 , zpos = 0.9},--Chino2
	[80636076] =  {xpos = -0.95, ypos = 4.50 , zpos = 0.8},--Dominator
	[-915704871] =  {xpos = -0.95, ypos = 4.50 , zpos = 0.8},--Dominator2
	[-986944621] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.9},--Dominator3
	[723973206] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.1},--Dukes
	[-326143852] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.1},--Dukes2
	[-2119578145] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.0},--Faction
	[-1790546981] =  {xpos = -0.95, ypos = 4.50 , zpos = 0.9},--Faction2
	[-2039755226] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.0},--Faction3
	[-1800170043] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.1},--Gauntlet
	[349315417] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.1},--Gauntlet2
	[37348240] =  {xpos = -0.95, ypos = 3.75 , zpos = 0.8},--Hotknife
	[525509695] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Moonbeam
	[1896491931] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Moonbeam2
	[-1943285540] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.9},--Nightshade
	[-2095439403] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.9},--Phoenix
	[1507916787] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.2},--Picador
	[-589178377] =  {xpos = -0.95, ypos = 3.80 , zpos = 0.7},--RatLoader2
	[-227741703] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.2},--Ruiner
	[941494461] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.2},--Ruiner2
	[-1685021548] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--SabreGT
	[223258115] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.9},--SabreGT2
	[729783779] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--SlamVan
	[833469436] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--SlamVan2
	[1119641113] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--SlamVan3
	[1923400478] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Stalion
	[-401643538] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Stalion2
	[972671128] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Tampa
	[-1071380347] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.9},--Tampa2
	[-1210451983] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Tampa3
	[-825837129] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.2},--Vigero
	[-498054846] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Virgo
	[-899509638] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Virgo2
	[16646064] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Virgo3
	[2006667053] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.0},--Voodoo
	[523724515] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.0},--Voodoo2
	----------------
	----OFF-ROAD----
	----------------
	[1126868326] =  {xpos = -0.95, ypos = 3.85 , zpos = 1.1},--BfInjection
	[-349601129] =  {xpos = -0.95, ypos = 3.65 , zpos = 1.0},--Bifta
	[-2128233223] =  {xpos = -0.95, ypos = 3.05 , zpos = 1.0},--Blazer
	[-48031959] =  {xpos = -0.95, ypos = 3.05 , zpos = 1.0},--Blazer2
	[-1269889662] =  {xpos = -0.95, ypos = 3.05 , zpos = 1.0},--Blazer3
	[-1590337689] =  {xpos = -0.95, ypos = 3.05 , zpos = 0.8},--Blazer5
	[-1479664699] =  {xpos = -0.95, ypos = 3.85 , zpos = 1.38},--Brawler
	[-1661854193] =  {xpos = -0.95, ypos = 3.85 , zpos = 1.0},--Dune
	[534258863] =  {xpos = -0.95, ypos = 3.85 , zpos = 1.0},--Dune2
	[92612664] =  {xpos = -0.95, ypos = 3.85 , zpos = 1.0},--Kalahari
	[914654722] =  {xpos = -0.95, ypos = 3.85 , zpos = 1.0},--Mesa
	[-748008636] =  {xpos = -0.95, ypos = 3.85 , zpos = 0.9},--Mesa2
	------------
	----SUVS----
	------------
	[850565707] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.4},--BJXL
	[-808831384] =  {xpos = -0.95, ypos = 4.10 , zpos = 1.5},--Baller
	[142944341] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.45},--Baller2
	[1878062887] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.45},--Baller3
	[634118882] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.45},--Baller4
	[470404958] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.45},--Baller5
	[666166960] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.45},--Baller6
	[2006918058] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.35},--Cavalcade
	[-789894171] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.35},--Cavalcade2
	[1177543287] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.05},--Dubsta
	[-394074634] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.05},--Dubsta2
	[-1137532101] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.1},--FQ2
	[-1543762099] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.4},--Gresley
	[884422927] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.2},--Habanero
	[486987393] =  {xpos = -0.95, ypos = 4.30 , zpos = 0.85},--Huntley
	[1269098716] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.0},--Landstalker
	[-808457413] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.25},--Patriot
	[-1651067813] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.1},--Radi
	[2136773105] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.4},--Rocoto
	[1221512915] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.0},--Seminole
	[1337041428] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.0},--Serrano
	[1203490606] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.45},--XLS
	[-432008408] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.45},--XLS2
	--------------
	----SEDANS----
	--------------
	[-1809822327] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.1},--Asea
	[-1807623979] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.1},--Asea2
	[-1903012613] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.0},--Asterope
	[906642318] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.1},--Cog55
	[704435172] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.05},--Cog552
	[-2030171296] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.1},--Cognoscenti
	[-604842630] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.1},--Cognoscenti2
	[-685276541] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.0},--Emperor
	[-1883002148] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.0},--Emperor2
	[-1241712818] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.0},--Emperor3
	[1909141499] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.2},--Fugitive
	[75131841] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.2},--Glendale
	[-1289722222] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.2},--Ingot
	[886934177] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.1},--Intruder
	[-1883869285] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.0},--Premier
	[-1150599089] =  {xpos = -0.95, ypos = 4.15 , zpos = 1.05},--Primo
	[-2040426790] =  {xpos = -0.95, ypos = 4.15 , zpos = 1.05},--Primo2
	[-14495224] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.1},--Regina
	[-1477580979] =  {xpos = -0.95, ypos = 4.30 , zpos = 1.15},--Stanier
	[1723137093] =  {xpos = -0.95, ypos = 3.95 , zpos = 0.9},--Stratum
	[-1894894188] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.2},--Surge
	[-1008861746] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.15},--Tailgater
	[1373123368] =  {xpos = -0.95, ypos = 3.95 , zpos = 0.75},--Warrener
	[1777363799] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Washington
	---------------
	----SERVICE----
	---------------
	[-956048545] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.20},--Taxi --Might not be the correct placement for this one as i have a custom taxi crown vic version.
	--------------
	----SPORTS----
	--------------
	[767087018] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.2},--Alpha
	[-1041692462] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Banshee
	[633712403] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Banshee2
	[1274868363] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.8},--BestiaGTS
	[-304802106] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Buffalo
	[736902334] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Buffalo2
	[237764926] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Buffalo3
	[2072687711] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Carbonizzare
	[-1045541610] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Comet2
	[-2022483795] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.8},--Comet3
	[108773431] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.8},--Coquette
	[196747873] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.85},--Elegy
	[-566387422] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.85},--Elegy2
	[-1995326987] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Feltzer2
	[-1566741232] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.7},--Feltzer3
	[-1089039904] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.95},--Furoregt
	[499169875] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.8},--Fusilade
	[2016857647] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.0},--Futo
	[-1405937764] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.0},--Infernus2
	[-1297672541] =  {xpos = -0.95, ypos = 3.95 , zpos = 0.75},--Jester
	[-1106353882] =  {xpos = -0.95, ypos = 3.95 , zpos = 0.75},--Jester2
	[544021352] =  {xpos = -0.95, ypos = 3.95 , zpos = 0.8},--Khamelion
	[-1372848492] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.2},--Kuruma
	[410882957] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.2},--Kuruma2
	[482197771] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.15},--Lynx
	[-142942670] =  {xpos = -0.95, ypos = 3.95 , zpos = 0.85},--Massacro
	[-631760477] =  {xpos = -0.95, ypos = 3.95 , zpos = 0.85},--Massacro2
	[1032823388] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.1},--Ninef
	[-1461482751] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.1},--Ninef2
	[-777172681] =  {xpos = -0.95, ypos = 3.95 , zpos = 0.9},--Omnis
	[-377465520] =  {xpos = -0.95, ypos = 3.95 , zpos = 0.9},--Penumbra
	[-1934452204] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.1},--RapidGT
	[1737773231] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.1},--RapidGT2
	[-674927303] =  {xpos = -0.95, ypos = 3.95 , zpos = 0.7},--Raptor
	[719660200] =  {xpos = -0.95, ypos = 3.95 , zpos = 0.8},--Ruston
	[-1255452397] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Schafter2
	[-1485523546] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Schafter3
	[1489967196] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Schafter4
	[-888242983] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Schafter5
	[1922255844] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Schafter6
	[-746882698] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.8},--Schwarzer
	[-1757836725] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.8},--Seven70
	[1886268224] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.75},--Specter
	[1074745671] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.75},--Specter2
	[970598228] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.9},--Sultan
	[384071873] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.15},--Surano
	[1887331236] =  {xpos = -0.95, ypos = 3.85 , zpos = 0.85},--Tropos
	[1102544804] =  {xpos = -0.95, ypos = 3.95 , zpos = 1.0},--Verlierer2
	---------------------
	----SPORT CLASSIC----
	---------------------
	[159274291] =  {xpos = -0.95, ypos = 3.95 , zpos = 0.85},--Ardent
	[117401876] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.95},--BType
	[-831834716] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.8},--BType2
	[-602287871] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.95},--BType3
	[941800958] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.7},--Casco
	[223240013] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Cheetah2
	[1011753235] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.8},--Coquette2
	[784565758] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.9},--Coquette3
	[1051415893] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--JB700
	[-1660945322] =  {xpos = -0.95, ypos = 3.95 , zpos = 0.8},--Mamba
	[-2124201592] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Manana
	[-433375717] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.8},--Monroe
	[1830407356] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.8},--Peyote
	[1078682497] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.9},--Pigalle
	[1545842587] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.9},--Stinger
	[-2098947590] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.9},--StingerGT
	[1504306544] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Torero
	[464687292] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.2},--Tornado
	[1531094468] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.2},--Tornado2
	[1762279763] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.2},--Tornado3
	[-2033222435] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.2},--Tornado4
	[-1797613329] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.2},--Tornado5
	[-1558399629] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.2},--Tornado6
	[758895617] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.9},--ZType
	-------------
	----SUPER----
	-------------
	[-1216765807] = {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--adder
	[-1696146015] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.9},--Bullet
	[-1311154784] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.85},--Cheetah
	[-1291952903] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.8},--EntityXF
	[1426219628] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.9},--FMJ
	[1234311532] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.85},--GP1
	[418536135] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Infernus
	[-1232836011] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.85},--Le7b
	[1034187331] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Nero
	[1093792632] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Nero2
	[1987142870] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Osiris
	[-1758137366] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Penetrator
	[-1829802492] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.8},--Pfister811
	[2123327359] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.8},--Prototipo
	[234062309] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Reaper
	[819197656] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.9},--Sheava
	[-295689028] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.9},--SultanRS
	[1123216662] =  {xpos = -0.95, ypos = 4.50 , zpos = 1.05},--Superd
	[1663218586] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--T20
	[272929391] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.8},--Tempesta
	[-982130927] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.1},--Turismo2
	[408192225] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.7},--Turismor
	[2067820283] =  {xpos = -0.95, ypos = 4.20 , zpos = 0.8},--Tyrus
	[338562499] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Vacca
	[1939284556] =  {xpos = -0.95, ypos = 4.20 , zpos = 1.0},--Vagner
	[-1622444098] =  {xpos = -0.95, ypos = 3.90 , zpos = 1.0},--Voltic
	[989294410] =  {xpos = -0.95, ypos = 3.90 , zpos = 1.05},--Voltic2
	[-1403128555] =  {xpos = -0.95, ypos = 3.90 , zpos = 1.1},--Zentorno
	[-2048333973] =  {xpos = -0.95, ypos = 3.90 , zpos = 0.8},--Italigtb
	[-482719877] =  {xpos = -0.95, ypos = 3.90 , zpos = 0.8},--Italigtb2
	[917809321] =  {xpos = -0.95, ypos = 3.90 , zpos = 1.0},--XA21
	---------------
	----CUSTOMS----
	---------------
	[-1513691047] = {xpos = -0.95, ypos = 4.5 , zpos = 1.2},--16Charger
	},
-----------------------------------------------------------------------------	
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------


}
