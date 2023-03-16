function onCreate()
	-- background 


	-- sprites that only load if Low Quality is turned off
	makeLuaSprite('nothappy_sky', 'nothappy_sky', -600, 0);
	setLuaSpriteScrollFactor('nothappy_sky', 0.9, 0.9);
	setObjectOrder('nothappy_sky', 1)
	scaleObject('nothappy_sky', 2, 2)

	makeLuaSprite('nothappy_ground', 'nothappy_ground', -700, -200);
	setLuaSpriteScrollFactor('nothappy_ground', 1, 1);
	setObjectOrder('nothappy_ground', 2)

	addLuaSprite('nothappy_sky', false);
	addLuaSprite('nothappy_ground', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end