//
//  CatalogPresenter.swift
//  BuilderPatternTest
//
//  Created by Ольга Егорова on 19.01.2023.
//

import Foundation

protocol Presenter {
    var messageInfo: String {get}
}

class CatalogPresenter: Presenter {
    weak var viewController: CatalogViewController?
    //ссылка wear для предотвращения утечки памяти
    //Presenter-у требуется VC, чтобы иметь возможность передать ему полномочия
    //предоставлять данные будет прозентер, поэтому ему нужен доступ к контроллеру. Презентер знает все методы VС, т.е. контроллер может полностью передать управление презентеру
    
    var messageInfo = "Создавать ViewModel для представления"
}
