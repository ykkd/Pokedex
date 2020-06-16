//
//  TransitToPokemonPageWireframe.swift
//  Presentation
//
//  Created by kanda_yuki on 2020/06/16.
//

import UIKit

protocol TransitToPokemonPageWireframe: AnyObject {

    var viewController: UIViewController? { get }

    func pushPokemonPage(number: Int, count: Int)
}

extension TransitToPokemonPageWireframe {

    func pushPokemonPage(number: Int, count: Int) {
        let vc = PokemonPageBuilder.build(number: number, count: count)
        self.viewController?.navigationController?.pushViewController(vc, animated: true)
    }
}
