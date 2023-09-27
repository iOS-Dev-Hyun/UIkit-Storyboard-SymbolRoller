//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by HyunSoo on 2023/09/27.
//

import UIKit

class SymbolRollerViewController: UIViewController {

    let symbols = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
    }
     
    func reload() {
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
    
    
 

}
