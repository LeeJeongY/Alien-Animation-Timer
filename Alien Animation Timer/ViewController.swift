//
//  ViewController.swift
//  Alien Animation Timer
//
//  Created by D7703_23 on 2018. 4. 5..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1
    //Timer 객체 생성
    var myTimer = Timer()
    
    @IBOutlet weak var alienimageview: UIImageView!
    @IBOutlet weak var imageCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //첫번째 이미지 로드
        alienimageview.image = UIImage(named: "frame1.png")
        imageCounter.text = "1"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func play(_ sender: Any) {
        //Timer 실행
        myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.doAnimation), userInfo: nil, repeats: true)
    }
    @IBAction func stop(_ sender: Any) {
        //Timer를 중지
        myTimer.invalidate()
    }
    
    //Timer에 의해 동적으로 호출되는 함수
    @objc func doAnimation() {
        if counter == 5 {
            counter = 1
        } else {
            counter = counter + 1
        }
    
    alienimageview.image = UIImage(named: "frame\(counter).png")
    imageCounter.text = String(counter)
    }
}
