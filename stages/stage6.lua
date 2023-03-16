function onCreate()
	-- background 


	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('unknown', 'unknown', -200, 0);
		setLuaSpriteScrollFactor('unknown', 0.9, 0.9);
		scaleObject('unknown', 2.5, 2.5)
		
	end

	addLuaSprite('unknown', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end