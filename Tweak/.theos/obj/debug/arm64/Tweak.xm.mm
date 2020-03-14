#line 1 "Tweak.xm"

#import <Cephei/HBPreferences.h>
#import <MRYIPCCenter.h>


bool enabled = true;
bool leftButtonPlacement = false;
bool darkStyle = false;
bool dontQuitNowPlaying = true;
bool dontQuitNavigation = true;

bool addedButton = false;
bool transparantButton = false;
UIView *buttonView;
UILabel *fromLabel;
MRYIPCCenter* center;

@interface SBSwitcherAppSuggestionContentView: UIView
@end

@interface SBDisplayItem: NSObject
@property (nonatomic,copy,readonly) NSString * bundleIdentifier;               
@end

@interface SBApplication : NSObject
@property (nonatomic,readonly) NSString * bundleIdentifier;                                                                                     
@end

@interface SBMediaController : NSObject
@property (nonatomic, weak,readonly) SBApplication * nowPlayingApplication;
+(id)sharedInstance;
@end




@interface SBMainSwitcherViewController: UIViewController
+ (id)sharedInstance;
-(id)recentAppLayouts;
-(void)_rebuildAppListCache;
-(void)_destroyAppListCache;
-(void)_removeCardForDisplayIdentifier:(id)arg1 ;
-(void)_deleteAppLayout:(id)arg1 forReason:(long long)arg2;
-(void)_insertCardForDisplayIdentifier:(id)arg1 atIndex:(unsigned long long)arg2 ;
-(void)_insertAppLayout:(id)arg1 atIndex:(unsigned long long)arg2 modelMutationBlock:(id)arg3 completion:(id)arg4 ;
@end

@interface SBAppLayout:NSObject
@property (nonatomic,copy) NSDictionary * rolesToLayoutItemsMap;                                         
@end

@interface SBRecentAppLayouts: NSObject
+ (id)sharedInstance;
-(id)_recentsFromPrefs;
-(void)remove:(SBAppLayout* )arg1;
-(void)removeAppLayouts:(id)arg1 ;
@end

@interface JBBulletinManager : NSObject
+(id)sharedInstance;
-(id)showBulletinWithTitle:(NSString *)title message:(NSString *)message bundleID:(NSString *)bundleID;
-(id)showBulletinWithTitle:(NSString *)title message:(NSString *)message bundleID:(NSString *)bundleID soundPath:(NSString *)soundPath;
-(id)showBulletinWithTitle:(NSString *)title message:(NSString *)message bundleID:(NSString *)bundleID soundID:(int)inSoundID;
-(id)showBulletinWithTitle:(NSString *)title message:(NSString *)message overrideBundleImage:(UIImage *)overridBundleImage;
-(id)showBulletinWithTitle:(NSString *)title message:(NSString *)message overrideBundleImage:(UIImage *)overridBundleImage soundPath:(NSString *)soundPath;
-(id)showBulletinWithTitle:(NSString *)title message:(NSString *)message overridBundleImage:(UIImage *)overridBundleImage soundID:(int)inSoundID;
-(id)showBulletinWithTitle:(NSString *)title message:(NSString *)message bundleID:(NSString *)bundleID hasSound:(BOOL)hasSound soundID:(int)soundID vibrateMode:(int)vibrate soundPath:(NSString *)soundPath attachmentImage:(UIImage *)attachmentImage overrideBundleImage:(UIImage *)overrideBundleImage;
@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBSwitcherAppSuggestionContentView; @class SBMainSwitcherViewController; @class SBMediaController; @class SpringBoard; 

static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$SBMainSwitcherViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("SBMainSwitcherViewController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$SBMediaController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("SBMediaController"); } return _klass; }
#line 70 "Tweak.xm"
static void (*_logos_orig$tweak$SpringBoard$applicationDidFinishLaunching$)(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$tweak$SpringBoard$applicationDidFinishLaunching$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$tweak$SpringBoard$debugBundle$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, NSDictionary *); static void (*_logos_orig$tweak$SBMainSwitcherViewController$_insertAppLayout$atIndex$modelMutationBlock$completion$)(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST, SEL, id, unsigned long long, id, id); static void _logos_method$tweak$SBMainSwitcherViewController$_insertAppLayout$atIndex$modelMutationBlock$completion$(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST, SEL, id, unsigned long long, id, id); static void (*_logos_orig$tweak$SBMainSwitcherViewController$switcherContentController$setContainerStatusBarHidden$animationDuration$)(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST, SEL, id, BOOL, double); static void _logos_method$tweak$SBMainSwitcherViewController$switcherContentController$setContainerStatusBarHidden$animationDuration$(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST, SEL, id, BOOL, double); static void (*_logos_orig$tweak$SBSwitcherAppSuggestionContentView$didMoveToWindow)(_LOGOS_SELF_TYPE_NORMAL SBSwitcherAppSuggestionContentView* _LOGOS_SELF_CONST, SEL); static void _logos_method$tweak$SBSwitcherAppSuggestionContentView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL SBSwitcherAppSuggestionContentView* _LOGOS_SELF_CONST, SEL); static void _logos_method$tweak$SBSwitcherAppSuggestionContentView$buttonClicked$(_LOGOS_SELF_TYPE_NORMAL SBSwitcherAppSuggestionContentView* _LOGOS_SELF_CONST, SEL, UIButton*); 



static void _logos_method$tweak$SpringBoard$applicationDidFinishLaunching$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    _logos_orig$tweak$SpringBoard$applicationDidFinishLaunching$(self, _cmd, arg1);
	[center addTarget:self action:@selector(debugBundle:)];
}


static void _logos_method$tweak$SpringBoard$debugBundle$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSDictionary * arg1) {
	[[objc_getClass("JBBulletinManager") sharedInstance] showBulletinWithTitle:@"QuitAll" 
                                                        message:[arg1 objectForKey:@"Bundle"]
                                                        bundleID:@"com.apple.MobileSMS"
                                                        soundID:1007];
}



static void _logos_method$tweak$SBMainSwitcherViewController$_insertAppLayout$atIndex$modelMutationBlock$completion$(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, unsigned long long arg2, id arg3, id arg4) {
	_logos_orig$tweak$SBMainSwitcherViewController$_insertAppLayout$atIndex$modelMutationBlock$completion$(self, _cmd, arg1, arg2, arg3, arg4);
	[center callExternalVoidMethod:@selector(debugBundle:) withArguments:@{@"Bundle" : NSStringFromClass([arg1 class])}];
}



static void _logos_method$tweak$SBSwitcherAppSuggestionContentView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL SBSwitcherAppSuggestionContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	_logos_orig$tweak$SBSwitcherAppSuggestionContentView$didMoveToWindow(self, _cmd);
	if (!addedButton) {

		
		buttonView = [[UIView alloc] init];
		buttonView.frame = CGRectMake(300.0, 12.0, 60.0, 26.0);
		buttonView.clipsToBounds = true;
		buttonView.tag = 7;
		buttonView.alpha = 0.60;
		buttonView.layer.cornerRadius = 12;

		
		UIBlurEffect *blurEffect;
		if (darkStyle) {
			blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
		} else {
			blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
		}
		UIVisualEffectView *blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
		blurEffectView.frame = buttonView.bounds;
		blurEffectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
		[buttonView addSubview:blurEffectView];

		
		[self insertSubview:buttonView atIndex:10];

		
		buttonView.translatesAutoresizingMaskIntoConstraints = false;
		[buttonView.topAnchor constraintEqualToAnchor:self.topAnchor constant:12].active = YES;
		if (leftButtonPlacement) {
			[buttonView.leftAnchor constraintEqualToAnchor:self.leftAnchor constant:15].active = YES;
		} else {
			[buttonView.rightAnchor constraintEqualToAnchor:self.rightAnchor constant:-18].active = YES;
		}
		[buttonView.widthAnchor constraintEqualToConstant:57.0].active = YES;
		[buttonView.heightAnchor constraintEqualToConstant:25.0].active = YES;

		
		UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
		[button addTarget:self
				action:@selector(buttonClicked:)
		forControlEvents:UIControlEventTouchUpInside];
		button.frame = buttonView.frame;
		[buttonView addSubview:button];
		[self insertSubview:button atIndex:12];


		
		button.translatesAutoresizingMaskIntoConstraints = false;
		[button.topAnchor constraintEqualToAnchor:buttonView.topAnchor constant:0].active = YES;
		[button.bottomAnchor constraintEqualToAnchor:buttonView.bottomAnchor constant:0].active = YES;
		[button.leftAnchor constraintEqualToAnchor:buttonView.leftAnchor constant:0].active = YES;
		[button.rightAnchor constraintEqualToAnchor:buttonView.rightAnchor constant:0].active = YES;


		
		UIFont * customFont = [UIFont fontWithName:@"Arial-BoldMT" size:12.5]; 
		fromLabel = [[UILabel alloc]initWithFrame:buttonView.bounds];
		fromLabel.text = @"Clear";
		fromLabel.font = customFont;
		fromLabel.textAlignment = NSTextAlignmentCenter;
		fromLabel.tag = 7;
		fromLabel.textColor = [UIColor whiteColor];

		[self insertSubview:fromLabel atIndex:11];

		
		fromLabel.translatesAutoresizingMaskIntoConstraints = false;
		[fromLabel.topAnchor constraintEqualToAnchor:buttonView.topAnchor constant:0].active = YES;
		[fromLabel.bottomAnchor constraintEqualToAnchor:buttonView.bottomAnchor constant:0].active = YES;
		[fromLabel.leftAnchor constraintEqualToAnchor:buttonView.leftAnchor constant:0].active = YES;
		[fromLabel.rightAnchor constraintEqualToAnchor:buttonView.rightAnchor constant:0].active = YES;

		
		fromLabel.alpha = 0;
		buttonView.alpha = 0;


		[UIView animateWithDuration:0.5 animations:^ {
			buttonView.alpha = 1;
			fromLabel.alpha = 1;

		} completion:^(BOOL finished) {
		}];

		addedButton = true;

	} else if (addedButton && transparantButton) {
		[UIView animateWithDuration:0.3 animations:^ {
				buttonView.alpha = 0.6;
				fromLabel.alpha = 1;

			}];
			transparantButton = false;
	}

}


static void _logos_method$tweak$SBSwitcherAppSuggestionContentView$buttonClicked$(_LOGOS_SELF_TYPE_NORMAL SBSwitcherAppSuggestionContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIButton* sender) {
	id one = @1;

	
	SBMainSwitcherViewController *mainSwitcher = [_logos_static_class_lookup$SBMainSwitcherViewController() sharedInstance];
    NSArray *items = mainSwitcher.recentAppLayouts;
	[center callExternalVoidMethod:@selector(debugBundle:) withArguments:@{@"Bundle" : [@([items count]) stringValue]}];

        for(SBAppLayout * item in items) {
					SBDisplayItem *itemz = [item.rolesToLayoutItemsMap objectForKey:one];
					NSString *bundleID = itemz.bundleIdentifier;

					
        			
					
        			

					NSString *nowPlayingID = [[[_logos_static_class_lookup$SBMediaController() sharedInstance] nowPlayingApplication] bundleIdentifier];

					if (dontQuitNowPlaying && dontQuitNavigation) {
						if (![bundleID isEqualToString: nowPlayingID] && ![bundleID isEqualToString:@"com.google.Maps"] && ![bundleID isEqualToString:@"com.apple.Maps"] && ![bundleID isEqualToString:@"com.waze.iphone"]) {
							[mainSwitcher _deleteAppLayout:item forReason: 1];

						}
					} else if (!dontQuitNowPlaying && dontQuitNavigation) {
						if (![bundleID isEqualToString:@"com.google.Maps"] || ![bundleID isEqualToString:@"com.apple.Maps"] || ![bundleID isEqualToString:@"com.waze.iphone"]) {
							[mainSwitcher _deleteAppLayout:item forReason: 1];

						}
					} else if (dontQuitNowPlaying && !dontQuitNavigation) {
						if (![bundleID isEqualToString: nowPlayingID] ) {
							[mainSwitcher _deleteAppLayout:item forReason: 1];

						}
					} else {
						[mainSwitcher _deleteAppLayout:item forReason: 1];
					}
        }

	
		[UIView animateWithDuration:0.3 animations:^ {
				buttonView.alpha = 0;
				fromLabel.alpha = 0;

			}];
	transparantButton = true;

 }






static void _logos_method$tweak$SBMainSwitcherViewController$switcherContentController$setContainerStatusBarHidden$animationDuration$(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, BOOL arg2, double arg3) {
	if (arg2 == false) {
			[UIView animateWithDuration:0.3 animations:^ {
				buttonView.alpha = 0;
				fromLabel.alpha = 0;

			}];
		transparantButton = true;

	}
	_logos_orig$tweak$SBMainSwitcherViewController$switcherContentController$setContainerStatusBarHidden$animationDuration$(self, _cmd, arg1, arg2, arg3);

}





void loadPrefs() {
	HBPreferences *file = [[HBPreferences alloc] initWithIdentifier:@"com.daveapps.quitallprefs"];
	enabled = [([file objectForKey:@"kEnabled"] ?: @(YES)) boolValue];
	darkStyle = [([file objectForKey:@"kDarkButton"] ?: @(NO)) boolValue];
	leftButtonPlacement = [([file objectForKey:@"kLeftPlacement"] ?: @(NO)) boolValue];
	dontQuitNowPlaying = [([file objectForKey:@"kKeepMusicAlive"] ?: @(YES)) boolValue];
	dontQuitNavigation = [([file objectForKey:@"kKeepNavAlive"] ?: @(YES)) boolValue];

	if (enabled) {
        {Class _logos_class$tweak$SpringBoard = objc_getClass("SpringBoard"); MSHookMessageEx(_logos_class$tweak$SpringBoard, @selector(applicationDidFinishLaunching:), (IMP)&_logos_method$tweak$SpringBoard$applicationDidFinishLaunching$, (IMP*)&_logos_orig$tweak$SpringBoard$applicationDidFinishLaunching$);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSDictionary *), strlen(@encode(NSDictionary *))); i += strlen(@encode(NSDictionary *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$tweak$SpringBoard, @selector(debugBundle:), (IMP)&_logos_method$tweak$SpringBoard$debugBundle$, _typeEncoding); }Class _logos_class$tweak$SBMainSwitcherViewController = objc_getClass("SBMainSwitcherViewController"); MSHookMessageEx(_logos_class$tweak$SBMainSwitcherViewController, @selector(_insertAppLayout:atIndex:modelMutationBlock:completion:), (IMP)&_logos_method$tweak$SBMainSwitcherViewController$_insertAppLayout$atIndex$modelMutationBlock$completion$, (IMP*)&_logos_orig$tweak$SBMainSwitcherViewController$_insertAppLayout$atIndex$modelMutationBlock$completion$);MSHookMessageEx(_logos_class$tweak$SBMainSwitcherViewController, @selector(switcherContentController:setContainerStatusBarHidden:animationDuration:), (IMP)&_logos_method$tweak$SBMainSwitcherViewController$switcherContentController$setContainerStatusBarHidden$animationDuration$, (IMP*)&_logos_orig$tweak$SBMainSwitcherViewController$switcherContentController$setContainerStatusBarHidden$animationDuration$);Class _logos_class$tweak$SBSwitcherAppSuggestionContentView = objc_getClass("SBSwitcherAppSuggestionContentView"); MSHookMessageEx(_logos_class$tweak$SBSwitcherAppSuggestionContentView, @selector(didMoveToWindow), (IMP)&_logos_method$tweak$SBSwitcherAppSuggestionContentView$didMoveToWindow, (IMP*)&_logos_orig$tweak$SBSwitcherAppSuggestionContentView$didMoveToWindow);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UIButton*), strlen(@encode(UIButton*))); i += strlen(@encode(UIButton*)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$tweak$SBSwitcherAppSuggestionContentView, @selector(buttonClicked:), (IMP)&_logos_method$tweak$SBSwitcherAppSuggestionContentView$buttonClicked$, _typeEncoding); }}
	}
}



static __attribute__((constructor)) void _logosLocalCtor_4f142242(int __unused argc, char __unused **argv, char __unused **envp) {
	
    loadPrefs();
	

    center = [MRYIPCCenter centerNamed:@"com.esquilli.Debug"];
}
