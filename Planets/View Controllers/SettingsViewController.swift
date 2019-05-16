//
//  SettingsViewController.swift
//  Planets
//
//  Created by Michael Stoffer on 5/15/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: - IBOutlets and Variables
    @IBOutlet var plutoSwitch: UISwitch!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.updateViews()
    }
    
    // MARK: - IBActions and Methods
    @IBAction func plutoSwitchToggled(_ sender: UISwitch) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(sender.isOn, forKey: .shouldShowPlutoKey)
    }
    
    private func updateViews() {
        let userDefaults = UserDefaults.standard
        self.plutoSwitch.isOn = userDefaults.bool(forKey: .shouldShowPlutoKey)
    }
}

extension String {
    static var shouldShowPlutoKey = "shouldShowPlutoKey"
}
