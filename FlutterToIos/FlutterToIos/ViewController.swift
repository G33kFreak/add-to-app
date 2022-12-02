import UIKit
import Flutter

class ViewController: UIViewController {
    override func viewDidLoad() {
      super.viewDidLoad()
    }
    
    @IBAction func flutterWithWarmUpBtn(_ sender: Any) {
        showFlutterWithWarmUp()
    }
    
    @IBAction func flutterWithoutWarmUpBtn(_ sender: Any) {
        showFlutterWithoutWarmUp()
    }
    
    func showFlutterWithoutWarmUp(){
        let flutterViewController = FlutterViewController(project: nil, nibName: nil, bundle: nil)
        flutterViewController.modalPresentationStyle = .fullScreen
        
        present(flutterViewController, animated: true, completion: nil)
    }
    
    @objc func showFlutterWithWarmUp() {
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController =
          FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        flutterViewController.modalPresentationStyle = .fullScreen
        
        present(flutterViewController, animated: true, completion: nil)
    }
}

