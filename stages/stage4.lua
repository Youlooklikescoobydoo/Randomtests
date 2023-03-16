function onCreate()
	-- background 


	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('bg', 'bg', -200, 0);
		setLuaSpriteScrollFactor('bg', 0.9, 0.9);
		scaleObject('bg', 1, 1)
		
	end

	addLuaSprite('bg', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end