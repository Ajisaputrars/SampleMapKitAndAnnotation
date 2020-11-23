//
//  MainView.swift
//  SampleMapKitWithAnnotation
//
//  Created by Aji Saputra Raka Siwi on 22/11/20.
//

import UIKit
import SnapKit

class MainView: UIView {
    
    let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Next", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = .white
        
        self.addSubview(nextButton)
        
        self.nextButton.snp.makeConstraints { (make) in
            make.center.equalTo(self.safeAreaLayoutGuide)
        }
    }
}
