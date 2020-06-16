//
//  PokemonPageViewController.swift
//  Presentation
//
//  Created by kanda_yuki on 2020/06/16.
//

import UIKit

protocol PokemonPageView: AnyObject {}

final class PokemonPageViewController: UIPageViewController {

    var presenter: PokemonPagePresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setViewControllers([self.presenter.getPage(nil)], direction: .forward, animated: true, completion: nil)
        self.dataSource = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
}

extension PokemonPageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        self.presenter.changePageBackward(vc: viewController)
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        self.presenter.changePageForward(vc: viewController)
    }
}

extension PokemonPageViewController: PokemonPageView {}
