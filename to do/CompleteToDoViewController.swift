//
//  CompleteToDoViewController.swift
//  to do
//
//  Created by Scholar on 6/27/22.
//

import UIKit

class CompleteToDoViewController: UIViewController {

    var previousVC = ToDoTableTableViewController()
    var selectedToDo : ToDoCD?
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = selectedToDo?.name

    }
    
    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
           if let theToDo = selectedToDo {
             context.delete(theToDo)
             navigationController?.popViewController(animated: true)
           }
         }
    }
    

}
