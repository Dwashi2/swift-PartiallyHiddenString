//
//  ViewController.swift
//  PartiallyHiddenString
//
//  Created by Daniel Washington Ignacio on 01/07/21.
//

/*
 Create a function that takes a phrase and transforms each word using the following rules:

 Keep first and last character the same.
 Transform middle characters into a dash -.
 Examples

 partiallyHide("skies were pretty") ➞ "s---s w--e p----y"

 partiallyHide("red is not my color") ➞ "r-d is n-t my c---r"

 partiallyHide("She rolled her eyes") ➞ "S-e r----d h-r e--s"

 partiallyHide("Harry went to fight the basilisk") ➞ "H---y w--t to f---t t-e b------k"
 Notes

 Words with two or fewer letters should not be hidden at all.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.partiallyHide("skies were pretty"))
        print(self.partiallyHide("red is not my color"))
        print(self.partiallyHide("She rolled her eyes"))
        print(self.partiallyHide("Harry went to fight the basilisk"))
    }

    func partiallyHide(_ phrase: String) -> String {
        let replaced = phrase.replacingOccurrences(of: "(?<=\\S)\\S(?=\\S)", with: "-", options: .regularExpression)
            return replaced
    }

}

