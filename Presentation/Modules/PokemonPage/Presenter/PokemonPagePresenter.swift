//
//  PokemonPagePresenter.swift
//  Presentation
//
//  Created by kanda_yuki on 2020/06/16.
//

import UIKit

protocol PokemonPagePresenter: AnyObject {
    func getPage() -> UIViewController
    func changePageBackward(vc: UIViewController) -> UIViewController?
    func changePageForward(vc: UIViewController) -> UIViewController?
}

final class PokemonPagePresenterImpl: PokemonPagePresenter {

    weak var view: PokemonPageView?
    var wireframe: PokemonPageWireframe!

    private var number: Int
    private let count: Int

    init(number: Int, count: Int) {
        self.number = number
        self.count = count
    }

    func getPage() -> UIViewController {
        let vc = PokemonDetailBuilder.build(number: self.number)
        return vc
    }

    func changePage(_ forward: Bool?) -> UIViewController {
        self.number += addPageCount(forward)
        let vc = PokemonDetailBuilder.build(number: self.number)
        return vc
    }

    func changePageBackward(vc: UIViewController) -> UIViewController? {
        if 0 < self.number && self.number <= count - 1 {
            return self.changePage(false)
        }

        return nil
    }

    func changePageForward(vc: UIViewController) -> UIViewController? {
        if 0 <= self.number && self.number < count - 1 {
            return self.changePage(true)
        }
        return nil
    }
}

extension PokemonPagePresenter {

    func addPageCount(_ addOrMinusPage: Bool?) -> Int {
        guard let doCount = addOrMinusPage else {
            return 0
        }

        if doCount {
            return 1
        } else {
            return -1
        }
    }
}
