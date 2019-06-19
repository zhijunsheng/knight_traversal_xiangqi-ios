//
//  XiangqiBoard.swift
//  Knight
//
//  Created by Donald Sheng on 2019-06-19.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import Foundation

struct XiangqiBoard: CustomStringConvertible {
    
    static let cols: Int = 9
    static let rows: Int = 10
    
    
    var description: String {
        
        var brdDesc = "\n+"
        
        for col in 0..<XiangqiBoard.cols {
            brdDesc += " \(col)"
        }
        brdDesc += "\n"
        
        for row in 0..<XiangqiBoard.rows {
            brdDesc += "\(row)"
            for _ in 0..<XiangqiBoard.cols {
                brdDesc += " ."
            }
            brdDesc += "\n"
        }
        
        return brdDesc
    }
    
    
}
