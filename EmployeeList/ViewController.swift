//
//  ViewController.swift
//  EmployeeList
//
//  Created by Admin on 28/02/2022.
//

import UIKit

struct EmployeeAccount {
    
    var Name: String
    var CompanyNmae: String
    var age: String
    
}

class ViewController: UIViewController, UITableViewDataSource {

    var e1 = [EmployeeAccount(Name: "Mateus", CompanyNmae: "ITC", age: "21"),EmployeeAccount(Name: "Daniel", CompanyNmae: "Infosys", age: "22"),EmployeeAccount(Name: "Venkatesh", CompanyNmae: "ADP", age: "23"),EmployeeAccount(Name: "mathew", CompanyNmae: "Tesla", age: "25"),
              EmployeeAccount(Name: "Sharad", CompanyNmae: "Google", age: "24"),EmployeeAccount(Name: "Charles", CompanyNmae: "JPMorgan", age: "25"),EmployeeAccount(Name: "Melvyn", CompanyNmae: "HSBC", age: "26")]
    
    @IBOutlet weak var tableview: UITableView!
    
    //let names = ["Mateus" , "Daniel" , "Mathew" , "Charlie" , "Sharad" , "Melvin" , "Venkatesh"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return e1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! StudentTableViewCell
        
        var ee1 : EmployeeAccount
        ee1 = e1[indexPath.row]
        
        //cell.NameLable.text = names[indexPath.row]
        //cell.CompanyLable.text = "ITC"
        //cell.agelabel.text = "25"
        cell.NameLable.text = ee1.Name
        cell.CompanyLable.text = ee1.CompanyNmae
        cell.agelabel.text = ee1.age
        
        return cell
    }   
    
    

}

