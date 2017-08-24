//
//  SecondViewController.swift
//  Reci-me
//
//  Created by Yue Li on 22/8/17.
//  Copyright © 2017 Yue Li. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    @IBOutlet weak var myingredienttable: UITableView!
    
    let ingredient: [String] = ["sdf453asf","sdfasf","sdfasf","sdfa435sf","sdfasf","sdfa43534sf","sdfasf","sdfasf","sdfa34534sf","sdfas43534f","sdfasf","sdfasf","sdfasf","sdfa453sf"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myingredienttable.dataSource = self
        myingredienttable.delegate = self
    }
}

extension SecondViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredient.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! IngredientCell
        
        cell.ingredientlabel.text = ingredient[indexPath.row]
        
        return cell
    }
}

extension SecondViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.layer.transform = CATransform3DMakeScale(0.1, 0.1, 1.0)
        
        UIView.animate(withDuration: 0.5, animations: {cell.layer.transform = CATransform3DMakeScale(1.0, 1.0, 1.0)}, completion: nil)
    }
}
