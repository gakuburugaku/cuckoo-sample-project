//
//  ViewController.swift
//  cuckooSample
//
//  Created by gakuburugaku on 2018/07/09.
//  Copyright © 2018年 example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Dependencies
    
    let viewModel = ViewModel()
    
    
    // MARK: - Outlets
    
    @IBOutlet weak var cuckooLabel: UILabel!
    
    @IBOutlet weak var cuckooButton: UIButton!
    
    @IBAction func cuckooButton(_ sender: UIButton) {
        viewModel.tapCuckooButton("cuckoo")
    }
    
    @IBAction func jonButton(_ sender: Any) {
        viewModel.tapJoyButton("cuckouou")
    }
    
    @IBAction func angryButton(_ sender: Any) {
        viewModel.tapAngryButton("cuckooooo")
    }
    
    
    // MARK: - Orverrdes
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/// ViewController - ViewModelDelegate
extension ViewController: ViewModelDelegate {
    func viewModel(_ vm: ViewModel, shoudShowJoyLabel cuckoo: String) {
        cuckooLabel.text = cuckoo
        cuckooLabel.isHidden = false
    }
    
    func viewModel(_ vm: ViewModel, shoudShowCuckooLabel cuckoo: String) {
        cuckooLabel.text = cuckoo
        cuckooLabel.isHidden = false
    }

    func viewModel(_ vm: ViewModel, shoudShowAngryLabel cuckoo: String) {
        cuckooLabel.text = cuckoo
        cuckooLabel.isHidden = false
    }

}
