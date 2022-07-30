//
//  TableViewCell.swift
//  Simple-User-Interface
//
//  Created by Ekaterina Volkova on 30/07/2022.
//

import UIKit

struct cellData {
    var firstOperand: Float!
    var secondOperand: Float!
    var result: Float
}

class TableViewCell: UITableViewCell {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var secondOperand: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var firstOperand: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
