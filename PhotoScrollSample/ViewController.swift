//
//  ViewController.swift
//  PhotoScrollSample
//
//  Created by 中垣 健志 on 2016/02/18.
//  Copyright © 2016年 itvirtuoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    private let items = ["アイテム1", "アイテム2", "アイテム3"]
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = self.tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as! MyCell
        let cell = self.tableView.dequeueReusableCellWithIdentifier("MyCell") as! MyCell
        cell.photoImage.image = UIImage(named: "Ateam")
        cell.photo2Image.image = UIImage(named: "Ateam")
        cell.commentLabel.text = self.items[indexPath.item]
        return cell
    }
}

