//
//  ColorDetailesVC.swift
//  Random Color
//
//  Created by Paurakh Vikram Saud on 19/01/2023.
//

import UIKit

class ColorDetailesVC: UIViewController {
    
    var color: UIColor?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = color ?? .blue
       
    }
    


}
