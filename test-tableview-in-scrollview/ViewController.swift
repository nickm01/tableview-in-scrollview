//
//  ViewController.swift
//  test-tableview-in-scrollview
//
//  Created by Nick McConnell on 2/11/18.
//  Copyright © 2018 Nick McConnell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var stackViewHeight: NSLayoutConstraint!
    @IBOutlet weak var labelHeight: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Cell \(indexPath.row)"

        stackViewHeight.constant = tableView.contentSize.height + labelHeight.constant
        return cell
    }


}

