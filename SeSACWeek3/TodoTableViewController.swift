//
//  TodoTableViewController.swift
//  SeSACWeek3
//
//  Created by NAM on 2023/07/27.
//

import UIKit

class TodoTableViewController: UITableViewController {

    var list = ["장보기", "영화보기", "잠자기", "코드보기", "과제하기", "복습하기", "쉬기", "걷기", "등산하기"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addButtonClicked(_ sender: UIBarButtonItem) {
        
        showAlert()
        
        //1. list에 요소 추가
        list.append("고래밥 먹기")
        print(list)
        
    // 아래와 같이 각각 불러서 실행해도 괜찮으나
//        tableView(<#T##tableView: UITableView##UITableView#>, numberOfRowsInSection: <#T##Int#>)
//        tableView(<#T##tableView: UITableView##UITableView#>, cellForRowAt: <#T##IndexPath#>)
//        tableView?(<#T##tableView: UITableView##UITableView#>, heightForRowAt: <#T##IndexPath#>)
        
        //2. 테이블뷰 갱신(위 3개의 코드를 호출하는 것과 같다..!)
        //데이터와 뷰는 항상 따로 놀기에 싱크하는 과정이 필수적..!
        tableView.reloadData()
    }
    
    
    
    //1. 섹션 내의 셀의 갯수: 카톡 친구 수만큼 셀 갯수가 필요해 라고 iOS에게 전달
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return list.count
    }
    
    //2. 셀 디자인 및 데이터 처리 : 카톡 프로필 모서리 둥글게, 프로필 이미지와 상태 메시지 반영 등
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(#function, indexPath)
        
        //Identifier는 인터페이스 빌더에서 설정! // 재사용 메커니즘
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        //3항 연산자로 if else 구현..!
        cell.backgroundColor = indexPath.row % 2 == 0 ? .lightGray : .white
        
        //조건문을 사용하지않고, 수가 아무리 늘어나도 대응 할 수 있게 되는 코드..!
        cell.textLabel?.text = list[indexPath.row]

        //조건문을 사용해서 대응하는 경우..!
        // 수가 늘어난다면?
//        if indexPath.row == 0 {
//            cell.textLabel?.text = list[indexPath.row]
//        } else if indexPath.row == 1 {
//            cell.textLabel?.text = list[indexPath.row]
//        } else if indexPath.row == 2 {
//            cell.textLabel?.text = list[indexPath.row]
//        } else {
//            cell.textLabel?.text = list[indexPath.row]
//        }
        
//        cell.textLabel?.text = "텍스트"
        cell.textLabel?.configureTitleText() // extension 기능 활용 -> viewcontroller에 들어오는 코드의 양을 줄인다.
        cell.textLabel?.font = .boldSystemFont(ofSize: 20)
        
        cell.detailTextLabel?.text = "디테일 텍스트"
        cell.detailTextLabel?.textColor = .blue
        cell.detailTextLabel?.font = .systemFont(ofSize: 15)
        
        cell.imageView?.image = UIImage(systemName: "star.fill")
        
        return cell
    }
    
    //3. 셀의 기본 높이: 44
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 70
    }
    
    
    
}
