//
//  SymbolUIImage.blackboard.swift
//
//  This file is automatically generated; do not modify.
//

import UIKit

public extension SymbolAsset {
    var image: UIImage? { UIImage(symbol: self) }
}

public extension UIImage {
    
    convenience init(symbol symbolAsset: SymbolAsset) {
        self.init(systemName: symbolAsset.rawValue)!
    }
    
    convenience init(symbol symbolAsset: SymbolAsset, withConfiguration configuration: UIImage.Configuration?) {
        self.init(systemName: symbolAsset.rawValue, withConfiguration: configuration)!
    }
    
    convenience init(symbol symbolAsset: SymbolAsset, compatibleWith traitCollection: UITraitCollection?) {
        self.init(systemName: symbolAsset.rawValue, compatibleWith: traitCollection)!
    }
    
    @available(iOS, introduced: 14.0, deprecated: 14.2, renamed: "symbolCharacterBookClosed")
    static var symbolABookClosed: UIImage { UIImage(symbol: .aBookClosed) }
    @available(iOS 14.0, *)
    static var symbolCase: UIImage { UIImage(symbol: .case) }
    @available(iOS 14.0, *)
    static var symbolCaseFill: UIImage { UIImage(symbol: .caseFill) }
    @available(iOS 14.2, *)
    static var symbolCharacterBookClosed: UIImage { UIImage(symbol: .characterBookClosed) }
    static var symbolChevronDown: UIImage { UIImage(symbol: .chevronDown) }
    static var symbolChevronUp: UIImage { UIImage(symbol: .chevronUp) }
    @available(iOS 14.0, *)
    static var symbolDieFace1: UIImage { UIImage(symbol: .dieFace1) }
    @available(iOS 14.0, *)
    static var symbolDieFace4: UIImage { UIImage(symbol: .dieFace4) }
    @available(iOS 14.2, *)
    static var symbolInfinityCircleFill: UIImage { UIImage(symbol: .infinityCircleFill) }
    static var symbolMinusCircleFill: UIImage { UIImage(symbol: .minusCircleFill) }
    static var symbolNumber14SquareFill: UIImage { UIImage(symbol: .number14SquareFill) }
    static var symbolPerson: UIImage { UIImage(symbol: .person) }
    static var symbolPerson2: UIImage { UIImage(symbol: .person2) }
    static var symbolPlusCircleFill: UIImage { UIImage(symbol: .plusCircleFill) }
    static var symbolRepeat: UIImage { UIImage(symbol: .repeat) }
    @available(iOS 14.2, *)
    static var symbolRepeatCircle: UIImage { UIImage(symbol: .repeatCircle) }
    static var symbolReturn: UIImage { UIImage(symbol: .return) }
    
}
