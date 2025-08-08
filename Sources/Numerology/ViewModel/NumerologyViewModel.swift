//
//  File.swift
//  Numerology
//
//  Created by Ace on 8/8/2025.
//

import Foundation

@Observable
public class NumerologyViewModel {
    
    var maxDigits = 4
    
    public var digits: Array<Int> = .init()
    public var isMasterNumberReduced: Bool = false
    
    public var numerologyNumber: Int {
        calculateNumeroNumber(digits, reduceMasterNumber: isMasterNumberReduced)
    }
    
    public init() {
        digits = Array(repeating: 0, count: maxDigits)
    }
    
}
