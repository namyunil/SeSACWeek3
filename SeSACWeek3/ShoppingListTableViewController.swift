//
//  ShoppingListTableViewController.swift
//  SeSACWeek3
//
//  Created by NAM on 2023/07/28.
//

import UIKit

class ShoppingListTableViewController: UITableViewController {
    
    @IBOutlet var shoppingListTextField: UITextField!
    @IBOutlet var addButton: UIButton!
    @IBOutlet var buttonView: UIView!
    
    var shoppingList = ["그립톡 구매하기", "사이다 구매", "아이패드 케이스 최저가 알아보기", "양말"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designTextField()
        
        
    }
    
    //텍스트 레이블 보더 안보이게 구현해보자..!
    func designTextField() {
        shoppingListTextField.placeholder = "무엇을 구매하실 건가요?"
        shoppingListTextField.layer.borderColor = UIColor.systemGray5.cgColor
        shoppingListTextField.backgroundColor = .systemGray5
        
    }
    
    func noWordAlert() {
        
        let alert = UIAlertController(title: "경고", message: "한 글자 이상 입력해주세요.", preferredStyle: .alert)
        let ok = UIAlertAction(title: "확인", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        
        view.endEditing(true)
        
        if shoppingListTextField.text?.count == 0 {
            noWordAlert()
        } else {
            shoppingList.append(shoppingListTextField.text!)
        }
        
        tableView.reloadData()
        print(shoppingList)
        
        
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return shoppingList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingCell")!
        
        cell.textLabel?.text = shoppingList[indexPath.row]
        
        // 첫 번째, 두 번째 순서에 다른 이미지와 디테일 라벨 구현
        if indexPath.row == 0 {
            cell.imageView?.image =  UIImage(systemName: "checkmark.rectangle")
            cell.detailTextLabel?.text = "★"
            
        } else if indexPath.row == 1 {
            cell.imageView?.image = UIImage(systemName: "checkmark.rectangle.fill")
            cell.detailTextLabel?.text = "☆"
        } else {
            cell.imageView?.image = UIImage(systemName: "checkmark.rectangle.fill")
            cell.detailTextLabel?.text = "★"
        }
        
        
        
        return cell
    }
    
}
