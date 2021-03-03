//
//  ViewController.swift
//  iOS Assignment 2
//
//  Created by w0415091 on 2021-02-22.
//  Copyright © 2021 w0415091. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var switchLeft: UISwitch!
    @IBOutlet weak var switchMiddle: UISwitch!
    @IBOutlet weak var switchRight: UISwitch!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sliderLabel.text = "50";
        
        datePicker.datePickerMode = .dateAndTime
        
        
       

    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        sliderLabel.text = "\(lroundf(sender.value))";

    }
    

    @IBAction func toggleControls(_ sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 0)  {
                  switchRight.isHidden = true;
                  switchLeft.isHidden = true;
                  switchMiddle.isHidden = true;
            
                  image1.isHidden = true;
                  image2.isHidden = true;
                  image3.isHidden = true;
                  
                  datePicker.isHidden = true;
            
                  sliderLabel.isHidden = false;
                  slider.isHidden = false;

                  
              } else if (sender.selectedSegmentIndex == 1)  {
                                switchRight.isHidden = true;
                                switchLeft.isHidden = true;
                                switchMiddle.isHidden = true;
                          
                                image1.isHidden = true;
                                image2.isHidden = true;
                                image3.isHidden = true;
                                
                                datePicker.isHidden = false;
                          
                                sliderLabel.isHidden = true;
                                slider.isHidden = true;

               
        } else {   switchRight.isHidden = false;
                        switchLeft.isHidden = false;
                        switchMiddle.isHidden = false;
                  
                        image1.isHidden = true;
                        image2.isHidden = true;
                        image3.isHidden = true;
                        
                        datePicker.isHidden = true;
                  
                        sliderLabel.isHidden = true;
                        slider.isHidden = true;
}
    }
    
    
    
    @IBAction func buttonChanged(_ sender: UIButton) {
        let controller = UIAlertController(title:"Actionsheet Actions", message: "Discover which elements are currently visible on the screen!", preferredStyle:.actionSheet);
                           
                           let dismissAction = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil);
                          
                             let popupAlertAction = UIAlertAction(title: "Show Alert", style: .destructive, handler: { action in
                                        
                               var msg = "";
                                if (self.image1.isHidden == false) {
                              msg = "Image elements are visible";
                                } else if (self.datePicker.isHidden == false) {
                                    msg = "Date Picker element is visible"
                                } else if (self.slider.isHidden == false) {
                                    msg = "Date Picker element is visible"
                                } else {
                                    msg = "Button and Switches are visible"
                                }
                                    
                              let controller2 = UIAlertController (title: "Alert Message", message: msg, preferredStyle: .alert);
                              let closeAction = UIAlertAction(title: "Close", style: .cancel, handler: nil);
                              controller2.addAction(closeAction);
                              self.present(controller2, animated: true, completion: nil);
                             });
                             
              
                          
                           controller.addAction(popupAlertAction)
                           controller.addAction(dismissAction);
                           
                           if let ppc=controller.popoverPresentationController {
                               ppc.sourceView = sender;
                               ppc.sourceRect = sender.bounds;
                           }
                           
                           present(controller, animated:true, completion: nil);
                     
    }
    
    
    @IBAction func switchChanged(_ sender:
        UISwitch) {
        if(switchLeft.isOn == true) {
            image1.isHidden = false;
        } else if (switchMiddle.isOn == true) {
            image2.isHidden = false;
        } else {
            image3.isHidden = false;
        }
    }

    @IBAction func datePickerChanged(_ sender: UIDatePicker) {
      
    }
}

