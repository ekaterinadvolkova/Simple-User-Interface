//
//  TableViewCell.swift
//  Simple-User-Interface
//
//  Created by Ekaterina Volkova on 30/07/2022.
//

import UIKit

struct cellData {
    var operand1: Float
    var operand2: Float
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
        firstOperand.text = "1.0000"
        secondOperand.text = "1.0000"
        result.text = "1.0000"
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func sliderDidSlide(_ sender: UISlider){
        let value = String(format: "%.4f", sender.value)
        secondOperand.text = "\(value)"
    }
    
    @IBAction func stepperDidStep(_ sender: UIStepper){
        let value = String(format: "%.4f", sender.value)
        firstOperand.text = "\(value)"
    }
    
    @IBAction func didTapButton(_ sender: UIButton){
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 4
        
        let value = Double(firstOperand.text!)! * Double(secondOperand.text!)!
        let number = NSNumber(value: value)
        let formattedValue = formatter.string(from: number)!
        result.text = "\(formattedValue)"
    }
}
