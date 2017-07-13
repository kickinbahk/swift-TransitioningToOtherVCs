//
//  NavVC.swift
//  TransitioningToOtherVCs
//
//  Created by Josiah Mory on 7/13/17.
//  Copyright © 2017 kickinbahk Productions. All rights reserved.
//

import UIKit

class NavVC: UIViewController {
  
}

extension NavVC: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell()
  }
}
