//
//  ResultViewController.swift
//  SliderShowApp
//
//  Created by 飯岡祥吾 on 2021/02/28.
//

import UIKit

class ResultViewController: UIViewController {
 
    @IBOutlet weak var bigImage: UIImageView!
    
   
    var x:Int = 0
    
    
    var imageArray: [UIImage] = [
    UIImage(named: "sea")!,
    UIImage(named: "Fall")!,
    UIImage(named: "snow")!,
    UIImage(named: "night")!
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bigImage.image = imageArray[x]
      
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
