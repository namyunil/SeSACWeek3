//
//  CustomTableViewCell.swift
//  SeSACWeek3
//
//  Created by NAM on 2023/07/28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier = "CustomTableViewCell"
    //static이 붙어있으면 타입이다..!
 
    @IBOutlet var backView: UIView!
    @IBOutlet var checkBoxImageView: UIImageView!
    
    
    @IBOutlet var mainTitleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    
    
    func configureCell(row: ToDo) {
        
        mainTitleLabel.text = row.main
        subTitleLabel.text = row.sub
        
        if row.done {
            checkBoxImageView.image = UIImage(systemName: "checkmark.square.fill")
        } else {
            checkBoxImageView.image = UIImage(systemName: "checkmark.square")
            
        }
        
        if row.like {
            likeButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            likeButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
        
    }
 
 
    
}
