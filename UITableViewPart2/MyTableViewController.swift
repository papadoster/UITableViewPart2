//
//  MyTableViewController.swift
//  UITableViewPart2
//
//  Created by Александр Карпов on 10.01.2023.
//

import UIKit

class MyTableViewController: UITableViewController {
    
//    var itemArray = [Model]()
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var isPushSwitch: UISwitch!
    
    @IBOutlet weak var sexSegment: UISegmentedControl!
    
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let item = Model(name: "Alex Karpov", prof: "See Man")
//        itemArray.append(item)
        
        
        if let name = userDefaults.object(forKey: "name") {
            nameTextField.text = name as? String
        }
        
        if let lastName = userDefaults.object(forKey: "lastName") {
            lastNameTextField.text = lastName as? String
        }
        
        if let isSwitch = userDefaults.object(forKey: "switch") {
            isPushSwitch.isOn = isSwitch as! Bool
        }
        
        if let sex = userDefaults.object(forKey: "sex") {
            sexSegment.selectedSegmentIndex = sex as! Int
        }
        
        
    }
    
    
    
    
    
    
    @IBAction func safeButton(_ sender: UIButton) {
        userDefaults.setValue(nameTextField.text, forKey: "name")
        userDefaults.setValue(lastNameTextField.text, forKey: "lastName")
        userDefaults.set(isPushSwitch.isOn, forKey: "switch")
        userDefaults.set(sexSegment.selectedSegmentIndex, forKey: "sex")
        print("Save")
        lastNameTextField.resignFirstResponder()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return itemArray.count
//    }
//
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as? MyTableViewCell {
//
//            let item = itemArray[indexPath.row]
//            //cell.namelabel.text = item.name
//            //cell.detailLabel.text = item.prof
//            cell.refresh(item)
//
//            return cell
//        }
//        return UITableViewCell()
//    }
//
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100.0
//    }
    
    
    
}
