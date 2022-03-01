//
//  StudentTableViewCell.swift
//  EmployeeList
//
//  Created by Admin on 28/02/2022.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    @IBOutlet weak var NameLable: UILabel!
    @IBOutlet weak var CompanyLable: UILabel!
    @IBOutlet weak var agelabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
