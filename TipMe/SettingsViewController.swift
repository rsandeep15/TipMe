//
//  SettingsViewController.swift
//  TipMe
//
//  Created by Sandeep Raghunandhan on 12/14/16.
//  Copyright © 2016 Sandeep Raghunandhan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var segValue: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let defaultIndex = defaults.integer(forKey: "index")
        segValue.selectedSegmentIndex = defaultIndex
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func setDefault(_ sender: UISegmentedControl) {
        let defaults = UserDefaults.standard
        defaults.set(segValue.selectedSegmentIndex, forKey: "index")
        defaults.synchronize()
    }
}
