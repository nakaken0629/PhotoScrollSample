//
//  MyCell.swift
//  PhotoScrollSample
//
//  Created by 中垣 健志 on 2016/02/18.
//  Copyright © 2016年 itvirtuoso. All rights reserved.
//

import UIKit

class MyCell : UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    var photos = 1
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var commentLabel: UILabel!
    
    init(style: UITableViewCellStyle, reuseIdentifier: String?, photos: Int) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.photos = photos
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print ("numberOfItemsInSection")
        return self.photos
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCellWithReuseIdentifier("MyPhotoCell", forIndexPath: indexPath) as! MyPhotoCell
        cell.photoImage.image = UIImage(named: "Ateam")
        return cell
    }
}
