//
//  PokemonPageViewController.swift
//  Presentation
//
//  Created by kanda_yuki on 2020/06/16.
//

import UIKit

protocol PokemonPageView: AnyObject {}

// MARK: - vars
final class PokemonPageViewController: UIPageViewController {
    var presenter: PokemonPagePresenter!
}

// MARK: - Life cycle
extension PokemonPageViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setViewControllers([self.presenter.getPage()], direction: .forward, animated: false, completion: nil)
        self.dataSource = self
        self.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)

        self.setViewControllers([self.presenter.getPage()], direction: .forward, animated: false, completion: nil)
        self.dataSource = nil
        self.dataSource = self
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
}

// MARK: - UIPageViewControllerDataSource
extension PokemonPageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return self.presenter.changePageBackward(vc: viewController)
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return self.presenter.changePageForward(vc: viewController)
    }
}

// MARK: - UIPageViewControllerDelegate
extension PokemonPageViewController: UIPageViewControllerDelegate {

    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {

        guard completed else { return }
        if
            let viewController = self.viewControllers?.first as? PokemonDetailViewController,
        {
            self.presenter.updateNumber(from: viewController.presenter.number)
        }
    }
}

// MARK: - PokemonPageView
extension PokemonPageViewController: PokemonPageView {}
