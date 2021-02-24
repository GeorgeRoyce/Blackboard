//
//  NSDataAsset.blackboard.swift
//
//  This file is automatically generated; do not modify.
//

import UIKit

private let bundle: Bundle = {
    class Object: NSObject { }
    return Bundle(for: Object.self)
}()

public extension DataAsset {
    var dataAsset: NSDataAsset { NSDataAsset(asset: self) }
    var data: Data { dataAsset.data }
}

public extension NSDataAsset {
    
    convenience init(asset dataAsset: DataAsset) {
        self.init(name: dataAsset.rawValue, bundle: bundle)!
    }
    
}

public extension Data {
    
    init(asset dataAsset: DataAsset) {
        self = dataAsset.data
    }
    
}
