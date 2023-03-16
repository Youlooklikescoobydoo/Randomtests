function onCreate()
	-- background 


	-- sprites that only load if Low Quality is turned off

	makeLuaSprite('legacybg', 'legacybg', -600, -100);
	setLuaSpriteScrollFactor('legacybg', 0, 0);
	setObjectOrder('legacybg', 1)
	scaleObject('legacybg', 2, 2)

	makeLuaSprite('oldpent', 'oldpent', 200, 0);
	setLuaSpriteScrollFactor('oldpent', 0.8, 0.8);
	setObjectOrder('oldpent', 2)
	scaleObject('oldpent', 0.75, 0.75)

	makeLuaSprite('hellRon_ground', 'hellRon_ground', -700, -250);
	setLuaSpriteScrollFactor('hellRon_ground', 1, 1);
	setObjectOrder('hellRon_ground', 3)

	makeLuaSprite('deadly', 'deadly', -680, -250);
	setLuaSpriteScrollFactor('deadly', 1, 1);
	scaleObject('deadly', 1, 0.8)
	setObjectCamera('deadly', 'camHud');
	setProperty('deadly.alpha', 0)

	addLuaSprite('legacybg', false);
	addLuaSprite('oldpent', false);
	addLuaSprite('hellRon_ground', false);
	addLuaSprite('deadly', true);


	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end