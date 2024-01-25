import UIKit
import SnapKit

enum Items: Int, CaseIterable {
    case First = 0
    case Second
    case Third
    case Forth
}

var map: [Items: UIColor] = [.First: .systemMint, .Second: .systemPurple, .Third: .systemIndigo, .Forth: .systemRed ]

class TrafficLightsController: UIViewController {
    let trafficLightsView = TrafficLightsView()
    var currentItem: Items = .First
    
    override func viewWillAppear(_ animated: Bool) {
        
        print("viewWillAppear")
    }
    
    override func viewIsAppearing(_ animated: Bool) {
        print("viewIsAppearing")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
        view.addSubview(trafficLightsView)
        trafficLightsView.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.greaterThanOrEqualTo(300)
            make.top.equalTo(64)
            make.centerX.equalToSuperview()
        }
    }
    
    
    @IBAction func onButtonTouch(_ sender: Any) {
        trafficLightsView.switchTrafficLights()
    }
}

