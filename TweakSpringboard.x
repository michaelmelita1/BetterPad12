#import <UIKit/UIKit.h>
%hook CCUIModuleCollectionViewController
-(bool)_shouldApplyBackgroundEffects {
		return YES;
}
%end
%hook SBPlatformController
-(long long)medusaCapabilities {
		return 2;
}
%end
%hook SBFloatingApplicationRootViewController
-(void)_updateDarkenViewAlphaForFloatingConfiguration:(long long)arg1 modal:(bool)arg2 {
    return %orig(FALSE, arg2);
}
%end

