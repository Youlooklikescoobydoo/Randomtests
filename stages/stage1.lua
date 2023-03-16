function onCreate()
	-- background 

	makeLuaSprite('stageback', 'stageback', -600, 0);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	setObjectOrder('stageback', 1)
	scaleObject('stageback', 2, 2)

	makeLuaSprite('stagecurtains', 'stagecurtains', -600, -300);
	setLuaSpriteScrollFactor('stagecurtains', 1, 1);
	setObjectOrder('stagecurtains', 2)

	-- sprites that only load if Low Quality is turned off
	if lowQuality then
		makeLuaSprite('kd', 'kd', -200, 0);
		setLuaSpriteScrollFactor('kd', 0.9, 0.9);
		scaleObject('kd', 2.5, 2.5)
		
	end

	addLuaSprite('kd', false);
	addLuaSprite('stageback', false);
	addLuaSprite('stagecurtains', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end