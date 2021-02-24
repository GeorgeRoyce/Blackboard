//
//  SymbolUIImage.blackboard.swift
//
//  This file is automatically generated; do not modify.
//

import UIKit

@available(iOS 13.0, *)
public extension SymbolAsset {
    var image: UIImage? { UIImage(symbol: self) }
}

@available(iOS 13.0, *)
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
    
    @available(iOS 14.0, *)
    static var caseSymbol: UIImage { UIImage(symbol: .caseSymbol) }
    @available(iOS 14.0, *)
    static var caseSymbolFill: UIImage { UIImage(symbol: .caseSymbolFill) }
    static var chevronDown: UIImage { UIImage(symbol: .chevronDown) }
    static var chevronUp: UIImage { UIImage(symbol: .chevronUp) }
    @available(iOS 14.0, *)
    static var dieFace1: UIImage { UIImage(symbol: .dieFace1) }
    @available(iOS 14.0, *)
    static var dieFace4: UIImage { UIImage(symbol: .dieFace4) }
    @available(iOS 14.2, *)
    static var infinityCircleFill: UIImage { UIImage(symbol: .infinityCircleFill) }
    static var minusCircleFill: UIImage { UIImage(symbol: .minusCircleFill) }
    static var number14SquareFill: UIImage { UIImage(symbol: .number14SquareFill) }
    static var person: UIImage { UIImage(symbol: .person) }
    static var person2: UIImage { UIImage(symbol: .person2) }
    static var plusCircleFill: UIImage { UIImage(symbol: .plusCircleFill) }
    static var repeatSymbol: UIImage { UIImage(symbol: .repeatSymbol) }
    @available(iOS 14.2, *)
    static var repeatSymbolCircle: UIImage { UIImage(symbol: .repeatSymbolCircle) }
    static var returnSymbol: UIImage { UIImage(symbol: .returnSymbol) }
    
}
