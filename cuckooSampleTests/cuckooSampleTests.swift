//
//  cuckooSampleTests.swift
//  cuckooSampleTests
//
//  Created by gakuburugaku on 2018/07/09.
//  Copyright © 2018年 example. All rights reserved.
//

import XCTest
@testable import Cuckoo
@testable import cuckooSample

class cuckooSampleTests: XCTestCase {
    
    let mock = MockCuckooGenerator()
    
    lazy var viewModel = {
        ViewModel(cuckooGenerator: self.mock)
    }
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        then {
            
        }
    }
    
    
}
