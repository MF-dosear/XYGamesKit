//
//  Bundle.swift
//  NGSDK
//
//  Created by Paul on 2023/2/28.
//

import Foundation

extension Bundle {
    
    class func sdkBundle() -> Bundle?{
        
        return Bundle(for: XYGamesKit.classForCoder())
    }
}
