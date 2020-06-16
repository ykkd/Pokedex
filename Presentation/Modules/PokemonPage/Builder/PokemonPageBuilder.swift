//
//  PokemonPageBuilder.swift
//  Presentation
//
//  Created by kanda_yuki on 2020/06/16.
//

import UIKit

enum PokemonPageBuilder {

    static func build() -> UIPageViewController {
        let view = PokemonPageViewController.instantiate()
        let presenter = PokemonPagePresenterImpl()
        let wireframe = PokemonPageWireframeImpl()

        view.presenter = presenter

        presenter.view = view
        presenter.wireframe = wireframe

        wireframe.viewController = view

        return view
    }
}
