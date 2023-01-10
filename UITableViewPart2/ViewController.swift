//
//  ViewController.swift
//  UITableViewPart2
//
//  Created by Александр Карпов on 10.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let tableViewController = UITableViewController(style: .plain)
    var refresh = UIRefreshControl()
    
//    var allItemArray = ["Robbins", "Jobs", "Gilbert"]
    var allItemArray = ["Robbins", "Jobs", "Gilbert"]
    var identifier = "Cell"
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTableView()

        view.addSubview(tableViewController.tableView)
    }


    func createTableView() {
        let tableView = UITableView(frame: CGRect(x: 0, y: 50, width: view.bounds.width, height: view.bounds.height), style: .plain)
        tableViewController.tableView = tableView
        tableViewController.tableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        tableViewController.tableView.delegate = self
        tableViewController.tableView.dataSource = self
    }
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allItemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        let item = allItemArray[indexPath.row]
        cell.textLabel?.text = item
        return cell
    }
    
    
}


extension UIView {

  var safeTopAnchor: NSLayoutYAxisAnchor {
    if #available(iOS 11.0, *) {
      return safeAreaLayoutGuide.topAnchor
    }
    return topAnchor
  }

  var safeLeftAnchor: NSLayoutXAxisAnchor {
    if #available(iOS 11.0, *){
      return safeAreaLayoutGuide.leftAnchor
    }
    return leftAnchor
  }

  var safeRightAnchor: NSLayoutXAxisAnchor {
    if #available(iOS 11.0, *){
      return safeAreaLayoutGuide.rightAnchor
    }
    return rightAnchor
  }

  var safeBottomAnchor: NSLayoutYAxisAnchor {
    if #available(iOS 11.0, *) {
      return safeAreaLayoutGuide.bottomAnchor
    }
    return bottomAnchor
  }
}
 
