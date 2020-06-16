//
//  PokemonPageBuilder.swift
//  Presentation
//
//  Created by kanda_yuki on 2020/06/16.
//

import UIKit

enum PokemonPageBuilder {

    static func build(number: Int, count: Int) -> UIViewController {
        let view = PokemonPageViewController.instantiate()
        let presenter = PokemonPagePresenterImpl(number: number, count: count)
        let wireframe = PokemonPageWireframeImpl()

        view.presenter = presenter

        presenter.view = view
        presenter.wireframe = wireframe

        wireframe.viewController = view

        return view
    }
}
