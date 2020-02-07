//
//  ViewController.swift
//  CollectionView
//
//  Created by Kristoforus David on 07/01/20.
//  Copyright © 2020 Kristoforus David. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var image = [UIImage(named: "hongkong"), UIImage(named: "japan"), UIImage(named: "korea"), UIImage(named: "paris")]
    var name = ["Hongkong","Korea","Japan", "Paris"]
    var destination = [Destination]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<image.count{
            let data = Destination(image: image[i]!, name: name[i])
            destination.append(data)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        
        return destination.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell
        cell?.destinationImage.image = destination[indexPath.row].image
        cell?.destinationName.text = destination[indexPath.row].name
        
        return cell!
    }

}

