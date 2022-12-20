//
//  ViewController.swift
//  CollectionsCell_Dame
//
//  Created by Consultant on 12/19/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var table: UITableView!
    
    var models = [Model]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "first", imageName: "Image_1"))
        models.append(Model(text: "second", imageName: "Image_2"))
        models.append(Model(text: "trois", imageName: "Image_3"))
        models.append(Model(text: "yon", imageName: "Image_4"))
        models.append(Model(text: "first", imageName: "Image_2"))
        models.append(Model(text: "second", imageName: "Image_4"))
        models.append(Model(text: "trois", imageName: "Image_3"))
        models.append(Model(text: "yon", imageName: "Image_1"))
        models.append(Model(text: "first", imageName: "Image_3"))
        models.append(Model(text: "second", imageName: "Image_1"))
        models.append(Model(text: "trois", imageName: "Image_4"))
        models.append(Model(text: "yon", imageName: "Image_2"))
        models.append(Model(text: "first", imageName: "Image_4"))
        models.append(Model(text: "second", imageName: "Image_2"))
        models.append(Model(text: "trois", imageName: "Image_3"))
        models.append(Model(text: "yon", imageName: "Image_1"))
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    //Table ********************************************
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        
        cell.configure(with: models)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }


}



struct Model {
    
    let text: String
    let imageName: String
    
    init(text: String, imageName: String){
        
        self.text = text
        self.imageName = imageName
        
        
    }
    
    
}
