//
//  File.swift
//  
//
//  Created by 양수빈 on 2023/01/02.
//

import UIKit

public enum Icon: String {
    
    // Button Asset
    case btnApple = "btnApple"
    case btnKakao = "btnKakao"
    case btnNaver = "btnNaver"
    case btnBackward = "btnBackward"
    case btnDelete = "btnDelete"
    case btnForward = "btnForward"
    case btnPlus = "btnPlus"
    case btnPlay = "btnPlay"
    
    // Icon Asset
    case icBack = "ic_back"
    case icClose = "ic_close"
    case icChevronRight = "icChevronRight"
    case icBall = "icBall"
    case icBallActive = "icBallActive"
    case icBallInactive = "icBallInactive"
    case icTrophyActive = "icTrophyActive"
    case icTrophyInactive = "icTrophyInactive"
    case icGraphActive = "icGraphActive"
    case icGraphInactive = "icGraphInactive"
    case icHidden = "icHidden"
    case icMyActive = "icMyActive"
    case icMyInactive = "icMyInactive"
    case icMywithBadge = "icMyBadge"
    case icProfileBlack = "icProfileBlack"
    case icProfileBlue = "icProfileBlue"
    case icPin = "icPin"
    case icPinInactive = "icPinInactive"
    case icPinPlace = "icPinPlace"
    case icEnter = "icEnter"
    case icCheckBox = "icCheckBox"
    case icCheckBocInactive = "icCheckBoxInactive"
    case icEmptyOwl = "icEmptyOwl"
    case icRecodingOwl = "icRecodingOwl"
    case imgBubble = "imgBubble"
    
    // Badge Asset
    case badgeAttendence = "badgeAttendence"
    case badgeAttendenceInacvite = "badgeAttendenceInactive"
    case badgeMaster = "badgeMaster"
    case badgeMasterInactive = "badgeMasterInactive"
    case badgeWelcome = "badgeWelcome"
    case badgeWelcomeInactive = "badgeWelcomeInactive"
    
    // Logo Asset
    case logo = "logo"
    
    // League Banner Image
    case imgLeague = "imgLeague"
    case imgLeagueDimmed = "imgLeagueDimmed"
    
    // background Asset
    case bgWhiteGradient = "bgWhiteGradient"
    
    // Dummy Image Asset
    case imgCourt = "imgCourt"
}

public extension Icon {
    var image: UIImage {
        guard let image = UIImage(named: self.rawValue, in: .module, compatibleWith: nil) else {
            return UIImage()
        }
        return image
    }
}

public extension UIImage {
  convenience init(asset: Icon) {
    self.init(named: asset.rawValue)!
  }
}

