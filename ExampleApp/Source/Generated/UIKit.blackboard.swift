//
//  UIKit.blackboard.swift
//
//  This file is automatically generated; do not modify.
//

import UIKit

extension UICollectionView {
    
    final func dequeueReusableCell<T>(withReuseIdentifier identifier: String, for indexPath: IndexPath, _ initialize: ((_ photoCell: T) -> Void)? = nil) -> T {
        let collectionViewCell = dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! T
        initialize?(collectionViewCell)
        return collectionViewCell
    }
    
}

extension UITableView {
    
    final func dequeueReusableCell<T>(withIdentifier identifier: String, for indexPath: IndexPath, _ initialize: ((_ cell: T) -> Void)? = nil) -> T {
        let tableViewCell = dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! T
        initialize?(tableViewCell)
        return tableViewCell
    }
    
}

extension UIViewController {
    
    // MARK: - Instantiate
    
    final class func instantiateViewController<T>(from storyboard: UIStoryboard, identifier: String, _ initialize: ((_ viewController: T) -> Void)? = nil) -> T {
        let viewController = storyboard.instantiateViewController(withIdentifier: identifier) as! T
        initialize?(viewController)
        return viewController
    }
    
    final class func instantiateNavigationController<T>(from storyboard: UIStoryboard, identifier: String, _ initialize: ((_ viewController: T) -> Void)? = nil) -> UINavigationController {
        let navigationController = storyboard.instantiateViewController(withIdentifier: identifier) as! UINavigationController
        let viewController = navigationController.viewControllers.first as! T
        initialize?(viewController)
        return navigationController
    }
    
    // MARK: - Perform Segue
    
    class SegueInitialization {
        
        typealias Block = (UIViewController) -> Void
        
        let block: Block
        
        init(block: @escaping Block) {
            self.block = block
        }
        
    }
    
    final func performViewControllerSegue<T: UIViewController>(_ identifier: String, _ initialize: ((T) -> Void)? = nil) {
        var segueInitialization: SegueInitialization?
        if let initialize = initialize {
            segueInitialization = SegueInitialization {
                let viewController = $0 as! T
                initialize(viewController)
            }
        }
        performSegue(withIdentifier: identifier, sender: segueInitialization)
    }
    
    final func performNavigationControllerSegue<T: UIViewController>(_ identifier: String, _ initialize: ((T) -> Void)? = nil) {
        var segueInitialization: SegueInitialization?
        if let initialize = initialize {
            segueInitialization = SegueInitialization {
                let navigationController = $0 as! UINavigationController
                let viewController = navigationController.viewControllers.first as! T
                initialize(viewController)
            }
        }
        performSegue(withIdentifier: identifier, sender: segueInitialization)
    }
    
}