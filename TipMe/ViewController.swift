//
//  ViewController.swift
//  TipMe
//
//  Created by Sandeep Raghunandhan on 12/11/16.
//  Copyright © 2016 Sandeep Raghunandhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var segValue: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        let defaults = UserDefaults.standard
        let defaultIndex = defaults.integer(forKey: "index")
        segValue.selectedSegmentIndex = defaultIndex        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calcTip(_ sender: Any) {
        let tipPercentages = [0.18, 0.2, 0.25]
        let index = segValue.selectedSegmentIndex;
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[index];
        let total = bill + tip;
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    @IBAction func tipValueChange(_ sender: Any) {
        calcTip(Any.self)
    }
    @IBAction func onTapOut(_ sender: Any) {
        view.endEditing(true)
    }
}

