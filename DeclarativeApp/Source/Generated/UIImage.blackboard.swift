//
//  UIImage.blackboard.swift
//
//  This file is automatically generated; do not modify.
//

import UIKit

fileprivate let bundle: Bundle = {
    class Object: NSObject { }
    return Bundle(for: Object.self)
}()

public extension ImageAsset {
    var image: UIImage { return UIImage(asset: self) }
}

public extension UIImage {
    
    convenience init(asset imageAsset: ImageAsset, compatibleWith traitCollection: UITraitCollection? = nil) {
        self.init(named: imageAsset.rawValue, in: bundle, compatibleWith: traitCollection)!
    }
    
    static var button: UIImage { return UIImage(asset: ImageAsset.button) }
    static var greenPaperClip: UIImage { return UIImage(asset: ImageAsset.greenPaperClip) }
    static var greenPencil: UIImage { return UIImage(asset: ImageAsset.greenPencil) }
    static var redCup: UIImage { return UIImage(asset: ImageAsset.redCup) }
    static var redStapler: UIImage { return UIImage(asset: ImageAsset.redStapler) }
    static var silverPaperClip: UIImage { return UIImage(asset: ImageAsset.silverPaperClip) }
    static var whiteDice: UIImage { return UIImage(asset: ImageAsset.whiteDice) }
    
}