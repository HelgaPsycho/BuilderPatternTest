//
//  CatalogBuilder.swift
//  BuilderPatternTest
//
//  Created by Ольга Егорова on 19.01.2023.
//

import Foundation
import UIKit

//Catalog - это экран

class CatalogBuilder: ModuleBuilder {
    
    var title: String?
    
    func setTitle(_ title: String) -> CatalogBuilder {
        //это не синглтон
        self.title = title
        //просто присвоили title
        return self
    }
    
    func build() -> UIViewController {
        guard let title = title else {fatalError("Вы должны добавить title")}
        
        let presenter = CatalogPresenter()
        let interactor = CatalogInteractor(presenter: presenter) //dependency injection
        let controller = CatalogViewController(title: title, interactor: interactor) //dependency injection
        presenter.viewController = controller
        //замкнули круг зависимостей
        //посколько CatalogViewController наследуется от контроллера, его можно вернуть таким образом:
        return controller
    }
    
}

