//
//  PokemonVerticalScrollWireframe.swift
//  Presentation
//
//  Created by kanda_yuki on 2020/06/16.
//

import UIKit

protocol PokemonPageWireframe: TransitToPokemonDetailWireframe {}

final class PokemonPageWireframeImpl: PokemonPageWireframe {

    weak var viewController: UIViewController?
}
