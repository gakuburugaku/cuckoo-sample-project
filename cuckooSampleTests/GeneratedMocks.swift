// MARK: - Mocks generated from file: cuckooSample/CuckooGenerator.swift at 2018-07-08 17:41:36 +0000

//
//  CuckooGenerator.swift
//  cuckooSample
//
//  Created by 中村岳 on 2018/07/09.
//  Copyright © 2018年 example. All rights reser
import Cuckoo
@testable import cuckooSample

import Foundation

class MockCuckooGenerator: CuckooGenerator, Cuckoo.ClassMock {
    typealias MocksType = CuckooGenerator
    typealias Stubbing = __StubbingProxy_CuckooGenerator
    typealias Verification = __VerificationProxy_CuckooGenerator
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    

    

    
    // ["name": "generate", "returnSignature": " -> String", "fullyQualifiedName": "generate(_: String, type: CuckooType) -> String", "parameterSignature": "_ source: String, type: CuckooType", "parameterSignatureWithoutNames": "source: String, type: CuckooType", "inputTypes": "String, CuckooType", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "source, type", "call": "source, type: type", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "source", type: "String", range: CountableRange(325..<341), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("type"), name: "type", type: "CuckooType", range: CountableRange(343..<359), nameRange: CountableRange(343..<347))], "returnType": "String", "isOptional": false, "stubFunction": "Cuckoo.ClassStubFunction"]
     override func generate(_ source: String, type: CuckooType)  -> String {
        
            return cuckoo_manager.call("generate(_: String, type: CuckooType) -> String",
                parameters: (source, type),
                superclassCall:
                    
                    super.generate(source, type: type)
                    )
        
    }
    

	struct __StubbingProxy_CuckooGenerator: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func generate<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ source: M1, type: M2) -> Cuckoo.ClassStubFunction<(String, CuckooType), String> where M1.MatchedType == String, M2.MatchedType == CuckooType {
	        let matchers: [Cuckoo.ParameterMatcher<(String, CuckooType)>] = [wrap(matchable: source) { $0.0 }, wrap(matchable: type) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCuckooGenerator.self, method: "generate(_: String, type: CuckooType) -> String", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_CuckooGenerator: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func generate<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ source: M1, type: M2) -> Cuckoo.__DoNotUse<String> where M1.MatchedType == String, M2.MatchedType == CuckooType {
	        let matchers: [Cuckoo.ParameterMatcher<(String, CuckooType)>] = [wrap(matchable: source) { $0.0 }, wrap(matchable: type) { $0.1 }]
	        return cuckoo_manager.verify("generate(_: String, type: CuckooType) -> String", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class CuckooGeneratorStub: CuckooGenerator {
    

    

    
     override func generate(_ source: String, type: CuckooType)  -> String {
        return DefaultValueRegistry.defaultValue(for: String.self)
    }
    
}


// MARK: - Mocks generated from file: cuckooSample/ViewModel.swift at 2018-07-08 17:41:36 +0000

//
//  ViewModel.swift
//  cuckooSample
//
//  Created by gakuburugaku on 2018/07/09.
//  Copyright © 2018年 example. All rights reserved.

import Cuckoo
@testable import cuckooSample

import Foundation

class MockViewModelDelegate: ViewModelDelegate, Cuckoo.ProtocolMock {
    typealias MocksType = ViewModelDelegate
    typealias Stubbing = __StubbingProxy_ViewModelDelegate
    typealias Verification = __VerificationProxy_ViewModelDelegate
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "viewModel", "returnSignature": "", "fullyQualifiedName": "viewModel(_: ViewModel, shoudShowCuckooLabel: String)", "parameterSignature": "_ vm: ViewModel, shoudShowCuckooLabel cuckoo: String", "parameterSignatureWithoutNames": "vm: ViewModel, cuckoo: String", "inputTypes": "ViewModel, String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "vm, cuckoo", "call": "vm, shoudShowCuckooLabel: cuckoo", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "vm", type: "ViewModel", range: CountableRange(233..<248), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("shoudShowCuckooLabel"), name: "cuckoo", type: "String", range: CountableRange(250..<285), nameRange: CountableRange(250..<270))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func viewModel(_ vm: ViewModel, shoudShowCuckooLabel cuckoo: String)  {
        
            return cuckoo_manager.call("viewModel(_: ViewModel, shoudShowCuckooLabel: String)",
                parameters: (vm, cuckoo),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "viewModel", "returnSignature": "", "fullyQualifiedName": "viewModel(_: ViewModel, shoudShowAngryLabel: String)", "parameterSignature": "_ vm: ViewModel, shoudShowAngryLabel cuckoo: String", "parameterSignatureWithoutNames": "vm: ViewModel, cuckoo: String", "inputTypes": "ViewModel, String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "vm, cuckoo", "call": "vm, shoudShowAngryLabel: cuckoo", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "vm", type: "ViewModel", range: CountableRange(306..<321), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("shoudShowAngryLabel"), name: "cuckoo", type: "String", range: CountableRange(323..<357), nameRange: CountableRange(323..<342))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func viewModel(_ vm: ViewModel, shoudShowAngryLabel cuckoo: String)  {
        
            return cuckoo_manager.call("viewModel(_: ViewModel, shoudShowAngryLabel: String)",
                parameters: (vm, cuckoo),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "viewModel", "returnSignature": "", "fullyQualifiedName": "viewModel(_: ViewModel, shoudShowJoyLabel: String)", "parameterSignature": "_ vm: ViewModel, shoudShowJoyLabel cuckoo: String", "parameterSignatureWithoutNames": "vm: ViewModel, cuckoo: String", "inputTypes": "ViewModel, String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "vm, cuckoo", "call": "vm, shoudShowJoyLabel: cuckoo", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "vm", type: "ViewModel", range: CountableRange(378..<393), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("shoudShowJoyLabel"), name: "cuckoo", type: "String", range: CountableRange(395..<427), nameRange: CountableRange(395..<412))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func viewModel(_ vm: ViewModel, shoudShowJoyLabel cuckoo: String)  {
        
            return cuckoo_manager.call("viewModel(_: ViewModel, shoudShowJoyLabel: String)",
                parameters: (vm, cuckoo),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_ViewModelDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewModel<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ vm: M1, shoudShowCuckooLabel cuckoo: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(ViewModel, String)> where M1.MatchedType == ViewModel, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(ViewModel, String)>] = [wrap(matchable: vm) { $0.0 }, wrap(matchable: cuckoo) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockViewModelDelegate.self, method: "viewModel(_: ViewModel, shoudShowCuckooLabel: String)", parameterMatchers: matchers))
	    }
	    
	    func viewModel<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ vm: M1, shoudShowAngryLabel cuckoo: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(ViewModel, String)> where M1.MatchedType == ViewModel, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(ViewModel, String)>] = [wrap(matchable: vm) { $0.0 }, wrap(matchable: cuckoo) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockViewModelDelegate.self, method: "viewModel(_: ViewModel, shoudShowAngryLabel: String)", parameterMatchers: matchers))
	    }
	    
	    func viewModel<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ vm: M1, shoudShowJoyLabel cuckoo: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(ViewModel, String)> where M1.MatchedType == ViewModel, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(ViewModel, String)>] = [wrap(matchable: vm) { $0.0 }, wrap(matchable: cuckoo) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockViewModelDelegate.self, method: "viewModel(_: ViewModel, shoudShowJoyLabel: String)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_ViewModelDelegate: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewModel<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ vm: M1, shoudShowCuckooLabel cuckoo: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == ViewModel, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(ViewModel, String)>] = [wrap(matchable: vm) { $0.0 }, wrap(matchable: cuckoo) { $0.1 }]
	        return cuckoo_manager.verify("viewModel(_: ViewModel, shoudShowCuckooLabel: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewModel<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ vm: M1, shoudShowAngryLabel cuckoo: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == ViewModel, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(ViewModel, String)>] = [wrap(matchable: vm) { $0.0 }, wrap(matchable: cuckoo) { $0.1 }]
	        return cuckoo_manager.verify("viewModel(_: ViewModel, shoudShowAngryLabel: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewModel<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ vm: M1, shoudShowJoyLabel cuckoo: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == ViewModel, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(ViewModel, String)>] = [wrap(matchable: vm) { $0.0 }, wrap(matchable: cuckoo) { $0.1 }]
	        return cuckoo_manager.verify("viewModel(_: ViewModel, shoudShowJoyLabel: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ViewModelDelegateStub: ViewModelDelegate {
    

    

    
     func viewModel(_ vm: ViewModel, shoudShowCuckooLabel cuckoo: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func viewModel(_ vm: ViewModel, shoudShowAngryLabel cuckoo: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func viewModel(_ vm: ViewModel, shoudShowJoyLabel cuckoo: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


class MockViewModel: ViewModel, Cuckoo.ClassMock {
    typealias MocksType = ViewModel
    typealias Stubbing = __StubbingProxy_ViewModel
    typealias Verification = __VerificationProxy_ViewModel
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    
    // ["name": "delegate", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "ViewModelDelegate?", "isReadOnly": false, "accessibility": ""]
     override var delegate: ViewModelDelegate? {
        get {
            
            return cuckoo_manager.getter("delegate", superclassCall: super.delegate)
            
        }
        
        set {
            
            cuckoo_manager.setter("delegate", value: newValue, superclassCall: super.delegate = newValue)
            
        }
        
    }
    

    

    
    // ["name": "tapCuckooButton", "returnSignature": "", "fullyQualifiedName": "tapCuckooButton(_: String)", "parameterSignature": "_ cuckoo: String", "parameterSignatureWithoutNames": "cuckoo: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "cuckoo", "call": "cuckoo", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "cuckoo", type: "String", range: CountableRange(706..<722), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func tapCuckooButton(_ cuckoo: String)  {
        
            return cuckoo_manager.call("tapCuckooButton(_: String)",
                parameters: (cuckoo),
                superclassCall:
                    
                    super.tapCuckooButton(cuckoo)
                    )
        
    }
    
    // ["name": "tapAngryButton", "returnSignature": "", "fullyQualifiedName": "tapAngryButton(_: String)", "parameterSignature": "_ cuckoo: String", "parameterSignatureWithoutNames": "cuckoo: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "cuckoo", "call": "cuckoo", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "cuckoo", type: "String", range: CountableRange(866..<882), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func tapAngryButton(_ cuckoo: String)  {
        
            return cuckoo_manager.call("tapAngryButton(_: String)",
                parameters: (cuckoo),
                superclassCall:
                    
                    super.tapAngryButton(cuckoo)
                    )
        
    }
    
    // ["name": "tapJoyButton", "returnSignature": "", "fullyQualifiedName": "tapJoyButton(_: String)", "parameterSignature": "_ cuckoo: String", "parameterSignatureWithoutNames": "cuckoo: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "cuckoo", "call": "cuckoo", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "cuckoo", type: "String", range: CountableRange(1022..<1038), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func tapJoyButton(_ cuckoo: String)  {
        
            return cuckoo_manager.call("tapJoyButton(_: String)",
                parameters: (cuckoo),
                superclassCall:
                    
                    super.tapJoyButton(cuckoo)
                    )
        
    }
    

	struct __StubbingProxy_ViewModel: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var delegate: Cuckoo.ClassToBeStubbedProperty<MockViewModel, ViewModelDelegate?> {
	        return .init(manager: cuckoo_manager, name: "delegate")
	    }
	    
	    
	    func tapCuckooButton<M1: Cuckoo.Matchable>(_ cuckoo: M1) -> Cuckoo.ClassStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: cuckoo) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockViewModel.self, method: "tapCuckooButton(_: String)", parameterMatchers: matchers))
	    }
	    
	    func tapAngryButton<M1: Cuckoo.Matchable>(_ cuckoo: M1) -> Cuckoo.ClassStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: cuckoo) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockViewModel.self, method: "tapAngryButton(_: String)", parameterMatchers: matchers))
	    }
	    
	    func tapJoyButton<M1: Cuckoo.Matchable>(_ cuckoo: M1) -> Cuckoo.ClassStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: cuckoo) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockViewModel.self, method: "tapJoyButton(_: String)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_ViewModel: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var delegate: Cuckoo.VerifyProperty<ViewModelDelegate?> {
	        return .init(manager: cuckoo_manager, name: "delegate", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func tapCuckooButton<M1: Cuckoo.Matchable>(_ cuckoo: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: cuckoo) { $0 }]
	        return cuckoo_manager.verify("tapCuckooButton(_: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func tapAngryButton<M1: Cuckoo.Matchable>(_ cuckoo: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: cuckoo) { $0 }]
	        return cuckoo_manager.verify("tapAngryButton(_: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func tapJoyButton<M1: Cuckoo.Matchable>(_ cuckoo: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: cuckoo) { $0 }]
	        return cuckoo_manager.verify("tapJoyButton(_: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ViewModelStub: ViewModel {
    
     override var delegate: ViewModelDelegate? {
        get {
            return DefaultValueRegistry.defaultValue(for: (ViewModelDelegate?).self)
        }
        
        set { }
        
    }
    

    

    
     override func tapCuckooButton(_ cuckoo: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func tapAngryButton(_ cuckoo: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func tapJoyButton(_ cuckoo: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

