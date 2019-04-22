//
//  AddViewController.swift
//  NoHarmfulFood
//
//  Created by Артем on 20/04/2019.
//  Copyright © 2019 Gukov.space. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var categoryField: UITextField!
    @IBOutlet weak var sourceField: UITextField!
    @IBOutlet weak var dangerField: UITextField!

    @IBOutlet weak var noteField: UITextView!
    
    @IBOutlet weak var scrollBottomConst: NSLayoutConstraint!
    
    var newAdditive = Additive()
    
    var categoryPickerData: [String] = Category.allCases.map { $0.rawValue }
    var sourcePickerData: [String] = Source.allCases.map { $0.rawValue }
    var dangerPickerData: [String] = Danger.allCases.map { $0.rawValue }

    let categoryPicker = UIPickerView()
    let sourcePicker = UIPickerView()
    let dangerPicker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        createPicker()
        editAdditive()
        
        registerForKeyboardNotifications()

        self.hideKeyboard()
    }
    
    func createPicker() {
        
        categoryPicker.tag = 1
        categoryPicker.delegate = self
        categoryPicker.dataSource = self
        categoryField.text = categoryPickerData[0]
        categoryField.inputView = categoryPicker
        
        sourcePicker.tag = 2
        sourcePicker.delegate = self
        sourcePicker.dataSource = self
        sourceField.text = sourcePickerData[0]
        sourceField.inputView = sourcePicker
        
        dangerPicker.tag = 3
        dangerPicker.delegate = self
        dangerPicker.dataSource = self
        dangerField.text = dangerPickerData[0]
        dangerField.inputView = dangerPicker
    }
    
    func editAdditive() {
        
        idField.text = newAdditive.id
        nameField.text = newAdditive.name
        categoryField.text = newAdditive.category.rawValue
        sourceField.text = newAdditive.source.rawValue
        dangerField.text = newAdditive.danger.rawValue
        noteField.text = newAdditive.note
    }
    
    
    func saveAdditive() {
        
        newAdditive.id = idField.text!
        newAdditive.name = nameField.text!
        newAdditive.category = Category(rawValue: categoryField.text!)!
        newAdditive.source = Source(rawValue: sourceField.text!)!
        newAdditive.danger = Danger(rawValue: dangerField.text!)!
        newAdditive.note = noteField.text ?? ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
    func updateUI() {
        
        saveButton.isEnabled = areFieldsReady()
    }
    
    func areFieldsReady() -> Bool {
        return !idField.isEmpty && !nameField.isEmpty
    }
    

    @IBAction func textChange() {
        updateUI()
    }
  
}
extension AddViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return categoryPickerData.count
        }
        
        if pickerView.tag == 2 {
            return sourcePickerData.count
        }
        
        if pickerView.tag == 3 {
            return dangerPickerData.count
        }
        
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return categoryPickerData[row]
        }
        
        if pickerView.tag == 2 {
            return sourcePickerData[row]
        }
        
        if pickerView.tag == 3 {
            return dangerPickerData[row]
        }
        
        return nil
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 1 {
            return categoryField.text = categoryPickerData[row]
        }
        
        if pickerView.tag == 2 {
            return sourceField.text = sourcePickerData[row]
        }
        
        if pickerView.tag == 3 {
            return dangerField.text = dangerPickerData[row]
        }
    }
}

// MARK: - Navigation
extension AddViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        saveAdditive()
    }
}

// MARK: - Keyboard method
extension AddViewController {
    func registerForKeyboardNotifications() {
        
        let names: [NSNotification.Name] = [
            UIResponder.keyboardWillShowNotification,
            UIResponder.keyboardWillHideNotification
        ]
        
        for name in names {
            NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: name, object: nil)
        }
    }
    
    @objc func keyboardWillShow(notification: Notification) {
        let userInfo = notification.userInfo
        let kbFrameSize = (userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        
        let constant: CGFloat
        
        if notification.name == UIResponder.keyboardWillShowNotification {
            constant = kbFrameSize.height
        } else {
            constant = 0
        }
        
        scrollBottomConst.constant = constant + 20
    }
}
