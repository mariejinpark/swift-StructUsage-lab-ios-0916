//
//  ViewController.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var characterImageView: UIImageView!
    
    var finn: Character!
    var jake: Character!
    var bubblegum: Character!
    var bmo: Character!
    var lemongrab: Character!
    var lsp: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createAllCharacters()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender.titleLabel!.text! {
        case "Finn":
            updateViews(with: finn)
        case "Jake":
            updateViews(with: jake)
        case "Bubblegum":
            updateViews(with: bubblegum)
        case "BMO":
            updateViews(with: bmo)
        case "Lemongrab":
            updateViews(with: lemongrab)
        case "LSP":
            updateViews(with: lsp)
        default:
            break
        }
    }
    
    func createAllCharacters() {
        finn = Character(name: "Finn The Human", species: "Human", occupation: "Hero", powerLevel: 50.0)
        jake = Character(name: "Jake The Dog", species: "Dog", occupation: "Loser", powerLevel: 25.0)
        bubblegum = Character(name: "Princess Bubblegum", species: "Human", occupation: "Princess", powerLevel: 15.0)
        bmo = Character(name: "BMO", species: "nothing", occupation: "Whocares", powerLevel: 80.0)
        lemongrab = Character(name: "Lemongrab", species: "Lemon", occupation: "Fruit", powerLevel: 120.0)
        lsp = Character(name: "Lumpy Space Princess", species: "Human", occupation: "Princess", powerLevel: 2000.0)
    }
  
    func updateViews(with character: Character) {
        nameLabel.text = character.name
        occupationLabel.text = character.occupation
        speciesLabel.text = character.species
        characterImageView.image = character.displayImage()
    }
}

