//
//  File.swift
//  
//
//  Created by 양수빈 on 2023/01/02.
//

import UIKit

public enum ShadowColorType {
    case black
    case gray
}

extension UIView {
    @discardableResult
    public func addShadow(type: ShadowColorType = .gray) -> Self {
        switch type {
        case .black:
            self.layer.shadowColor = UIColor.black.withAlphaComponent(0.15).cgColor
        case .gray:
            self.layer.shadowColor = UIColor.gray100.withAlphaComponent(0.15).cgColor
        }
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 15
        self.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        
        return self
    }
}
