//
//  TableViewCell.swift
//  NoHarmfulFood
//
//  Created by Артем on 11/04/2019.
//  Copyright © 2019 Gukov.space. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var viewSource: UIView!
    @IBOutlet weak var viewDanger: UIView!
    @IBOutlet weak var labelId: UILabel!
    @IBOutlet weak var labelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setupUI() {
        
        viewDanger.layer.cornerRadius = viewDanger.bounds.width / 2
        viewSource.layer.cornerRadius = viewSource.bounds.width / 2
        
    }
}
