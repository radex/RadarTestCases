import UIKit

@UIApplicationMain class AppDelegate: NSObject, UIApplicationDelegate {
    func application(app: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        
        if API.decodeTask(["foo": "bar"]) != nil {
            println("Yay, this works!")
        } else {
            println("Nay, this is broken!")
            
        }
        
        return true
    }
}
