//
//  cuckooSampleTests.swift
//  cuckooSampleTests
//
//  Created by gakuburugaku on 2018/07/09.
//  Copyright © 2018年 example. All rights reserved.
//

import XCTest
import Cuckoo
@testable import cuckooSample

class CuckooSampleTests: XCTestCase {
    
    // MARK: - Tests
    private var angryExpectation: XCTestExpectation!
    
    private let mock = MockCuckooGenerator()
    
    lazy var viewModel = {
        ViewModel(cuckooGenerator: self.mock)
    }()
    
    override func setUp() {
        super.setUp()
        
        angryExpectation = self.expectation(description: "angryExpectation")
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {

        stub(mock) { mock in
            Cuckoo.when(mock.generate(any() , type: Cuckoo.any())).thenReturn("buhyyyyy")
        }
        
        viewModel.delegate = self
        viewModel.tapAngryButton("")
        
        wait(for: [angryExpectation], timeout: 1)
    }
    
    
}

extension CuckooSampleTests: ViewModelDelegate {
    // MARK: Delegate
    func viewModel(_ vm: ViewModel, shoudShowCuckooLabel cuckoo: String) {
        XCTAssertEqual(cuckoo, "buhyyyyy")
        angryExpectation.fulfill()
        
    }
    
    func viewModel(_ vm: ViewModel, shoudShowAngryLabel cuckoo: String) {
        XCTAssertEqual(cuckoo, "buhyyyyy")
        angryExpectation.fulfill()
    }
    
    func viewModel(_ vm: ViewModel, shoudShowJoyLabel cuckoo: String) {
        XCTAssertEqual(cuckoo, "buhyyyyy")
        angryExpectation.fulfill()
    }
}
    
