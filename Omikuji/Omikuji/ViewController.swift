//
//  ViewController.swift
//  Omikuji
//
//  Created by ITユーザー on 2016/05/18.
//  Copyright © 2016年 小関千晴. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    let rndSource = GKARC4RandomSource()
     let str = ["omikuji_kichi.png","omikuji_syoukichi.png","omikuji_suekichi.png","omikuji_kyou.png","omikuji_daikichi.png","omikuji_chuukichi.png"]
    
    @IBAction func myview(sender: AnyObject) {

        let rnd = rndSource.nextIntWithUpperBound(str.count)
        myImage.image=UIImage(named: str[rnd])
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

