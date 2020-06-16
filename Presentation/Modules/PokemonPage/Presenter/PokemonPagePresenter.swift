//
//  PokemonPagePresenter.swift
//  Presentation
//
//  Created by kanda_yuki on 2020/06/16.
//

import UIKit

protocol PokemonPagePresenter: AnyObject {
    func getPage() -> UIViewController
}

final class PokemonPagePresenterImpl: PokemonPagePresenter {
    weak var view: PokemonPageView?
    var wireframe: PokemonPageWireframe!

    private let number: Int
    private let count: Int

    init(number: Int, count: Int) {
        self.number = number
        self.count = count
    }

    func getPage() -> UIViewController {
        let vc = PokemonDetailBuilder.build(number: self.number)
        return vc
    }
}
