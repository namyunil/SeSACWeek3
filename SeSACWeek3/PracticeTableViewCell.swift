//
//  PracticeTableViewCell.swift
//  SeSACWeek3
//
//  Created by NAM on 2023/07/30.
//

import UIKit

class PracticeTableViewCell: UITableViewCell {
    
    //타입 프로퍼티로 아이덴티파이어 선언을 하지않고 인스펙터 영역에서 연결할 경우
    //Type 'PracticeTableViewCell' has no member 'identifier'
    //왜 위와 같은 오류가 나는가?
    static let identifier = "PracticeTableViewCell"
    
    @IBOutlet var musicBackgroundView: UIView!
    @IBOutlet var musicCheckImageView: UIImageView!
    
    @IBOutlet var musicNameLabel: UILabel!
    @IBOutlet var musicPlayTimeLabel: UILabel!
    @IBOutlet var musicLikeButton: UIButton!
    
    
    
    func configureMusicCell(row: Music) {
        
        musicNameLabel.text = row.name
        musicPlayTimeLabel.text = row.playTime
        
        if row.done {
            musicCheckImageView.image = UIImage(systemName: "checkmark.square.fill")
        } else {
            musicCheckImageView.image = UIImage(systemName: "checkmark.square")
        }
        
        
        if row.like {
            musicLikeButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            musicLikeButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
        
        
        
    }
    
}
