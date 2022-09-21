//
//  ViewModel.swift
//  TestCodeExample
//
//  Created by 조주혁 on 2022/09/22.
//

import Foundation
import Combine

class ViewModel {
    
    @Published var value: Int = 0
    
    func minus() {
        if value > 0 {
            value -= 1
        }
    }
    
    func plus() {
        value += 1
    }
    
}
