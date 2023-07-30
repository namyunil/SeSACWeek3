//
//  StudyTableViewController.swift
//  SeSACWeek3
//
//  Created by NAM on 2023/07/27.
//

import UIKit

class StudyTableViewController: UITableViewController {
    
    let studyList = ["변수", "상수", "열거형", "옵셔널 바인딩", "메서드", "프로퍼티"]
    
    let appleList = ["아이폰", "애플워치", "아이패드", "맥북", "에어팟"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //자동으로 연결되어있는 tableview를 호출
        //높이가 고정일때는 아래와 같은 프로퍼티를 활용하는게 효과적이다.
        //#function을 프린트하여 확인해보면, 새로운 셀이 등장할때마다 heightforrowat함수가 호출되기때문에..! 셀 수가 많으면 많을수록 문제 발생 가능성..!
        tableView.rowHeight = 60
        
        
        
    }
    //아래 함수의 기본값은 1로 설정되어있다.
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    //섹션의 타이틀, 헤더값 설정
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        //조건문을 활용하거나 삼항연산자를 이용해도 된다..!
        
        return section == 0 ? "첫번째 섹션" : "두번째 섹션"
//        if section == 0 {
//            return "첫번째 섹션"
//        } else if section == 1 {
//            return "두번째 섹션"
//        } else if section == 2 {
//            return "세번째 섹션"
//        }
//
//        //        return "섹션의 타이틀이다."
    }
    
    //1. 셀 갯수 (필수)
    // 셀과 rows의 차이점?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? studyList.count : appleList.count
    }
    //2. 셀 데이터 및 디자인 처리 (필수)
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        // identifier에 해당하는 셀이 없을 수 있기 때문에 옵셔널로 반환을 해줌 > 해제가 필요!
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoCell")! // .textlabel을 이어쓰는 것도 가능하나 너무 길기때문에 상수에 담아서 사용..!
        
        
        if indexPath.section == 0 {
            cell.textLabel?.text = studyList[indexPath.row]
        } else {
            cell.textLabel?.text = appleList[indexPath.row]
        }
        
        //        cell.textLabel?.text = studyList[indexPath.row]
        //
        return cell
        
        //        if indexPath.row == 0 {
        //            cell.textLabel?.text = studyList[0]
        //        }
        
        //        if indexPath.row == 0 {
        //            cell.textLabel?.text = "변수"
        //        } else if indexPath.row  == 1 {
        //            cell.textLabel?.text = "상수"
        //        } else if indexPath.row == 2 {
        //            cell.textLabel?.text = "열거형"
        //        } //...
        //
        //        return cell
    }
    
    
    
    //
    //    return cell // 스크린에 보일 수 있도록 셀을 반환
    
    
    //3. 없어도 기본값인 높이 44로 구현은 된다..!
    // 셀 높이: 서비스 구현에 따라 필요한 경우가 많지만, 항상 같은 높이를 셀에서 사용한다면 비효율적일 수 있음..!
    //    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    //
    //        //모든
    //        print(#function)
    //
    ////        if indexPath.row == 0 {
    ////            return 50
    ////        } else {
    ////            return 100
    ////        }
    ////
    //                return 50
    //
    //    }
    
    
    
}

