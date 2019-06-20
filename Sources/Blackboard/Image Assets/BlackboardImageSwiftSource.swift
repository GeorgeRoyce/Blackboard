//
// Copyright (c) 2019 Nathan E. Walczak
//
// MIT License
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

import Foundation

extension SwiftSource {
    
    func appendUIImages(images: [BlackboardImage]) {
        appendHeading(filename: Filename.UIImage, modules: ["UIKit"], includeBundle: true)
        append("fileprivate extension UIImage") {
            append()
            append("convenience init!(identifier: ImageAssetName)") {
                append("self.init(named: identifier.rawValue, in: bundle, compatibleWith: nil)")
            }
            append()
        }
        append()
        append("enum ImageAssetName: String") {
            append()
            images.forEach { image in
                append("case \(image.caseName) = \"\(image.name)\"")
            }
            append()
            append("var image: UIImage") {
                append("return UIImage(identifier: self)")
            }
            append()
        }
        append()
        append("extension UIImage") {
            append()
            images.forEach(appendUIImage)
        }
        append()
    }
    
    func appendUIImage(image: BlackboardImage) {
        append("static var \(image.functionName): UIImage") {
            append("return UIImage(identifier: .\(image.caseName))")
        }
        append()
    }
    
}
