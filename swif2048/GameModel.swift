//
//  GameModel.swift
//  swif2048
//
//  Created by 段瑞权 on 15/9/27.
//  Copyright © 2015年 胡孟虎. All rights reserved.
//

import Foundation

class GameModel  {
    var dimension:Int = 0
    var tiles:Array<Int>
    init(dimension:Int){
        self.dimension = dimension
        self.tiles = Array<Int>(count: self.dimension, repeatedValue: 0)
    }
    func setPosition(row:Int,col:Int,value:Int)->Bool{
        assert(row>=0&&row<dimension)
        assert(col>=0&&col<dimension)
        let index = self.dimension*row + col
        let val = tiles[index]
        if(val>0)
        {
            print("该位置已经有值 了")
            return false
        }
        
        return true;
    }
    
    func emptyPosition()-> [Int]
    {
        var emptytiles = Array<Int>()
        for i in 0...(dimension*dimension){
            if tiles[i] == 0{
                emptytiles.append(i)
            }
        }
        return emptytiles
    }
    func isFull()->Bool
    {
        if emptyPosition().count == 0{
            return true
        }
        return false
    }
    
    
}
