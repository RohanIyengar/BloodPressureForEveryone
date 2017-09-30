//
//  BPEPatientDetailViewController.swift
//  BPForEveryone
//
//  Created by Chris Blackstone on 9/29/17.
//  Copyright © 2017 BlackstoneBuilds. All rights reserved.
//

import UIKit
import os.log

class BPEPatientDetailViewController: UIViewController {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var analysisGroupLabel: UILabel! //Children vs Adults
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var lastBPDateTimeLabel: UILabel!
    @IBOutlet weak var lastBPMeasurmentLabel: UILabel!
    @IBOutlet weak var lastBPPercentileLabel: UILabel!
    @IBOutlet weak var lastBPReccomendationsLabel: UITextView!
    
    var patientId: Int = 0
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //May not be needed... 'Edit Patient' button linked to EditPatient View in Storyboard.
    @IBAction func editPatient(_ sender: Any) {
        
    }
    
    //May not be needed... 'Record BP!' button linked to RecordBP View in Storyboard.
    @IBAction func recordNewBP(_ sender: Any) {
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let patient = Config.patients[patientId]

        firstNameLabel.text = patient.firstName
        lastNameLabel.text = patient.lastName
        dateOfBirthLabel.text = patient.birthDate.description
        analysisGroupLabel.text = "N/A"
        heightLabel.text = patient.heightInMeters.description
        weightLabel.text = "N/A"
        lastBPDateTimeLabel.text = "N/A"
        lastBPPercentileLabel.text = "N/A"
        lastBPMeasurmentLabel.text = "N/A"
        lastBPReccomendationsLabel.text = "N/A"
    }
}