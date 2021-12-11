function onCreate()
	-- background shit
	makeLuaSprite('grayback', 'grayback', -500, -300);
	setLuaSpriteScrollFactor('grayback', 0.9, 0.9);
	
	makeLuaSprite('grayfront', 'grayfront', -500, 300);
	setLuaSpriteScrollFactor('grayfront', 0.9, 0.9);
	scaleObject('grayfront', -50.50, 50.50);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('graycurtains', 'graycurtains', -500, -300);
		setLuaSpriteScrollFactor('graycurtains', 1.3, 1.3);
		scaleObject('graycurtains', 0.9, 0.9);
	end

	addLuaSprite('grayback', false);
	addLuaSprite('grayfront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('graycurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end