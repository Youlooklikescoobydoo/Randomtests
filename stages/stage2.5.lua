function onCreate()
	-- background 


	-- sprites that only load if Low Quality is turned off
	makeLuaSprite('pissedRon_sky', 'pissedRon_sky', -600, 0);
	setLuaSpriteScrollFactor('pissedRon_sky', 0.9, 0.9);
	setObjectOrder('pissedRon_sky', 1)
	scaleObject('pissedRon_sky', 2, 2)

	makeLuaSprite('pissedRon_clouds', 'pissedRon_clouds', -600, 0);
	setLuaSpriteScrollFactor('pissedRon_clouds', 0.9, 0.9);
	setObjectOrder('pissedRon_clouds', 2)

	makeLuaSprite('pissedRon_ground', 'pissedRon_ground', -600, -300);
	setLuaSpriteScrollFactor('pissedRon_ground', 1, 1);
	setObjectOrder('pissedRon_ground', 3)

	makeAnimatedLuaSprite('annoyed_rain', 'annoyed_rain', -600, -2000);
	addAnimationByPrefix('annoyed_rain', 'rain', 'rain', 24, true)
	objectPlayAnimation('annoyed_rain', 'rain', true)
	setLuaSpriteScrollFactor('annoyed_rain', 1, 1);
	scaleObject('annoyed_rain', 5, 5)
	setObjectOrder('annoyed_rain', 600)

	addLuaSprite('pissedRon_sky', false);
	addLuaSprite('pissedRon_clouds', false);
	addLuaSprite('pissedRon_ground', false);
	addLuaSprite('annoyed_rain', true);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end