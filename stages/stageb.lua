function onCreate()
	-- background 


	-- sprites that only load if Low Quality is turned off

		makeLuaSprite('sky', 'bluebg', -200, -200);
		setLuaSpriteScrollFactor('sky', 0, 0);
		scaleObject('sky', 2, 2)
		setObjectOrder('sky', 0)

		makeLuaSprite('spikes', 'spikes', -150, -800);
		setLuaSpriteScrollFactor('spikes', 0.2, 0.2);
		scaleObject('spikes', 1, 1)
		setObjectOrder('spikes', 1)

		makeLuaSprite('hellRon_heaven', 'heavengram', 200, 0);
		setLuaSpriteScrollFactor('hellRon_heaven', 0.8, 0.8);
		setObjectOrder('hellRon_heaven', 2)
		scaleObject('hellRon_heaven', 0.75, 0.75)

		makeLuaSprite('diamond', 'diamond', 75, -300);
		setLuaSpriteScrollFactor('diamond', 0.8, 0.8);
		setObjectOrder('diamond', 3)
		scaleObject('diamond', 1.5, 1.5)

		makeLuaSprite('heavenRon_ground', 'heavenRon_ground', -700, -250);
		setLuaSpriteScrollFactor('heavenRon_ground', 1, 1);
		setObjectOrder('heavenRon_ground', 4)

		makeLuaSprite('heavenly', 'heavenly', -680, -250);
		setLuaSpriteScrollFactor('heavenly', 1, 1);
		setObjectOrder('heavenly', 5)
		scaleObject('heavenly', 1, 0.8)
		setObjectCamera('heavenly', 'camHud');
		setProperty('heavenly.alpha', 0.2)

		makeLuaSprite('snow', 'snow', -6000, -2500);
		setLuaSpriteScrollFactor('snow', 1, 1);
		scaleObject('snow', 5, 5)
		setObjectOrder('snow', 600)
		setProperty('snow.alpha', 0)

		makeLuaSprite('cloud', 'cloud', -800, -200);
		setLuaSpriteScrollFactor('cloud', 1, 1);
		setObjectOrder('cloud', 601)
		scaleObject('cloud', 3, 2)
		setObjectCamera('cloud', 'other');
		setProperty('cloud.alpha', 0)

		makeLuaSprite('dead', 'dead', -700, -250);
		setLuaSpriteScrollFactor('dead', 1, 1);
		scaleObject('dead', 5, 5)
		setObjectCamera('dead', 'camHUD');
		setObjectOrder('dead', 1)
		setProperty('dead.alpha', 0.5)

	addLuaSprite('heavenRon_ground', false);
	addLuaSprite('sky', false);
	addLuaSprite('spikes', false);
	addLuaSprite('hellRon_heaven', false);
	addLuaSprite('diamond', false);
	addLuaSprite('dead', false);
	addLuaSprite('snow', true);
	addLuaSprite('heavenly', false);
	addLuaSprite('cloud', true);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end