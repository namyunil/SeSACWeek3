//
//  DynamicTableViewController.swift
//  SeSACWeek3
//
//  Created by NAM on 2023/07/27.
//

import UIKit

class DynamicTableViewController: UITableViewController {
    
    
    var overallSettingList = ["공지사항", "실험실", "버전정보"]
    var personalSettingList = ["개인/보안", "알림", "채팅", "멀티프로필"]
    var etcList = ["고객센터/도움말"]
    
    var sectionList = ["전체설정", "개인설정", "기타"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    
    
        override func numberOfSections(in tableView: UITableView) -> Int {
            return 3
        }
    
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return sectionList[section]
        }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //조건문 활용시 아래와 같은 문구 진행되는데 이유가 무엇?
        //Missing return in instance method expected to return 'Int'
        //else를 사용해서 떠리처리를 해보자..!
        // 100%를 대응..!
        
        if section == 0 {
            return overallSettingList.count
        } else if section == 1 {
            return personalSettingList.count
        } else if section == 2 {
            return etcList.count
        } else {
            return 3
        }

//                return section == 0 ? section == 1 ? overallSettingList.count :  personalSettingList.count : etcList.count
//        
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "dynamicCell")!
        
        if indexPath.section == 0 {
            cell.textLabel?.text = overallSettingList[indexPath.row]
            
                    } else if indexPath.section == 1 {
                        cell.textLabel?.text = personalSettingList[indexPath.row]
                    } else if indexPath.section == 2 {
                        cell.textLabel?.text = etcList[indexPath.row]
                    }
            
        return cell
        }
        
        
    }
    
