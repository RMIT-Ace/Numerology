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
    
    public var numerologyNumber: Int = 0
    
    public var digits: Array<Int> = .init()
    
    public init() {
        //
    }
    
}
