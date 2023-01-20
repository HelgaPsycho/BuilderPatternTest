//
//  ViewController.swift
//  BuilderPatternTest
//
//  Created by Ольга Егорова on 19.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func CatalogButtonDidTapped(_ sender: UIButton) {
        let controller = CatalogBuilder().setTitle("Catalog").build()
        self.present(controller, animated: true)
    }
}

