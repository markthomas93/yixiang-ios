//
//  ViewController.swift
//  yixiang-ios
//
//  Created by Ai on 2020/02/23.
//  Copyright © 2020 Ai. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

let isIphoneX: Bool = {
    // iPhoneXはiOS11からなのでそれ以外の端末は除外します
    guard #available(iOS 11.0, *),
        UIDevice.current.userInterfaceIdiom == .phone else {
            return false
    }
    let nativeSize = UIScreen.main.nativeBounds.size
    let (w, h) = (nativeSize.width, nativeSize.height)
    let (d1, d2): (CGFloat, CGFloat) = (1125.0, 2436.0)

    return (w == d1 && h == d2) || (w == d2 && h == d1)
}()

