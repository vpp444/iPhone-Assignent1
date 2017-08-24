//
//  IngredientCell.swift
//  Reci-me
//
//  Created by Yue Li on 24/8/17.
//  Copyright © 2017 Yue Li. All rights reserved.
//

import UIKit

class IngredientCell: UITableViewCell {

    
    @IBOutlet weak var ingredientlabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
