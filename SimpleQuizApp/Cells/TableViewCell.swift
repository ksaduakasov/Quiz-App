//
//  TableViewCell.swift
//  SimpleQuizApp
//
//  Created by Kalbek Saduakassov on 31.01.2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var receivedScore: UILabel!
    @IBOutlet weak var maximumScore: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
