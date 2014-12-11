
// Native Frameworks
@import UIKit;

@interface UITextField (TestHelper)

/**
 *	Sets the `text` property of `UITextField` via `KVC` and raises `UIControlEventEditingChanged` if `raiseEvent` is `YES`.
 *
 *	@param text       The text to be set for the `text` property of the `UITextField`.
 *	@param raiseEvent If `YES` after setting the text the event `UIControlEventEditingChanged` will be raised for self.
 *
 *	@since 0.0.1
 */
- (void)et_setTextProgramatically:(NSString *)text raiseEvent:(BOOL)raiseEvent;

@end
