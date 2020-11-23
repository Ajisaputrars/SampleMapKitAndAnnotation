//
//  ViewController.swift
//  SampleMapKitWithAnnotation
//
//  Created by Aji Saputra Raka Siwi on 22/11/20.
//

import UIKit

class MainController: UIViewController {
    
    private var mainView: MainView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainView = MainView(frame: self.view.frame)
        self.view = self.mainView
        
        self.mainView.nextButton.addTarget(self, action: #selector(nextButtonPressed), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.barTintColor = .red
        self.navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        self.navigationController?.navigationBar.shadowImage = nil
    }
    
    @objc
    private func nextButtonPressed(){
        self.navigationController?.pushViewController(SampleMapKitController(), animated: true)
    }
}
