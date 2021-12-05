function onCreate()

    -- sprites that only load if Low Quality is turned off
        if not lowQuality then
            makeLuaSprite('sunkground', 'sunkground', -125, -100);
            setScrollFactor('sunkground', 0.9, 0.9);
            
        end
    
        addLuaSprite('sunkground', false);
        
        close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
    end