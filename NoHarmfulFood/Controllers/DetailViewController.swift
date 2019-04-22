//
//  DetailViewController.swift
//  NoHarmfulFood
//
//  Created by Артем on 11/04/2019.
//  Copyright © 2019 Gukov.space. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var labelId: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelCategory: UILabel!
    @IBOutlet weak var labelSource: UILabel!
    @IBOutlet weak var labelDanger: UILabel!
    
    @IBOutlet weak var viewCategory: UIView!
    @IBOutlet weak var viewSource: UIView!
    @IBOutlet weak var viewDanger: UIView!
    
    @IBOutlet weak var textViewDescription: UITextView!

    var additive = Additive()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupUI()
    }

}

extension DetailViewController {
    
func setupUI() {
    
    labelId.text = "E" + additive.id
    labelName.text = additive.name
    
    labelCategory.text = additive.category.rawValue
    viewCategory.layer.cornerRadius = viewCategory.bounds.height / 2
    
    labelDanger.text = additive.danger.rawValue
    viewDanger.layer.cornerRadius = viewDanger.bounds.height / 2
    
    labelSource.text = additive.source.rawValue
    viewSource.layer.cornerRadius = viewSource.bounds.height / 2
    
    textViewDescription.text = additive.note
    
    setupUIColor()
}
    
    func setupUIColor() {
        
        viewCategory.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        switch additive.danger {
        case .null:
            viewDanger.backgroundColor = #colorLiteral(red: 0.2980392157, green: 0.8509803922, blue: 0.3921568627, alpha: 1)
        case .low:
            viewDanger.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
            labelDanger.textColor = UIColor.black
        case .medium:
            viewDanger.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        case .high:
            viewDanger.backgroundColor = #colorLiteral(red: 1, green: 0.231372549, blue: 0.1882352941, alpha: 1)
        }
        
        switch additive.source {
        case .natural:
            viewSource.backgroundColor = #colorLiteral(red: 0.2980392157, green: 0.8509803922, blue: 0.3921568627, alpha: 1)
        case .animal:
            viewSource.backgroundColor = #colorLiteral(red: 0.2980392157, green: 0.8509803922, blue: 0.3921568627, alpha: 1)
        case .vegetable:
            viewSource.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
            labelSource.textColor = UIColor.black
        case .unnatural:
            viewSource.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        case .synthetic:
            viewSource.backgroundColor = #colorLiteral(red: 1, green: 0.231372549, blue: 0.1882352941, alpha: 1)
        }
    }
}

extension DetailViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "EditSegue" else { return }
        guard let addViewController = segue.destination as? AddViewController else { return }
            addViewController.newAdditive = additive

            //print(#line, #function, additive)
    }
}

