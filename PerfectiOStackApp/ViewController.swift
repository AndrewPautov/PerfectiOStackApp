//
//  ViewController.swift
//  PerfectiOStackApp
//
//  Created by Журавлев Лев on 12.11.2022.
//

import UIKit

final class ViewController: UIViewController {

    let tableView = UITableView()
    lazy var controllersList: [UIViewController] = []
        
    override func viewDidLoad() {
        super.viewDidLoad()
        controllersList = [
            makeController()
        ]
        configureTable()
        setupConstraints()
    }
    
    private func configureTable() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupConstraints() {
        view.addSubview(tableView)
        let _ = NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    private func makeController() -> UIViewController {
        return DispatchQueueController()
    }
}

// UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controllersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = controllersList[indexPath.row].title
        return cell
    }
}

// UITableViewDataSource
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.present(controllersList[indexPath.row], animated: true)
        tableView.cellForRow(at: indexPath)?.selectionStyle = .none
    }
}
