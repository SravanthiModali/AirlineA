//
//  ViewController.swift
//  AirlineA
//
//  Created by iOS on 2/22/18.
//  Copyright © 2018 Charles Hoot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var nameTF: UITextField!    
    @IBOutlet weak var homebaseTF: UITextField!
    @IBOutlet weak var citiesFlownTF: UITextField!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let name = nameTF.text
        let home = homebaseTF.text
        let cities = citiesFlownTF.text
        let allCities = cities?.components(separatedBy: ",")
        FAA.addNewAirline(Airline(name: name!, profits: 0.0, homebase: home!, numEmployees: 100, citiesFlown: allCities!))
    }

}

