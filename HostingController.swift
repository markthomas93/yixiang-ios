//
//  HostingController.swift
//  yixiang-ios
//
//  Created by Ai on 2020/04/11.
//  Copyright © 2020 Ai. All rights reserved.
//
import SwiftUI

class MyHostingController: UIHostingController<AnyView> {
    var statusBarStyle: UIStatusBarStyle = .default {
        didSet {
            self.setNeedsStatusBarAppearanceUpdate()
        }
    }
    @objc override var preferredStatusBarStyle: UIStatusBarStyle {
        return statusBarStyle
    }
}
