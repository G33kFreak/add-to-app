import UIKit
import Flutter
import FlutterPluginRegistrant

struct AppFlutterEngines {
    static let flutterEngine1 = "my_engine_1"
}

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {
    lazy var flutterEngine = FlutterEngine(name: AppFlutterEngines.flutterEngine1)

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions   launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        flutterEngine.run();
        GeneratedPluginRegistrant.register(with: self.flutterEngine);
    
        return super.application(application, didFinishLaunchingWithOptions: launchOptions);
  }
}
