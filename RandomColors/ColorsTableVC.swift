//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Talha Batuhan Irmalı on 15.06.2022.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    var colors:[UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues {
        static let toDetail = "ToColorsDetailVC"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addcreateRandomColors()

        // Do any additional setup after loading the view.
    }
    
    func addcreateRandomColors() {
        for _ in 0..<50 {
            colors.append(.random())
        }
    }
        
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destCV = segue.destination as! ColorsDetailVC
        destCV.color = sender as? UIColor
    }

}


extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }
        
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
}
