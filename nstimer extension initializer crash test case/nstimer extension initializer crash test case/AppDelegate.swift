import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        NSTimer.testInit(5.0)
        NSTimer(testCaseTimeInterval: 5.0)
    }
}

extension NSTimer {
    convenience init(testCaseTimeInterval interval: NSTimeInterval) {
        self.init(timeInterval: interval, target: NSObject(), selector: "test:", userInfo: nil, repeats: false) // crashes here
    }
    
    class func testInit(interval: NSTimeInterval) -> NSTimer {
        return self.init(timeInterval: interval, target: NSObject(), selector: "test:", userInfo: nil, repeats: false) // no crash
    }
}