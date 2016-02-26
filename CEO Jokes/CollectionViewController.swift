//
//  CollectionViewController.swift
//  CEO Jokes
//
//  Created by Mansi Shah on 2/23/16.
//  Copyright © 2016 Mansi Shah. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cell"

class CollectionViewController: UICollectionViewController {
    
    var names = ["Steve Jobs", "Tim Cook", "Bill Gates", "Elon Musk", "Mark Zuckerberg"]
    
    var images = ["stevejobs", "timcook", "billgates", "elonmusk", "markzuckerberg"]
    
    var jokes = ["How many programmers does it take to change a lightbulb?", "Why was the JavaScript developer sad?", "Why did the developer go broke?", "Why don't jokes work in octal?", "What's the object oriented way to get rich?"]
    
    var answers = ["None, it's a hardware problem.", "Because he didn't Node how to Express himself.", "Because he used up all his cache.", "Because 7 10 11.", "Inheritance!"]
 

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        //print(indexPath.row)
        self.performSegueWithIdentifier("SegueToProducts", sender: indexPath)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "SegueToProducts") {
            let vc = segue.destinationViewController as! TableViewController
            vc.rowIndex = sender!.row
        }
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return names.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CollectionViewCell
    
        // Configure the cell
        
        cell.Headshot.image = UIImage(named: images[indexPath.item])
        cell.Headshot.layer.cornerRadius = cell.Headshot.frame.height/2
        cell.Headshot.clipsToBounds = true
        cell.Name.text = names[indexPath.item]
        cell.Joke.text = jokes[indexPath.item]
        cell.punchline = answers[indexPath.item]
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */


}