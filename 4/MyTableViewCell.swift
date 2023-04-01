//
//  MyTableViewCell.swift
//  4
//
//  Created by R86 on 01/04/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var lable4: UILabel!
    @IBOutlet weak var lable3: UILabel!
    @IBOutlet weak var lable2: UILabel!
    @IBOutlet weak var label1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
