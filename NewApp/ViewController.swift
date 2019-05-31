//
//  ViewController.swift
//  NewApp
//
//  Created by Amarprakash Mishra on 02/02/19.
//  Copyright © 2019 Amarprakash Mishra. All rights reserved.
//

import UIKit

extension UIColor{
    static var mainPink = UIColor(red: 232/255, green: 68/255, blue: 133/255, alpha: 1)
}

class ViewController: UIViewController {

   
    
    // make sure you apply the correct encapsulation principles in classes
    private let previousButton : UIButton = {
       let button = UIButton(type: .system)
        button.backgroundColor = .red
        
        button.setTitle("PREV", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.gray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.backgroundColor = .white
        
        setUpBottomControls()
        
     
    }
    fileprivate func setUpBottomControls() {
        view.addSubview(previousButton)
        
        view.addSubview(previousButton)
        
        
        NSLayoutConstraint.activate([
            //previousButton.topAnchor.constraint(equalTo: view.topAnchor) ,
            //previousButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor) ,
            previousButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            previousButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor) ,
            previousButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            previousButton.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
    


}

