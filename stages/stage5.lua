function onCreate()
	-- background 

	makeLuaSprite('stageback', 'stageback', -600, 0);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	setObjectOrder('stageback', 1)
	scaleObject('stageback', 2, 2)

	makeLuaSprite('code', 'code', -600, -400);
	setLuaSpriteScrollFactor('code', 1, 1);
	scaleObject('code', 2, 2)
	setObjectOrder('code', 2)
	setProperty('code.alpha', 0)

	makeLuaSprite('haxe', 'haxe', 200, -100);
	setLuaSpriteScrollFactor('haxe', 1, 1);
	scaleObject('haxe', 4, 4)
	setObjectOrder('haxe', 3)
	setProperty('haxe.alpha', 0)

	makeLuaSprite('stagecurtains', 'stagecurtains', -600, -300);
	setLuaSpriteScrollFactor('stagecurtains', 1, 1);
	setObjectOrder('stagecurtains', 4)

	makeLuaSprite('png', 'png', -600, -400);
	setLuaSpriteScrollFactor('png', 1, 1);
	scaleObject('png', 3.75, 3.75)
	setObjectOrder('png', 4)
	setProperty('png.alpha', 0)

	makeLuaSprite('restrict', 'restrict', 400, 200);
	setLuaSpriteScrollFactor('restrict', 1, 1);
	scaleObject('restrict', 1, 1)
	setObjectOrder('restrict', 5)
	setProperty('restrict.alpha', 0)

	makeLuaSprite('restrict2', 'restrict', 200, 100);
	setLuaSpriteScrollFactor('restrict2', 1, 1);
	scaleObject('restrict2', 1, 1)
	setObjectOrder('restrict2', 6)
	setProperty('restrict2.alpha', 0)

	makeLuaSprite('deadly', 'deadly', -680, -250);
	setLuaSpriteScrollFactor('deadly', 1, 1);
	setObjectOrder('deadly', 7)
	scaleObject('deadly', 1, 0.8)
	setObjectCamera('deadly', 'camHud');
	setProperty('deadly.alpha', 0)
		
	makeLuaSprite('dead', 'dead', -680, -250);
	setLuaSpriteScrollFactor('dead', 1, 1);
	setObjectOrder('dead', 600)
	scaleObject('dead', 5, 5)
	setObjectCamera('dead', 'other');
	setProperty('dead.alpha', 0)

	addLuaSprite('stageback', false);
	addLuaSprite('code', false);
	addLuaSprite('haxe', false);
	addLuaSprite('stagecurtains', false);
	addLuaSprite('png', false);
	addLuaSprite('restrict', false);
	addLuaSprite('restrict2', false);
	addLuaSprite('deadly', true);
	addLuaSprite('dead', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end