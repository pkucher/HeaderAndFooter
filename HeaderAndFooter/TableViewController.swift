//
//  TableViewController.swift
//  HeaderAndFooter
//
//  Created by brq on 30/11/2018.
//  Copyright © 2018 brq. All rights reserved.
//

import UIKit

enum type{
    case estadosBrasil
    case countriesAsia
}

class TableViewController: UITableViewController {

    
    var estadosBrasil = ["Rio de Janeiro","Paraná","São Paulo","Rio de Janeiro","Paraná","São Paulo","Rio de Janeiro","Paraná","São Paulo","Rio de Janeiro","Paraná","São Paulo","Rio de Janeiro","Paraná","São Paulo","Rio de Janeiro","Paraná","São Paulo","Rio de Janeiro","Paraná","São Paulo"]
    var countriesinAsia = ["Japan","China"]
    var text :String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(text)
    }

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as? CustomHeader
        headerCell?.backgroundColor = .red
        headerCell?.textLabel?.text = text
        return headerCell
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
     let footer = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 40))
        footer.backgroundColor = .yellow
        var label = UILabel(frame: CGRect(x: 0, y: 0, width: footer.frame.size.width / 2, height: 20))
        label.text = "Footer"
        footer.addSubview(label)
        return footer
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
       return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch text {
        case "estadosBrasil":
            print(estadosBrasil.count)
            return estadosBrasil.count
        case "countriesinAsia":
            print(countriesinAsia.count)
            return countriesinAsia.count
        default:
            break
        }
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        switch text {
        case "countriesinAsia":
            cell.textLabel?.text = countriesinAsia[indexPath.row]
        case "estadosBrasil":
            cell.textLabel?.text = estadosBrasil[indexPath.row]
        default:
            break
        }
        return cell
    }
}
