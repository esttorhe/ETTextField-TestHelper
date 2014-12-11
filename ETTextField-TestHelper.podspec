Pod::Spec.new do |s|

  s.name         = "ETTextField-TestHelper"
  s.version      = "0.0.1"
  s.summary      = "UITextField category with convenience methods for testing."

  s.description  = <<-DESC
                   This category was primarily created due to [FBSnapshotTestCase](https://github.com/facebook/ios-snapshot-test-case) and [ReactiveCocoa](https://github.com/ReactiveCocoa/ReactiveCocoa).
                   Due to the `RACSignal`s (`rac_textSignal`) bindings to `UIButton` `RACCommand`s responding to changes in `UITextField` my `FBSnapshotTestCase` were failing.

                   Even though we were "injecting" the correct data to the model the bindings were not firing the signal to enable the button.
                   In here you'll find an easy method that will set the text and will also fire the `rac_textSignal`.
                   DESC

  s.homepage     = "https://github/esttorhe/ETTextField-TestHelper"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Esteban Torres" => "me@estebantorr.es" }
  s.social_media_url   = "http://twitter.com/esttorhe"
  s.platform     = :ios
  s.source       = { :git => "https://github.com/esttorhe/ETTextField-TestHelper.git", :tag => s.version }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.requires_arc = true

end
