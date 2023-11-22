//
//  File.swift
//  
//
//  Created by 양수빈 on 2023/01/02.
//

import UIKit

import SnapKit

public class CustomButton: UIButton {
    
    // MARK: - Initialize

    public init(title: String, type: CustomButtonType, size: CustomButtonSize) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.setDefaultUI()
        self.setUI(type: type)
        self.setState(type)
        self.setLayout(size: size)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Methods
    
    @discardableResult
    public func changeState(_ type: CustomButtonType) -> Self {
        self.setState(type)
        self.setUI(type: type)
        return self
    }
    
    // MARK: - UI & Layout
    
    private func setState(_ type: CustomButtonType) {
        self.isEnabled = (type == .disabled) ? false : true
    }
    
    private func setDefaultUI() {
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = .semiBoldFont(ofSize: 16)
        self.titleLabel?.textAlignment = .center
    }
    
    private func setUI(type: CustomButtonType) {
        switch type {
        case .disabled:
            self.backgroundColor = .lightGray100
            self.setTitleColor(.white, for: .normal)
        case .abled:
            self.backgroundColor = .mainBlue
            self.setTitleColor(.white, for: .normal)
        case .ended:
            self.backgroundColor = .subOrange
            self.setTitleColor(.white, for: .normal)
        case .normal:
            self.backgroundColor = .white
            self.setTitleColor(.black, for: .normal)
            self.layer.borderWidth = 1
            self.layer.borderColor = UIColor.gray100.cgColor
        }
    }
    
    private func setLayout(size: CustomButtonSize) {
        var height: CGFloat = 0
        var width: CGFloat = 0
        self.layer.cornerRadius = 30
        
        switch size {
        case .large:
            height = 58
        case .medium:
            height = 58
            width = 168
        case .small:
            height = 44
            width = 142
            self.layer.cornerRadius = 22
        }
        
        self.snp.makeConstraints { make in
            make.height.equalTo(height)
            if size != .large { make.width.equalTo(width) }
        }
    }
}
