function onCreate()
	-- background shit
	makeLuaSprite('coms', 'coms', -500, -300);
	setLuaSpriteScrollFactor('coms', 0.9, 0.9);
	
	makeLuaSprite('comsfront', 'comsfront', -650, 600);
	setLuaSpriteScrollFactor('comsfront', 0.9, 0.9);
	scaleObject('comsfront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('blankcurtains', 'blankcurtains', -500, -300);
		setLuaSpriteScrollFactor('blankcurtains', 1.3, 1.3);
		scaleObject('blankcurtains', 0.9, 0.9);
	end

	addLuaSprite('coms', false);
	addLuaSprite('comsfront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('blankcurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end