//
//  ViewController.swift
//  xibs-and-programmatic-cells
//
//  Created by David Rifkin on 10/8/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class DogsTableViewViewController: UIViewController {

    let dogs: [String:UIColor] = ["Yorkie":.gray, "Clifford":.red,"Pugmixxx":.brown,"Corgi":.blue]
    
    lazy var tableView: UITableView = {
        let theTableView = UITableView()
        theTableView.dataSource = self
        
        //cells - we've created a cell variable that dequeues a cell IB item that we created in storyboard
        //use this registering process if we need to use the interface builder file
//        let nib = UINib(nibName: "DogTableViewCell", bundle: nil)
//        theTableView.register(nib, forCellReuseIdentifier: "dogTableViewCell")
        
        //use this registering process if we are creating our cells programmatically
        theTableView.register(DogTableViewCell.self, forCellReuseIdentifier: "lianasHappyCell")
        
        return theTableView
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(tableView)
        setConstraints()
        // Do any additional setup after loading the view.
    }
    
    func setConstraints() {
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
}

extension DogsTableViewViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dogBreed = Array(dogs.keys)[indexPath.row]
        let dogColor = dogs[Array(dogs.keys)[indexPath.row]]
        
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "lianasHappyCell", for: indexPath) as? DogTableViewCell else {return UITableViewCell()}
        cell.breedLabel.text = dogBreed
        cell.backgroundColor = dogColor
        return cell
    }
}
