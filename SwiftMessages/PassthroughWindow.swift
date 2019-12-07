//
//  PassthroughWindow.swift
//  SwiftMessages
//
//  Created by Timothy Moose on 8/5/16.
//  Copyright © 2016 SwiftKick Mobile LLC. All rights reserved.
//

import UIKit
//自定义一个Window
class PassthroughWindow: UIWindow {

    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        // iOS has started inserting it's own views into the window in some
        // cases, so we need to ignore touches on those view by starting the
        // hit test on the designated `hitTestView`.
        let view = hitTestView?.hitTest(point, with: event)
        return view == self ? nil : view
    }

    init(hitTestView: UIView, frame: CGRect) {
        self.hitTestView = hitTestView
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //weak
    private weak var hitTestView: UIView?
}
