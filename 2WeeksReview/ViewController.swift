//
//  ViewController.swift
//  2WeeksReview
//
//  Created by 권민서 on 2022/07/18.
//

import UIKit

enum Pocketmon: String {
    case 라이츄 = "라이츄"
    case 리자몽 = "리자몽"
    case 뮤츠 = "뮤츠"
    case 번대기 = "번대기"
    case 이브이 = "이브이"
    case 전포 = "전포"
    case 펜텀 = "펜텀"
    case 푸린 = "푸린"
    case 피카츄 = "피카츄"
}


class ViewController: UIViewController {
    
    @IBOutlet var labelCollection: [UILabel]!
    @IBOutlet var buttonCollection: [UIButton]!
    
    var pocketmonCases: [Pocketmon] = [.라이츄, .리자몽, .뮤츠, .번대기, .이브이, .전포, .펜텀, .푸린, .피카츄]
    var pocketmonArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...8 {
            buttonCollection[i].tag = i
        }
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        pocketmonArray[sender.tag] += 1
        let pocketmonCase = pocketmonCases[sender.tag]
        let pocketmonName = pocketmonCase.rawValue
        labelCollection[sender.tag].text = pocketmonName + "\(pocketmonArray[sender.tag])"
        
    }
    
    


}

