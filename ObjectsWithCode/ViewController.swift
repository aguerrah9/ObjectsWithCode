//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by Alejandro Guerra Hernandez on 09/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGreen
        
        let width = view.frame.size.width
        let heigth = view.frame.size.height
        
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width / 2 - width * 0.8 / 2, y: heigth / 2 - 100 / 2, width: width * 0.8, height: 100)
        
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("My Button", for: .normal)
        myButton.setTitleColor(.systemBlue, for: .normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: heigth * 0.6, width: 200, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myFunction), for: .touchUpInside)
        
    }

    @objc func myFunction() {
        print("tapped")
        myLabel.text = "Tapped"
    }

}

