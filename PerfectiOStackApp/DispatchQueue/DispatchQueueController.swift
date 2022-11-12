//
//  DispatchQueueController.swift
//  PerfectiOStackApp
//
//  Created by Журавлев Лев on 12.11.2022.
//

import UIKit

class DispatchQueueController: UIViewController {

    
    init() {
        super.init(nibName: nil, bundle: nil)
        title = "DispatchQueue"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
