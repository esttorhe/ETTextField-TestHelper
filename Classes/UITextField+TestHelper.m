
// Header
#import "UITextField+TestHelper.h"

@implementation UITextField (TestHelper)

- (void)et_setTextProgramatically:(NSString *)text raiseEvent:(BOOL)raiseEvent {
	[self setValue:text forKeyPath:NSStringFromSelector(@selector(text))]; // Set the text like this to ensure that `KVO` will fire.
	// This will fire the `rac_textSignal` and its effects.
	if (raiseEvent) { [self sendActionsForControlEvents:UIControlEventEditingChanged]; }
}

@end
