//
//  MyTimer.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/03.
//

import Foundation
import SwiftUI
import Combine

class MyTimer: ObservableObject {
    @Published var value: Int = 5
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.value -= 1
        }
    }
}