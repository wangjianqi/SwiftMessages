//
//  PassthroughView.swift
//  SwiftMessages
//
//  Created by Timothy Moose on 8/5/16.
//  Copyright © 2016 SwiftKick Mobile LLC. All rights reserved.
//

import UIKit
//转移：添加点击事件
class PassthroughView: UIControl {

    var tappedHander: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        initCommon()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initCommon()
    }

    private func initCommon() {
        addTarget(self, action: #selector(tapped), for: .touchUpInside)
    }

    @objc func tapped() {
        tappedHander?()
    }
    //当有点击事件才响应
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let view = super.hitTest(point, with: event)
        return view == self && tappedHander == nil ? nil : view
    }
}
