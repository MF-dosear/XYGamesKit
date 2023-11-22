//
//  YXManager.swift
//  Pods
//
//  Created by Paul on 2023/11/22.
//

import Foundation

public class YXManager: NSObject {
    
    @objc public class func createViewController() -> UIViewController{
        let vc = UIViewController()
        vc.view.backgroundColor = .blue
        return vc
    }
}
