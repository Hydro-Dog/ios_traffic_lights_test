//
//  TraficLightsView.swift
//  MyApp1
//
//  Created by Vlad Babaev on 22.01.2024.
//

import UIKit
import SnapKit

class TrafficLightsView: UIView {
    private var firstView = TrafficLightsSectionView(.systemMint)
    private var secondView = TrafficLightsSectionView(.systemPurple)
    private var thirdView = TrafficLightsSectionView(.systemIndigo)
    private var stackVew = UIStackView(frame: .zero)
    private var views: [TrafficLightsSectionView] = []
    private var currentIndex = -1;
    
    init() {
        super.init(frame: .zero)
        
        configureStackView()
    }
    
    required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Public
    func switchTrafficLights() {
        currentIndex += 1
        views.forEach { item in
            item.turnOff()
        }
        
        views[currentIndex % 3].turnOn()
    }
    
    
    //MARK: Private
    private func configureStackView() {
        views = [firstView, secondView, thirdView]
        
        addSubview(stackVew)
        stackVew.spacing = 12
        stackVew.axis = .vertical
        stackVew.alignment = .center
        stackVew.distribution = .fillEqually
        
        stackVew.addArrangedSubview(firstView)
        stackVew.addArrangedSubview(secondView)
        stackVew.addArrangedSubview(thirdView)
        
        stackVew.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        firstView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.centerX.equalToSuperview()
        }
        
        secondView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.centerX.equalToSuperview()
        }
        
        thirdView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.centerX.equalToSuperview()
        }
        
        firstView.turnOn()
    }
        
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
