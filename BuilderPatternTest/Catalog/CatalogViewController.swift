//
//  CatalogViewController.swift
//  BuilderPatternTest
//
//  Created by Ольга Егорова on 19.01.2023.
//

import UIKit

class CatalogViewController: UIViewController {
    
    let interactor: Interactor!
    
    init(title: String, interactor: Interactor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
        self.title = title
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.green
    }

}
