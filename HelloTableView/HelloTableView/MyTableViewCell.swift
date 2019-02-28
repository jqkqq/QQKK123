//
//  MyTableViewCell.swift
//  HelloTableView
//
//  Created by aiur on 2019/02/23.
//  Copyright © 2019 aiur. All rights reserved.
//

import UIKit


struct MyTableViewCellData {
    var isOpenSwitch = false
}

class MyTableViewCell: UITableViewCell {
    @IBOutlet weak var mySwitch: UISwitch!
    
    typealias SwitchChanged = (Bool) -> Void
    var switchChangedClosure: SwitchChanged?
    var data: MyTableViewCellData? {
        didSet {
            if let data = data {
                mySwitch.isOn = data.isOpenSwitch
            } else {
                mySwitch.isOn = true
            }
        }
    }

    @IBAction func switchChanged(_ sender: UISwitch) {
        switchChangedClosure?(mySwitch.isOn)
    }
}
