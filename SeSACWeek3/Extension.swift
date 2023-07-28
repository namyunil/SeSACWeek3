//
//  Extension.swift
//  SeSACWeek3
//
//  Created by NAM on 2023/07/27.
//

import UIKit

//UITableViewController에 기능을 추가한 것..!
//UITableViewController를 사용하는 어느 곳이든 기능을 호출 할 수 있다
extension UITableViewController {
    
    //변수는 사용하기 어려워 오늘은 함수만..!
    
    func showAlert() {
        
        let alert = UIAlertController(title: "타이틀", message: "메시지", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "확인", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
    
    
    
}


extension UILabel {
    
    func configureTitleText() {
        self.textColor = .red
        self.font = .boldSystemFont(ofSize: 20)
        self.textAlignment = .center
        
        
        
    }
    
}
