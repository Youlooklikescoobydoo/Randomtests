function onCreate()
	-- background 


	-- sprites that only load if Low Quality is turned off

		makeLuaSprite('hellRon_sky', 'hellRon_sky', -600, 0);
		setLuaSpriteScrollFactor('hellRon_sky', 0, 0);
		setObjectOrder('hellRon_sky', 1)

		makeAnimatedLuaSprite('escape_fire', 'escape_fire', -600, -200);
		luaSpriteAddAnimationByPrefix('escape_fire', 'escape_fire', 'fire instance', 24, true);
		setLuaSpriteScrollFactor('escape_fire', 0, 0);
		setObjectOrder('escape_fire', 2)
		scaleObject('escape_fire', 5, 5)
		setProperty('escape_fire.alpha', 0)

		makeLuaSprite('skybeam', 'skybeam', 130, -2000);
		setLuaSpriteScrollFactor('skybeam', 0.8, 0.8);
		setObjectOrder('skybeam', 3)
		scaleObject('skybeam', 1, 10)
		setProperty('skybeam.alpha', 0)

		makeLuaSprite('hellRon_satan', 'hellRon_satan', 200, 0);
		setLuaSpriteScrollFactor('hellRon_satan', 0.8, 0.8);
		setObjectOrder('hellRon_satan', 4)
		scaleObject('hellRon_satan', 0.75, 0.75)

		makeLuaSprite('hellRon_ground', 'hellRon_ground', -700, -250);
		setLuaSpriteScrollFactor('hellRon_ground', 1, 1);
		setObjectOrder('hellRon_ground', 5)

		makeLuaSprite('hellRon_gradient', 'hellRon_gradient', -680, -250);
		setLuaSpriteScrollFactor('hellRon_gradient', 1, 1);
		setObjectOrder('hellRon_gradient', 6)
		scaleObject('hellRon_gradient', 1, 1)
		setProperty('hellRon_gradient.alpha', 1)
		setObjectCamera('hellRon_gradient', 'camHud');

		makeLuaSprite('deadly', 'deadly', -680, -250);
		setLuaSpriteScrollFactor('deadly', 1, 1);
		setObjectOrder('deadly', 7)
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

	addLuaSprite('hellRon_ground', false);
	addLuaSprite('hellRon_sky', false);
	addLuaSprite('escape_fire', false);
	addLuaSprite('skybeam', false);
	addLuaSprite('hellRon_satan', false);
	addLuaSprite('hellRon_gradient', false);
	addLuaSprite('deadly', true);
	addLuaSprite('particle', true);
	addLuaSprite('dead', true);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end