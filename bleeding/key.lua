local funni = true

function onCreate()
    makeLuaText('funniboi', 'Unforgivable Input Enabled!', 1250, 'timeTxt.X', 500)
	setObjectCamera('funniboi', 'hud')
	setTextSize('funniboi', 30)
	addLuaText('funniboi')
    setProperty('funniboi.alpha', 0)
end

function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/100)/(curBpm/170)

    setProperty('funniboi.angle',0 - 10 * math.cos((currentBeat)*math.pi) )

    if funni == true then
        setProperty('funniboi.alpha', 1)
    end
    if funni == false then
        setProperty('funniboi.alpha', 0)
    end
end

function noteMiss() 
    health = getProperty('health');
    setProperty('health', health - 0.4)
end