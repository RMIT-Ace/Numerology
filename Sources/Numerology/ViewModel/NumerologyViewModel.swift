//
//  File.swift
//  Numerology
//
//  Created by Ace on 8/8/2025.
//

import Foundation

@Observable
public class NumerologyViewModel {
    
    public var maxDigits = 4 {
        willSet {
            digits = Array(repeating: 0, count: newValue)
        }
    }
    
    public var digits: Array<Int> = .init()
    public var isMasterNumberReduced: Bool = false
    
    public var numerologyNumber: Int {
        calculateNumeroNumber(digits, reduceMasterNumber: isMasterNumberReduced)
    }
    
    public var prediction: String {
        numberMeanings[numerologyNumber] ?? "Unknown"
    }
    
    public init() {
        digits = Array(repeating: 0, count: maxDigits)
    }
    
}
