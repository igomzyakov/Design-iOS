//
//  AllGroupsController.swift
//  WeatherApp
//
//  Created by Игорь Гомзяков on 13.12.2020.
//
//

import UIKit

class AllGroupsController: UITableViewController {
    
    var newGroups = [
        Group(name: "ВЕЛО - Вельск", avatar: "ВелоВельск"),
        Group(name: "Подслушано Вельск", avatar: "ПодслушаноВельск"),
        Group(name: "ДорогиВР | Вельск", avatar: "ДорогиВР"),
        Group(name: "Администрация Вельского района", avatar: "Администрация"),
        ]
    
    override func numberOfSections(in tableView: UITableView) -> Int { 1 }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { newGroups.count }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Gruppe", for: indexPath) as! MyGroupsCell
        let group = newGroups[indexPath.row]
        cell.groupName.text = group.name
        cell.groupImage.image = group.avatar
        return cell
    }
}


//import UIKit
//
//class AllGroupsController: UITableViewController {
//
//        var allGroups = [
//            Group(name: "ВЕЛО - Вельск", avatar: "ВелоВельск"),
//            Group(name: "Подслушано Вельск", avatar: "ПодслушаноВельск"),
//            Group(name: "ДорогиВР | Вельск", avatar: "ДорогиВР"),
//            Group(name: "Администрация Вельского района", avatar: "Администрация"),
//            ]
//
//    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int { 1 }
//
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { allGroups.count }
//
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Gruppe", for: indexPath) as! MyGroupsCell
//        let group = allGroups[indexPath.row]
//        cell.groupsName.text = group.name
//        cell.groupsPhoto.image = group.avatar
//        return cell
//    }
//
//        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            tableView.deselectRow(at: indexPath, animated: true)
//        }
//
//    }
