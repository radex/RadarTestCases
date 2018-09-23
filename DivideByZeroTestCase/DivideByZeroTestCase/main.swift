//
//  main.swift
//  DivideByZeroTestCase
//
//  Created by Radosław Pietruszewski on 19/01/15.
//  Copyright (c) 2015 radex. All rights reserved.
//

import Foundation

println("Hello, World!")

func testfunc(xs: [Int]) -> Int {
    var a = 0
    var b = 0
    
    for x in xs {
        a += x
        b++
    }                       // <-- the crash is reported here
    
    return a / b            // <-- the bug is here
}

testfunc([])