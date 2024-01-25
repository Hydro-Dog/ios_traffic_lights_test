import UIKit

class TrafficLightsSectionView: UIView {
    private var lightsСolor: UIColor?
    
    init(_ lightsСolor: UIColor) {
        super.init(frame: .zero)
        self.lightsСolor = lightsСolor
    }
    
    required init?(coder: NSCoder) {
        fatalError("wow")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = frame.height / 2
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2
        self.backgroundColor = .clear
    }
    
    override func awakeFromNib() {
        print("awakeFromNib")
        super.awakeFromNib()
        self.layer.cornerRadius = frame.height / 2
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2
        self.backgroundColor = .clear
    }
   
    func turnOn() {
        backgroundColor = lightsСolor
    }
    
    func turnOff() {
        backgroundColor = .clear
    }
    
    func toggle(value: Bool) {
        if (backgroundColor == .clear) {
            backgroundColor = lightsСolor
        } else {
            backgroundColor = .clear
        }
    }
}
 
