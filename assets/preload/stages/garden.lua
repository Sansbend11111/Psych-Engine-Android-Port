function onCreate()
	-- background shit
	makeLuaSprite('gardon', 'gardon', -500, -300);
	setLuaSpriteScrollFactor('gardon', 0.9, 0.9);
	
	makeLuaSprite('blank', 'blank', -500, 300);
	setLuaSpriteScrollFactor('blank', 0.9, 0.9);
	scaleObject('blank', -50.50, 50.50);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('gardonforground', 'gardonforground', -500, -300);
		setLuaSpriteScrollFactor('gardonforground', 1.3, 1.3);
		scaleObject('gardonforground', 0.9, 0.9);
	end

	addLuaSprite('gardon', false);
	addLuaSprite('blank', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('gardonforground', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end