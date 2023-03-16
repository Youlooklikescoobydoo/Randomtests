function onCreate()

		makeLuaSprite('hellRon_gradient', 'hellRon_gradient', -680, -250);
		setLuaSpriteScrollFactor('hellRon_gradient', 1, 1);
		setObjectOrder('hellRon_gradient', 1)
		scaleObject('hellRon_gradient', 1, 1)
		setProperty('hellRon_gradient.alpha', 1)
		setObjectCamera('hellRon_gradient', 'camHud');

		makeLuaSprite('deadly', 'deadly', -680, -250);
		setLuaSpriteScrollFactor('deadly', 1, 1);
		setObjectOrder('deadly', 2)
		scaleObject('deadly', 1, 0.8)
		setObjectCamera('deadly', 'camHud');
		setProperty('deadly.alpha', 0.2)

		makeLuaSprite('particle', 'particle', -2500, 200);
		setLuaSpriteScrollFactor('particle', 1, 1);
		scaleObject('particle', 15, 15)
		setObjectOrder('particle', 599)
		setProperty('particle.alpha', 0)

		makeLuaSprite('dead', 'dead', -680, -250);
		setLuaSpriteScrollFactor('dead', 1, 1);
		setObjectOrder('dead', 600)
		scaleObject('dead', 5, 5)
		setObjectCamera('dead', 'other');
		setProperty('dead.alpha', 0)

	addLuaSprite('deadly', true);
	addLuaSprite('particle', true);
	addLuaSprite('dead', true);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end