//
//  MyGroupsController.swift
//  VKApp
//
//  Created by Игорь Гомзяков on 13.12.2020.
//
import UIKit

class MyGroupsController: UITableViewController {

    var groups: [Group] = [
        Group(name: "ВЕЛО - Вельск", avatar: "ВелоВельск"),
       // Group(name: "Подслушано Вельск", avatar: "ПодслушаноВельск"),
        //Group(name: "ДорогиВР | Вельск", avatar: "ДорогиВР"),
        //Group(name: "Администрация Вельского района", avatar: "Администрация"),
        ]
    
    override func numberOfSections(in tableView: UITableView) -> Int { 1 }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { groups.count }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MeineGruppen", for: indexPath) as! MyGroupsCell
        let group = groups[indexPath.row]
        cell.groupName.text = group.name
        cell.groupImage.image = group.avatar
        
        return cell
        }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
                if editingStyle == .delete {
                    groups.remove(at: indexPath.row)
                    tableView.deleteRows(at: [indexPath], with: .fade)
                    //tableView.reloadData()
                    }
    }
                    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        if segue.identifier == "addGroups" {
            guard let addGroupController = segue.source as? AllGroupsController else { return }
            if let indexPath = addGroupController.tableView.indexPathForSelectedRow {
                let group = addGroupController.newGroups[indexPath.row] //addGroupController.notMyGroups[indexPath.row]
                if !groups.contains(group) {
                    groups.append(group)
                    tableView.reloadData()
                }
            }
        }
    }
}
//import UIKit
//
//
//class MyGroupsViewController: UITableViewController {
//
//    var myGroups = [String]()
//    var myGroupsImage = [UIImage]()
//
//
//    @IBAction func addGroup(segue: UIStoryboardSegue) {
//        guard
//            segue.identifier == "addGroups",
//            let controller = segue.source as? AllGroupsController,
//            let indexPath = controller.tableView.indexPathForSelectedRow,
//            !myGroups.contains(controller.allGroups[indexPath.row].name)
//        else { return }
//        let group = controller.allGroups[indexPath.row]
//        myGroups.append(group.name)
//        myGroupsImage.append(group.image!)
//        tableView.reloadData()
//    }
//
//override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//            if editingStyle == .delete {
//                myGroups.remove(at: indexPath.row)
//                myGroupsImage.remove(at: indexPath.row)
//                tableView.deleteRows(at: [indexPath], with: .automatic)
//            }
//        }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        myGroups.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//             guard
//            let cell = tableView.dequeueReusableCell(withIdentifier: "MeineGruppen", for: indexPath) as? MyGroupsCell
//             else { return UITableViewCell() }
//        cell.groupsName.text = myGroups[indexPath.row]
//        cell.groupsPhoto.image = myGroupsImage[indexPath.row]
//
//
//            return cell
//        }
//
//
//
//
//}
//

