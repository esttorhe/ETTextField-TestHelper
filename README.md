ETTextField-TestHelper
======================

UITextField category with convenience methods for testing.

------------------
This category was primarily created due to [FBSnapshotTestCase](https://github.com/facebook/ios-snapshot-test-case) and [ReactiveCocoa](https://github.com/ReactiveCocoa/ReactiveCocoa) working together and "making some issues" or unexpected behaviors on the snapshots.

Due to the `RACSignal`s (`rac_textSignal`) bindings to `UIButton` `RACCommand`s responding to changes in `UITextField` my `FBSnapshotTestCase` were failing.

Even though we were "injecting" the correct data to the model the bindings were not firing the signal to enable the button.

In here you'll find an easy method that will set the text and will also fire the `rac_textSignal`.

This is done by setting the text with `KVC` and sending actions to the control:
```objc
[self setValue:@"<Passed Text>" forKeyPath:NSStringFromSelector(@selector(text))]; // Set the text like this to ensure that `KVO` will fire.
[self sendActionsForControlEvents:UIControlEventEditingChanged]; // This will fire the `rac_textSignal` and its effects.
```

##Contact
[![Twitter: @esttorhe](http://img.shields.io/badge/Twitter%20-%40esttorhe-blue.svg?style=flat)](https://twitter.com/esttorhe)
