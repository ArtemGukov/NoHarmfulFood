//
//  TableViewController.swift
//  NoHarmfulFood
//
//  Created by Артем on 11/04/2019.
//  Copyright © 2019 Gukov.space. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var additives = [Additive]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadAdditive()
        
    }

    func loadAdditive() {
        additives = Additive.loadData()
    }
    
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return additives.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let additive = additives[row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell

        configure(cell: cell, with: additive)
        return cell
    }
}

extension TableViewController {
    func configure(cell: TableViewCell, with additive: Additive) {
        
        cell.labelId.text = "E" + String(additive.id)
        cell.labelName.text = additive.name
    
        switch additive.danger {
        case .null:
            cell.viewDanger.backgroundColor = #colorLiteral(red: 0.2980392157, green: 0.8509803922, blue: 0.3921568627, alpha: 1)
        case .low:
            cell.viewDanger.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        case .medium:
            cell.viewDanger.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        case .high:
            cell.viewDanger.backgroundColor = #colorLiteral(red: 1, green: 0.231372549, blue: 0.1882352941, alpha: 1)
        }
    
        switch additive.source {
        case .natural:
            cell.viewSource.backgroundColor = #colorLiteral(red: 0.2980392157, green: 0.8509803922, blue: 0.3921568627, alpha: 1)
        case .vegetable:
            cell.viewSource.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        case .synthetic:
            cell.viewSource.backgroundColor = #colorLiteral(red: 1, green: 0.231372549, blue: 0.1882352941, alpha: 1)
        }
    }
}

