//
//  ColorsTableVC.swift
//  Random Color
//
//  Created by Paurakh Vikram Saud on 19/01/2023.
//

import UIKit

class ColorsTableVC: UIViewController{
    
    var colors: [UIColor] = [];
    
    enum Cells{
        
        static let colorCell = "colorCell"
        
    }
    
    enum segues{
        
        static let colorpage = "toColorPage"
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColor()
    }
    
    func addRandomColor(){
        
        for _ in 0..<50{
            colors.append(.random())
           
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorDetailesVC
        destVC.color = sender as? UIColor
    }
   
    
}

extension ColorsTableVC:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    } // this table show, how many rows in the table
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else{
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let color = colors[indexPath.row]
        performSegue(withIdentifier: segues.colorpage, sender: color)
    }

}

