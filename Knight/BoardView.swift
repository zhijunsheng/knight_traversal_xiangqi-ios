//
//  BoardView.swift
//  Knight
//
//  Created by Donald Sheng on 2019-06-19.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    let originX: CGFloat = 27
    let originY: CGFloat = 43
    let cellSide: CGFloat = 29

    override func draw(_ rect: CGRect) {
        drawBoard()
    }

    private func drawBoard() {
        drawGrid()
    }
    
    private func drawGrid() {
        let path = UIBezierPath()
        for i in 0..<XiangqiBoard.rows {
            path.move(to: CGPoint(x: originX, y: originY + CGFloat(i) * cellSide))
            path.addLine(to: CGPoint(x: originX + CGFloat(XiangqiBoard.cols - 1) * cellSide, y: originY + CGFloat(i) * cellSide))
        }
        for i in 0..<XiangqiBoard.cols {
            path.move(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY))
            path.addLine(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY + 4 * cellSide))
            
            path.move(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY + 5 * cellSide))
            path.addLine(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY + CGFloat(XiangqiBoard.rows - 1) * cellSide))
        }
        
        for i in 0..<2 {
            path.move(to: CGPoint(x: originX + CGFloat(i * 8) * cellSide, y: originY + 4 * cellSide))
            path.addLine(to: CGPoint(x: originX + CGFloat(i * 8) * cellSide, y: originY + 5 * cellSide))
            
            // palace
            
            path.move(to: CGPoint(x: originX + 3 * cellSide, y: originY + CGFloat(i * 7) * cellSide))
            path.addLine(to: CGPoint(x: originX + 5 * cellSide, y: originY + CGFloat(i * 7 + 2) * cellSide))
            
            path.move(to: CGPoint(x: originX + 5 * cellSide, y: originY + CGFloat(i * 7) * cellSide))
            path.addLine(to: CGPoint(x: originX + 3 * cellSide, y: originY + CGFloat(i * 7 + 2) * cellSide))
        }
        
        path.stroke()
    }
}
