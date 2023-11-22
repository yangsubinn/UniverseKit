//
//  File.swift
//  
//
//  Created by 양수빈 on 2023/01/02.
//

import UIKit

public struct FontType {
    public static let regular = "Pretendard-Regular"
    public static let medium = "Pretendard-Medium"
    public static let semibold = "Pretendard-Semibold"
    public static let bold = "Pretendard-Bold"
}

public extension UIFont {
    @objc class func regularFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: FontType.regular, size: size)!
    }
    
    @objc class func mediumFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: FontType.medium, size: size)!
    }
    
    @objc class func boldFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: FontType.bold, size: size)!
    }
    
    @objc class func semiBoldFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: FontType.semibold, size: size)!
    }
}
