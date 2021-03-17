

import UIKit
import Firebase

class HistoryViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    
    let db = Database.database().reference().child("searchHistory")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        db.observeSingleEvent(of: .value) { (snapshot) in
            
            print("---> snapshot: \(snapshot.value)")
        }
        
    }

    class HistoryCell: UITableViewCell {
        
        @IBOutlet weak var searchTerm: UILabel!
        
    }

}
