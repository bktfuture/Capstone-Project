//
//  TransactionCell.swift
//  Ascent
//
//  Created by Aiturgan Talant on 4/22/24.
//

import UIKit

class TransactionCell: UITableViewCell {
   // @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var CostLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
