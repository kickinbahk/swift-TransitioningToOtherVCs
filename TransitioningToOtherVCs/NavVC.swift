//
//  NavVC.swift
//  TransitioningToOtherVCs
//
//  Created by Josiah Mory on 7/13/17.
//  Copyright © 2017 kickinbahk Productions. All rights reserved.
//

import UIKit

class NavVC: UIViewController {
  var checklist = ["Subclas UITableViewDatasource",
                   "Create a prototype cell",
                   "Set a unique reuse identifier",
                   "Wire the tableView to the ViewController",
                   "Add number of rows",
                   "Add cellForRowAt"]
  
}

extension NavVC: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return checklist.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    
    cell.textLabel?.text = checklist[indexPath.row]
    
    return cell
  }
}

extension NavVC: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    
    let vc = storyboard.instantiateViewController(withIdentifier: "detail")
    
    navigationController?.pushViewController(vc, animated: true)
  }
}
