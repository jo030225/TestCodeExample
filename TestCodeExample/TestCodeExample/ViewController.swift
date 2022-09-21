//
//  ViewController.swift
//  TestCodeExample
//
//  Created by 조주혁 on 2022/09/21.
//

import UIKit
import Combine

class ViewController: UIViewController {

    private let viewModel = ViewModel()
    private var cancellables: Set<AnyCancellable> = []
    
    @IBOutlet weak var valueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.$value.sink { [weak self] value in
            print(value)
            self?.valueLabel.text = value.description
        }
        .store(in: &cancellables)
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        viewModel.minus()
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        viewModel.plus()
    }
}

