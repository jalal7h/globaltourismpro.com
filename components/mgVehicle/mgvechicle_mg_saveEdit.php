<?
function mgvehicle_mg_saveEdit(){
	
	dbs( "mg_Vehicle", ["name", "pax"], ["id"] );
}