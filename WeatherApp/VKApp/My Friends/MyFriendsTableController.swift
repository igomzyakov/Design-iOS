//
//  MyFriendsTableController.swift
//  WeatherApp
//
//  Created by Игорь Гомзяков on 09.12.2020.



import UIKit
    
struct AllFriends {
    let name: String
    let avatar: UIImage?
}

class MyFriendsTableController: UITableViewController {
  //  ["Илья Криль", "Анастасия Гомзякова", "Алексей Денисовский", "Евгений Воробьев"]
    var myFriends = [
        AllFriends(name: "Илья Криль", avatar: UIImage(named: "Криль")),
        AllFriends(name: "Анастасия Гомзякова", avatar: UIImage(named: "Гомзякова")),
        AllFriends(name: "Алексей Денисовский", avatar: UIImage(named: "Денисовский")),
        AllFriends(name: "Евгений Воробьев", avatar: UIImage(named: "Воробьев2"))
    ]

    override func viewDidLoad() {
            super.viewDidLoad()
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        myFriends.count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
             guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "Freunde", for: indexPath) as? MyFriendsTableCell
             else { return UITableViewCell() }
        cell.nameFriends.text = myFriends[indexPath.row].name
        cell.photoFriends.image = myFriends[indexPath.row].avatar

            return cell
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          guard
              segue.identifier == "showUserImage",
              let controller = segue.destination as? PhotoController,
              let index = tableView.indexPathForSelectedRow,
              let avatar = myFriends[index.row].avatar
          else { return }
        controller.allPhotos = [avatar]
      }




}
