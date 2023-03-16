function onCreate()

	makeLuaSprite('alyxflyred', 'alyxflyred', -300, 200);
	setLuaSpriteScrollFactor('alyxflyred', 0.8, 0.8);
	setObjectOrder('alyxflyred', 5)
	scaleObject('alyxflyred', 0.15, 0.15)

	addLuaSprite('alyxflyred', false);

end