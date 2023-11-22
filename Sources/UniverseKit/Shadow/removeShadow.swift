//
//  removeShadow.swift
//  
//
//  Created by 양수빈 on 2023/01/06.
//

import UIKit

extension UIView {
    @discardableResult
    public func removeShadow() -> Self {
        self.layer.shadowOpacity = 0
        return self
    }
}
