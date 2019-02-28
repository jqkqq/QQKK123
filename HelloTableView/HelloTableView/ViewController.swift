//
//  ViewController.swift
//  HelloTableView
//
//  Created by aiur on 2019/02/23.
//  Copyright © 2019 aiur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var tableView: UITableView!
    var cellData: [MyTableViewCellData]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cellData = []
        for _ in 1...20 {
            cellData.append(MyTableViewCellData(isOpenSwitch: true))
        }
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource & UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
            as? MyTableViewCell else {
            fatalError()
        }
//        cell.data = cellData[indexPath.row]
//        cell.switchChangedClosure = { [unowned self] isOpen in
//            self.cellData[indexPath.row].isOpenSwitch = isOpen
//        }
        return cell
    }
    
}

