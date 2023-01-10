//
//  ViewController.swift
//  UITableViewPart2
//
//  Created by Александр Карпов on 10.01.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    let tableViewController = UITableViewController(style: .plain)
    var refresh = UIRefreshControl()
    
//    var allItemArray = ["Robbins", "Jobs", "Gilbert"]
    var allTime = [Date]()
    var identifier = "Cell"
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTableView()
        self.refresh.addTarget(self, action: #selector(handleRefresh), for: .valueChanged)
        refresh.tintColor = .red

        view.addSubview(tableViewController.tableView)
        tableViewController.tableView.addSubview(refresh)
    }
    
    @objc func handleRefresh() {
        allTime.append(Date())
        refresh.endRefreshing()
        let indexPathNewRow = IndexPath(row: allTime.count - 1, section: 0)
        tableViewController.tableView.insertRows(at: [indexPathNewRow], with: .bottom)
    }


    func createTableView() {         let tableView = UITableView(frame: CGRect(x: 0, y: 50, width: view.bounds.width, height: view.bounds.height), style: .plain)
        tableViewController.tableView = tableView
        tableViewController.tableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        tableViewController.tableView.delegate = self
        tableViewController.tableView.dataSource = self
    }
    
}


extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTime.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        let date = allTime[indexPath.row]
        cell.textLabel?.text = "\(date)"
        return cell
    }
    
    
}


