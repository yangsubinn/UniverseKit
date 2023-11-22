//
//  Toast.swift
//  
//
//  Created by Yi Joon Choi on 2023/01/04.
//

import Foundation
import UIKit
import SnapKit

/*
 사용법
 Toast를 사용할 각 viewcontroller에서
 showToast(message: String, bottom: Int) 를 불러오면 됩니다.
 
 message: 토스트 내용
 bottom: safeArea로 부터 얼마나 떨어질지
 
 */

extension UIViewController{
    public func showToast(message: String, bottom: Int){
      Toast.show(message: message, controller: self, bottom: bottom)
  }
}

final class Toast {
    static func show(message: String, controller: UIViewController, bottom: Int) {
        
        let toastContainer = UIView()
        let toastLabel = UILabel()
        
        toastContainer.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        toastContainer.alpha = 1
        toastContainer.layer.cornerRadius = 5
        toastContainer.clipsToBounds = true
        toastContainer.isUserInteractionEnabled = false
        
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center
        toastLabel.font = .mediumFont(ofSize: 14)
        toastLabel.text = message
        toastLabel.clipsToBounds = true
        toastLabel.numberOfLines = 0
        toastLabel.sizeToFit()
        
        toastContainer.addSubview(toastLabel)
        controller.view.addSubview(toastContainer)
        
        toastContainer.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.leading.equalToSuperview().inset(16)
            $0.bottom.equalTo(controller.view.safeAreaLayoutGuide).inset(bottom)
            $0.height.equalTo(40)
        }
        
        toastLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            toastContainer.alpha = 1.0
        }, completion: { _ in
            UIView.animate(withDuration: 0.4, delay: 1.0, options: .curveEaseOut, animations: {
                toastContainer.alpha = 0.0
            }, completion: {_ in
                toastContainer.removeFromSuperview()
            })
        })
    }
}

