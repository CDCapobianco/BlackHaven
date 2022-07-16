// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function Enemy_Hit(){
var _damage = argument0

hp-=_damage
flash = true
if(hp > 0){
	//state = ENEMYSTATE.HIT
	hitNow = true
}
else
{
	//state = ENEMYSTATE.DEAD	
}
}