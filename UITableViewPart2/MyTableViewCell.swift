 //
//  MyTableViewCell.swift
//  UITableViewPart2
//
//  Created by Александр Карпов on 10.01.2023.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var namelabel: UILabel!
    
    @IBOutlet weak var detailLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func refresh(_ model: Model) {
        namelabel.text = model.name
        detailLabel.text = model.prof
    }

}
