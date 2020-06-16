//
//  PokemonPagePresenter.swift
//  Presentation
//
//  Created by kanda_yuki on 2020/06/16.
//

import UIKit

protocol PokemonPagePresenter: AnyObject {
    func viewDidLoad()
}

final class PokemonPagePresenterImpl: PokemonPagePresenter {
    weak var view: PokemonPageView?
    var wireframe: PokemonPageWireframe!

    init() {}

    func viewDidLoad() {}
}
