//
//  PracticeTableViewController.swift
//  SeSACWeek3
//
//  Created by NAM on 2023/07/30.
//

import UIKit

class PracticeTableViewController: UITableViewController {
    

    //1. 배열
//    var musicList = ["Honda", "Bora", "25", "추월", "Coupe"]
//    var musicPlayList = ["3:00", "3:20", "2:57", "4:10", "2:18"]
    
    //2. 여러개의 배열
//    var musicList = [Music(name: "Honda", playTime: "3:00", like: true, done: false),
//                     Music(name: "Bora", playTime: "3:20", like: true, done: true),
//                     Music(name: "25", playTime: "2:57", like: true, done: true),
//                     Music(name: "추월", playTime: "4:10", like: false, done: false),
//                     Music(name: "Coupe", playTime: "2:18", like: false, done: true)]

    //3. Class, Struct
    var music = musicInformation()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return musicList.count // 여러개의 배열
        return music.list.count // class, struct
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PracticeTableViewCell.identifier) as! PracticeTableViewCell
        
        //1. 배열
//        cell.musicNameLabel.text = musicList[indexPath.row]
//        cell.musicPlayTimeLabel.text = musicPlayList[indexPath.row]
//        cell.musicLikeButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
//        cell.musicCheckImageView.image = UIImage(systemName: "checkmark.square.fill")
       
        //2. 여러개의 배열
        
//        cell.configureMusicCell(row: musicList[indexPath.row])
//
        
        //3. Class, Struct
        
        let row = music.list[indexPath.row]
        
        cell.configureMusicCell(row: row)
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    
}
