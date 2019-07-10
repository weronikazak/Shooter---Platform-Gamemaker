gunsprite = layer_sprite_get_id("Assets_1", "gGun");

if (global.hasGun) && (global.kills > 0){
	endtext[0] = "I tego dnia nasz heros zabił " + string(global.kills) + "ludków.";
	endtext[1] = "W sumie kilka z nich też miało strzelby, więc..";
	endtext[2] = "Nie wiem, może ratował świat, czy coś.";
	endtext[3] = "W każdym razie potem spędził reszte życia w jednej celi z Ryszardem.";
	endtext[4] = "Właściciel parku zeznał, że w sumie nie jest zły, jedynie zawiedziony.";
	endtext[5] = "Koniec";
}
else {
	layer_sprite_destroy(gunsprite);
	endtext[0] = "Tego dnia nasz bohater miał wspaniałą przechadzke po parku i nawet nikogo nie zamordował";
	endtext[1] = "Ktożby pomyślał, że tak to się skończy?";
	endtext[2] = "Koniec";
}

spd = 0.5;
letters = 0;
currentline = 0;
length = string_length(endtext[currentline]);
text = "";