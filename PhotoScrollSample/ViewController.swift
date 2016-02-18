//
//  ViewController.swift
//  PhotoScrollSample
//
//  Created by 中垣 健志 on 2016/02/18.
//  Copyright © 2016年 itvirtuoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let dataSource : [(comment:String, photos: Int)] = [
        (comment: "アイテム1", photos: 1),
        (comment: "アイテム2", photos: 2),
        (comment: "アイテム3", photos: 3),
        (comment: "アイテム4", photos: 4),
        (comment: "アイテム5", photos: 5),
        (comment: "アイテム6", photos: 6),
        (comment: "アイテム7", photos: 7),
        (comment: "アイテム8", photos: 8),
        (comment: "アイテム9", photos: 9),
        (comment: "アイテム10", photos: 10),
    ]
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
        return self.dataSource.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print("creating MyCell")
        let cell = self.tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as! MyCell
        print("created MyCell")
        cell.photos = self.dataSource[indexPath.row].photos
        cell.commentLabel.text = self.dataSource[indexPath.item].comment
        cell.collectionView.reloadData()
        return cell
    }
}

