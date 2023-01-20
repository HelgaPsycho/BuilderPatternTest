//
//  CatalogInteractor.swift
//  BuilderPatternTest
//
//  Created by Ольга Егорова on 19.01.2023.
//

import Foundation

protocol Interactor {
    init(presenter: Presenter)
}

class CatalogInteractor: Interactor {
    
    //выполняет бизнес - логику
    
    var presenter: Presenter!
    
    required init(presenter: Presenter) {
        self.presenter = presenter
        //dependency injection - интерактор принимает презентер
        //делается для того, чтобы соединять протоколы из вне (делать инверсию) и чтобы было удобно тестировать (можно запихать в presenter "заглушку")
    }
    
    
}
