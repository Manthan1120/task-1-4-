//
//  ViewController.swift
//  4
//
//  Created by R86 on 01/04/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var arr: [Datum] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getApi()
    }

    func getApi() {
            let url = URL(string: "https://myct.store/Mobile_Services/user/v2/index.php/get_area")
            var ur = URLRequest(url: url!)
            ur.httpMethod = "GET"
            URLSession.shared.dataTask(with: ur) { data, response, error in
                do {
                    let obj = try JSONDecoder().decode(Welcome.self, from: data!)
                    self.arr = obj.data
                  
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                 
                }catch{
                    print(error)
                }
            }.resume()
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        
        
        cell.label1.text = arr[indexPath.row].id
        cell.lable2.text = arr[indexPath.row].areaName
        cell.lable3.text = arr[indexPath.row].city
        cell.lable4.text = arr[indexPath.row].srno
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}

