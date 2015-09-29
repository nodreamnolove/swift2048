//
//  MainController.swift
//  swif2048
//
//  Created by 段瑞权 on 15/9/27.
//  Copyright © 2015年 胡孟虎. All rights reserved.
//

import Foundation
import UIKit

class MainController: UIViewController {
    var dimension:Int = 4
    var maxnumber:Int = 2048
    var width:CGFloat = 50
    var padding:CGFloat = 6
    var backgrounds:Array<UIView>
    var gmodel:GameModel
    
     init(){
    
        self.backgrounds = Array<UIView>()
        self.gmodel = GameModel(dimension: self.dimension)
      
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.backgrounds = Array<UIView>()
        self.gmodel = GameModel(dimension: self.dimension)
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func setupBackgrounp()
    {
        var x:CGFloat = 30
        var y:CGFloat = 150
        for i in 0...dimension{
            print(i)
            y = 150
            
        }
    }
    
    func getNumber()
    {
        let randv = Int(arc4random_uniform(10))
        print(randv)
        var seed:Int = 2
        if randv == 1{
            seed = 4
        }
        let col = Int(arc4random_uniform(UInt32(dimension)))
        let row = Int(arc4random_uniform(UInt32(dimension)))
        if(gmodel.isFull()){
            print("位置已经满了")
        }
        if gmodel.setPosition(row, col: col, value: seed)
        {
            getNumber()
            return
        }
        insertTile((row,col), value: seed)
    }
    
    func insertTile(pos:(Int,Int),value:Int)
    {
        let (row,col) = pos
        let x = 30 + CGFloat(col)*(width + padding)
        let y = 150 + CGFloat(row)*(width + padding)
        let tile = TileView(pos:CGPointMake(x,y),width:width,value:value)
        self.view.addSubview(tile)
        self.view.bringSubviewToFront(tile)
        
    }
}