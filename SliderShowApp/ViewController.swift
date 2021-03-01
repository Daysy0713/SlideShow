//
//  ViewController.swift
//  SliderShowApp
//
//  Created by 飯岡祥吾 on 2021/02/27.
//

import UIKit

class ViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController: ResultViewController = segue.destination as! ResultViewController
        resultViewController.x = nowIndex
        slideShow.setTitle("再生", for: .normal)
        timer.invalidate()
        timer = nil
        nextButton.isEnabled = true
        backButton.isEnabled = true
    }
    
    @IBOutlet weak var slideShow: UIButton!
   
  
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    var nowIndex:Int = 0
    
    var timer: Timer!
    
   
    
    
    var imageArray: [UIImage] = [
    UIImage(named: "sea")!,
    UIImage(named: "fall")!,
    UIImage(named: "snow")!,
    UIImage(named: "night")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.image = imageArray[0]
    }

 
    
    @IBAction func slideShowButoon(_ sender: Any) {
    
        if (timer == nil) {
            
            
            
            timer = Timer.scheduledTimer(timeInterval: 2.0 , target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
        
            slideShow.setTitle("停止", for: .normal)
            nextButton.isEnabled = false
            backButton.isEnabled = false
            }
        else {
            timer.invalidate()
            
            timer = nil
            
            slideShow.setTitle("再生", for: .normal)
            
            nextButton.isEnabled = true
            backButton.isEnabled = true
            }
    }
    
    @objc func changeImage() {
        
        nowIndex += 1
        
        if (nowIndex == imageArray.count) {
            
            nowIndex = 0
        }
        imageView.image = imageArray[nowIndex]
    }
    
    @IBAction func previousPhoto(_ sender: Any) {
      
        if (timer != nil) {
            
            
        }
            else if (nowIndex == 0) {
                nowIndex = 3
            }
            else {
                nowIndex -= 1
            }
        imageView.image = imageArray[nowIndex]
    }
   
    @IBAction func nextPhoto(_ sender: Any) {
        
        if (timer != nil) {
          
    }
        else if (nowIndex == 3) {
            
            nowIndex = 0
    }
        else {
            nowIndex += 1
        }
        imageView.image = imageArray[nowIndex]
   
    }
    @IBAction func unwind(_ segue : UIStoryboardSegue) {
        
    }

}

