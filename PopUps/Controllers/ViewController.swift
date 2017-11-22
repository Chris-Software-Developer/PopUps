//
//  ViewController.swift
//  PopUps
//
//  Created by Christopher Smith on 11/22/17.
//  Copyright © 2017 Christopher Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: IBActions
    
    @IBAction func alertButtonPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "My title", message: "My message", preferredStyle: .alert)
        let action1 = UIAlertAction(title: "My Action 1", style: .default) { (action) in
            print("THIS IS ACTION 1")
        }
        let action2 = UIAlertAction(title: "My Action 2", style: .cancel) { (action) in
                print("THIS IS ACTION 2")
        }
        let action3 = UIAlertAction(title: "My Action 3", style: .destructive) { (action) in
            print("DELETING ALL YOUR DATA")
        }
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func actionSheetButtonPressed(_ sender: UIButton) {
        let sheet = UIAlertController(title: "My title", message: "My message" , preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "My Action 1", style: .default) { (action) in
            print("THIS IS ACTION 1")
        }
        let action2 = UIAlertAction(title: "My Action 2", style: .cancel, handler: nil)
        let action3 = UIAlertAction(title: "BAD STUFF", style: .destructive) { (_) in
            print("YOU HAVE DELETED YOUR ACCOUNT")
        }
        sheet.addAction(action1)
        sheet.addAction(action2)
        sheet.addAction(action3)
        present(sheet, animated: true, completion: nil)
    }
    
    
}
