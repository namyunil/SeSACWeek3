//
//  CutomTableViewController.swift
//  SeSACWeek3
//
//  Created by NAM on 2023/07/28.
//

import UIKit

//배열을 여러개 많이 만들 필요 없이 확장을 활용해서..!


class CutomTableViewController: UITableViewController {

    let todo = ToDoInformation()
    
    var list = [ToDo(main: "잠자기", sub: "23.07.26", like: true, done: false),
                ToDo(main: "산책하기", sub: "23.07.25", like: true, done: true),
                ToDo(main: "운동하기", sub: "23.07.28", like: false, done: false)]
//    var sublist = ["오늘까지", "내일까지", "주말까지"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 하나의 고정된 높이로 사용하려면 heightforrowat함수를 호출하는 대신 아래와 같이 정의할 수 있다.
        tableView.rowHeight = 70
        
    }
    
    // cell의 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return list.count
        return todo.list.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 스토리보드 as 코드 형식으로 이해..!
        // cell의 타입이 변화한다..!
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as! CustomTableViewCell
        
        let row = todo.list[indexPath.row]
        
        cell.configureCell(row: row)
        
        
        
//        cell.checkBoxImageView.image = UIImage(systemName:  "checkmark")
//        cell.likeButton.setImage(UIImage(systemName:  "star"), for: .normal)
        
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        <#code#>
//    }
    
    
    //3. 셀 선택
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
}
