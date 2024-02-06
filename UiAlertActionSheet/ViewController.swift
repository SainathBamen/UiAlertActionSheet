//
//  ViewController.swift
//  UiAlertActionSheet
//
//  Created by mac on 2/5/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showActionButton(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: "Selection Process", message: "Choose Your Option", preferredStyle: .actionSheet)
        let deletebutton = UIAlertAction(title: "Delete", style: .default) { (action) in
            self.myText.text = "You Have Clicked Delete Button"
        }
        let saveButton = UIAlertAction(title: "Save", style: .default) { (action) in
            self.myText.text = "You Have Clicked Save Button"
        }
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { (action) in 
            self.myText.text = "You Have Cancelled The Operation"
        }
        actionSheet.addAction(deletebutton)
        actionSheet.addAction(saveButton)
        actionSheet.addAction(cancelButton)
        present(actionSheet, animated: true, completion: nil)
        
        
    }
    
}

