//
//  HostingView.swift
//  HostingView
//
//  Created by LC on 2025/2/14.
//

import UIKit
import SwiftUI

/// A UIKit view that manages a SwiftUI view hierarchy.
open class HostingView<Content: View>: UIView {
    private var hostingController: UIHostingController<Content>
    
    /// The root view of the SwiftUI view hierarchy managed by this view
    public var rootView: Content {
        didSet {
            hostingController.view.removeFromSuperview()
            hostingController = UIHostingController(rootView: rootView)
            setupHostingController()
        }
    }
    
    /// Creates a hosting view object that wraps the specified SwiftUI view.
    ///
    /// - Parameter rootView: The root view of the SwiftUI view hierarchy that
    ///   you want to manage using the hosting view.
    ///
    /// - Returns: A `HostingView` object initialized with the
    ///   specified SwiftUI view.
    public init(rootView: Content) {
        self.rootView = rootView
        self.hostingController = UIHostingController(rootView: rootView)
        super.init(frame: .zero)
        setupHostingController()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupHostingController() {
        hostingController.view.backgroundColor = .clear
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(hostingController.view)
        
        NSLayoutConstraint.activate([
            hostingController.view.topAnchor.constraint(equalTo: topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: bottomAnchor),
            hostingController.view.leadingAnchor.constraint(equalTo: leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
}
