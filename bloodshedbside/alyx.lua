function onCreate()

	makeLuaSprite('alyxflyblue', 'alyxflyblue', -300, 200);
	setLuaSpriteScrollFactor('alyxflyblue', 0.8, 0.8);
	setObjectOrder('alyxflyblue', 5)
	scaleObject('alyxflyblue', 0.15, 0.15)

	addLuaSprite('alyxflyblue', false);

end