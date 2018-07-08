//
//  CuckooGenerator.swift
//  cuckooSample
//
//  Created by gakuburugaku on 2018/07/09.
//  Copyright © 2018年 example. All rights reserved.
//

import Foundation

internal enum CuckooType {
    case joy
    case angry
    case piyo
    case crow
    case normal
}

internal class CuckooGenerator {
    
    func generate(_ source: String, type: CuckooType) -> String {
        switch type {
        case .angry:
            return source + "!!!!!!!!!!!"
        case .joy:
            return source + "^_^"
        case .normal:
            return source
        default:
            return "ぴよぴよカアカア..."
        }
    }
    
}
