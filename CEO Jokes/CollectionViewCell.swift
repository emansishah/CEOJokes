//
//  CollectionViewCell.swift
//  CEO Jokes
//
//  Created by Mansi Shah on 2/23/16.
//  Copyright © 2016 Mansi Shah. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
 
   var punchline = ""
    
    @IBAction func ShowAnswer(sender: AnyObject) {
        JokeAnswer.text = punchline
    }
    
    @IBOutlet weak var Joke: UILabel!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Headshot: UIImageView!
    @IBOutlet weak var JokeAnswer: UILabel!

}
