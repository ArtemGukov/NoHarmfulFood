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
        navigationItem.leftBarButtonItem = editButtonItem
    }

    func loadAdditive() {
        additives = Additive.loadData().sorted(by: { $0.id < $1.id })
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
    }
    
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
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete:
            additives.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        default:
            break
        }
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
        case .animal:
            cell.viewSource.backgroundColor = #colorLiteral(red: 0.2980392157, green: 0.8509803922, blue: 0.3921568627, alpha: 1)
        case .vegetable:
            cell.viewSource.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        case .unnatural:
            cell.viewSource.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        case .synthetic:
            cell.viewSource.backgroundColor = #colorLiteral(red: 1, green: 0.231372549, blue: 0.1882352941, alpha: 1)
        }
    }
}

// MARK: - Add alert
extension TableViewController {
    
    func alertWrongMessage(message: String) {
        let alert = UIAlertController(title: "Ошибка",
                                      message: message,
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK",
                                     style: .default,
                                     handler: nil)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - Navigation
extension TableViewController {
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        guard segue.identifier == "SaveSegue" else { return }
        guard let addViewController = segue.source as? AddViewController else { return }
        let newAdditive = addViewController.newAdditive

        //let indexPath = IndexPath(row: additives.count, section: 0)

        if additives.contains(where: { $0.id == newAdditive.id }) {
            alertWrongMessage(message: "Добавка с таким кодом уже зарегистрирована")
            return
        } else {
            let index = additives.insertionIndexOf(elem: newAdditive) { $0.id < $1.id }
            additives.insert(newAdditive, at: index)
            tableView.reloadData()
        }
    }
}

extension TableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "DetailSegue" else { return }
        guard let detailViewController = segue.destination as? DetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailViewController.additive = additives[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


