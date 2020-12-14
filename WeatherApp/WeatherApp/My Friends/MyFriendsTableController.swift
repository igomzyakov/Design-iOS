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
        AllFriends(name: "Евгений Воробьев", avatar: UIImage(named: "Воробьев"))
    ]

    override func viewDidLoad() {
            super.viewDidLoad()
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        myFriends.count
    }
    //override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //       guard
    //           let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath) as? AllFriendsCell
    //       else { return UITableViewCell()}
    //       cell.friendsName.text = allFriends[indexPath.row].name
    //       cell.friendsPhoto.image = allFriends[indexPath.row].avatar
    //
    //       return cell
    //   }
    //
    //   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //       guard
    //           segue.identifier == "showUserImage",
    //           let controller = segue.destination as? PicturesViewController,
    //           let index = tableView.indexPathForSelectedRow,
    //           let avatar = allFriends[index.row].avatar
    //       else { return }
    //       controller.allPhotos = [avatar]
    //   }
    //
    //}
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





    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
