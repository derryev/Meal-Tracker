//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Eva Derryberry on 4/22/24.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] = [
        Meal(name: "Breakfast",
             food: [Food(name: "eggs", description:"scrambled"),
                    Food(name: "juice", description: "orange"),
                    Food(name: "toast", description: "lighly buttered")]),
        Meal(name: "lunch",
             food: [Food(name: "sandwich", description: "grilled cheese"),
                    Food(name: "iced tea", description: "unsweetened")]),
        Meal(name: "dinner",
             food: [Food(name: "pasta", description: "penne with alfredo sauce"),
                    Food(name: "salad", description: "Greek"),
                    Food(name: "garlic bread", description: "extra cheese"),
                    Food(name: "water", description: "with a slice of lemon")
                    ])
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)

        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }

}
