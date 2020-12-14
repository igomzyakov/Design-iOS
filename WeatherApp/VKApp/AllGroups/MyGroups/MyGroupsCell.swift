//
//  MyGroupsCell.swift
//  VKApp
//
//  Created by Игорь Гомзяков on 13.12.2020.
//
import UIKit

class MyGroupsCell: UITableViewCell {
    
  
    @IBOutlet weak var groupName: UILabel!
    @IBOutlet weak var groupImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()

         
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}

//import UIKit
//
//class MyGroupsCell: UITableViewCell {
//
//    @IBOutlet weak var groupsPhoto: UIImageView!
//    @IBOutlet weak var groupsName: UILabel!
//
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
//
//}
