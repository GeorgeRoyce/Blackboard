//
//  Color.blackboard.swift
//
//  This file is automatically generated; do not modify.
//

import SwiftUI

fileprivate let bundle: Bundle = {
    class Object: NSObject { }
    return Bundle(for: Object.self)
}()

@available(iOS 13.0, *)
public extension Color {
    
    init(asset colorAsset: ColorAsset) {
        self.init(colorAsset.rawValue, bundle: bundle)
    }
    
    static var absoluteZero: Color { return Color(asset: ColorAsset.absoluteZero) }
    static var bisque: Color { return Color(asset: ColorAsset.bisque) }
    static var charcoal: Color { return Color(asset: ColorAsset.charcoal) }
    static var darkOliveGreen: Color { return Color(asset: ColorAsset.darkOliveGreen) }
    static var desire: Color { return Color(asset: ColorAsset.desire) }
    static var emerald: Color { return Color(asset: ColorAsset.emerald) }
    static var empty: Color { return Color(asset: ColorAsset.empty) }
    static var firebrick: Color { return Color(asset: ColorAsset.firebrick) }
    static var fluorescentBlizzardBlue: Color { return Color(asset: ColorAsset.fluorescentBlizzardBlue) }
    static var fluorescentMagicMint: Color { return Color(asset: ColorAsset.fluorescentMagicMint) }
    static var fluorescentRadicalRed: Color { return Color(asset: ColorAsset.fluorescentRadicalRed) }
    static var maroon: Color { return Color(asset: ColorAsset.maroon) }
    static var night: Color { return Color(asset: ColorAsset.night) }
    
}