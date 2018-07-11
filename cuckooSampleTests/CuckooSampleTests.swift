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
//    private var cuckooExpectation: XCTestExpectation!
//    private var joyExpectation: XCTestExpectation!

    private let mock = MockCuckooGenerator()
    
    lazy var viewModel = {
        ViewModel(cuckooGenerator: self.mock)
    }()
    
    override func setUp() {
        super.setUp()
        
        angryExpectation = self.expectation(description: "angryExpectation")
//        cuckooExpectation = self.expectation(description: "cuckooExpectation")
//        joyExpectation = self.expectation(description: "joyExpectation")
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    /// cuckooがGenerateしたstubで設定したthenReturnの文字列がdelegateにそのまま引き継がれる事を確認する
    func testNormalStubbing() {
        stub(mock) { mock in
            // 引数が何であっても "buhyyyyy" を返却する
            when(mock.generate(any() , type: any())).thenReturn("buhyyyyy")
        }
        
        viewModel.delegate = self
        viewModel.tapAngryButton("")
        
        wait(for: [angryExpectation], timeout: 1)
    }
    
    /// 2回目のtapAngryButton"" で失敗する(2回目はuryyyyyが返却されるため
    func testMultipleReturnStub() {
        stub(mock) { mock in
            // 引数が何であっても "buhyyyyy" を返却する. 2回目にコールされた場合には"uryyyyy"を返却する
            when(mock.generate(any() , type: any())).thenReturn("buhyyyyy").thenReturn("uryyyyy")
        }
        
        viewModel.delegate = self
        viewModel.tapAngryButton("") // １回目は buhyyyyが返却される -> テストが通る
        viewModel.tapAngryButton("") // ２回めは uryyyyyが返却される -> テストがこける

        wait(for: [angryExpectation], timeout: 1)
    }
    
    /// stubのOverrideの確認 2つ同じメソッドに対してstubを仕込むとどうなるか
    /// 1回目は "be" で any() にマッチするので buhyyyyになる
    /// 2回目は "cuckoo" で "cuhoo" にマッチするので cuckoooooになる
    /// stubは上書きされるわけではなく、共存する
    func testOrverrideStub() {
        stub(mock) { mock in
            // 引数が何であっても "buhyyyyy" を返却する.
            when(mock.generate(any() , type: any())).thenReturn("buhyyyyy")
            // 引数がcuckooだったら、cuckoooooを返却する
            when(mock.generate("cuckoo" , type: any())).thenReturn("cuckooooo")
        }
        
        viewModel.delegate = self
        viewModel.tapAngryButton("be")
        viewModel.tapAngryButton("cuckoo")

        wait(for: [angryExpectation], timeout: 1)
    }
    
    /// verifyとneverの動作テスト
    /// angryCuckooを叩いているので、.angryは１回目に叩かれ.joyは叩かれていない事を確認する
    func testVeryfyAndNever() {
        stub(mock) { mock in
            // 引数が何であっても "buhyyyyy" を返却する
            when(mock.generate(any() , type: any())).thenReturn("buhyyyyy")
        }

        viewModel.delegate = self
        viewModel.tapAngryButton("")

        wait(for: [angryExpectation], timeout: 1)
        verify(mock, times(1)).generate(anyString(), type: equal(to: CuckooType.angry))
        verify(mock, never()).generate(anyString(), type: equal(to: CuckooType.joy))
    }

    
    

}

extension CuckooSampleTests: ViewModelDelegate {
    // MARK: Delegate
    func viewModel(_ vm: ViewModel, shoudShowCuckooLabel cuckoo: String) {
        XCTAssertEqual(cuckoo, "buhyyyyy")
//        cuckooExpectation.fulfill()
    }
    
    func viewModel(_ vm: ViewModel, shoudShowAngryLabel cuckoo: String) {
        XCTAssertEqual(cuckoo, "buhyyyyy")
        angryExpectation.fulfill()
    }
    
    func viewModel(_ vm: ViewModel, shoudShowJoyLabel cuckoo: String) {
        XCTAssertEqual(cuckoo, "buhyyyyy")
//        joyExpectation.fulfill()
    }
}
    
