//
//  ViewModel.swift
//  cuckooSample
//
//  Created by gakuburugaku on 2018/07/09.
//  Copyright © 2018年 example. All rights reserved.
//

import Foundation

internal protocol ViewModelDelegate: class {
    
    func viewModel(_ vm: ViewModel, shoudShowCuckooLabel cuckoo: String)
    func viewModel(_ vm: ViewModel, shoudShowAngryLabel cuckoo: String)
    func viewModel(_ vm: ViewModel, shoudShowJoyLabel cuckoo: String)

}

internal class ViewModel {
    
    weak var delegate: ViewModelDelegate?
    
    let cuckooGenerator: CuckooGenerator
    
    init(cuckooGenerator: CuckooGenerator = CuckooGenerator()) {
        self.cuckooGenerator = cuckooGenerator
    }
    
    func tapCuckooButton(_ cuckoo: String) {
        delegate?.viewModel(self, shoudShowCuckooLabel: cuckooGenerator.generate(cuckoo, type: .normal))
    }
    
    func tapAngryButton(_ cuckoo: String) {
        delegate?.viewModel(self, shoudShowAngryLabel: cuckooGenerator.generate(cuckoo, type: .angry))
    }
    
    func tapJoyButton(_ cuckoo: String) {
        delegate?.viewModel(self, shoudShowJoyLabel: cuckooGenerator.generate(cuckoo, type: .joy))
    }

}
