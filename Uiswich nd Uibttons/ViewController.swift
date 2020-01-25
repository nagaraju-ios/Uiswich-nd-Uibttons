//
//  ViewController.swift
//  Uiswich nd Uibttons
//
//  Created by THOTA NAGARAJU on 9/16/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var Light1: UISwitch!
    @IBOutlet weak var Light2: UISwitch!
    @IBOutlet weak var FanSwtch: UISwitch!
    @IBOutlet weak var fan2: UISwitch!
    @IBOutlet weak var Ac: UISwitch!
    @IBOutlet weak var projctor: UISwitch!
    @IBOutlet weak var CCCam: UISwitch!
    @IBOutlet weak var mainswitch: UISwitch!
    @IBOutlet weak var speaker: UISwitch!
  
    @IBOutlet weak var TextLbl: UILabel!
    
   
    // main switch details
    
    @objc func mainswicth(){
        if (mainswitch .isOn == false)
        {
        Light1.setOn(false, animated: true)
        Light1.isEnabled = false
        Light2.setOn(false, animated: true)
        Light2.isEnabled = false
        FanSwtch.setOn(false, animated: true)
        FanSwtch.isEnabled = false
        fan2.setOn(false, animated: true)
        fan2.isEnabled = false
        projctor.setOn(false, animated: true)
        projctor.isEnabled = false
        Ac.setOn(false, animated: true)
        Ac.isEnabled = false
        CCCam.setOn(false, animated: true)
        CCCam.isEnabled = false
        speaker.setOn(false, animated: true)
        speaker.isEnabled = false

        TextLbl.text = "Main switch is OFF so, Total switeches going to be OFF"
        TextLbl.numberOfLines =  0
        TextLbl.textColor = UIColor.white
        }
        else{
        mainswitch .isOn == true

            Light1.setOn(false, animated: true)
             Light1.isEnabled = true
            Light2.setOn(false, animated: true)
             Light2.isEnabled = true
            FanSwtch.setOn(false, animated: true)
             FanSwtch.isEnabled = true
            fan2.setOn(false, animated: true)
             fan2.isEnabled = true
            projctor.setOn(false, animated: true)
             projctor.isEnabled = true
            Ac.setOn(false, animated: true)
             Ac.isEnabled = true
            CCCam.setOn(true, animated: true)
             CCCam.isEnabled = true
            speaker.setOn(false, animated: true)
             speaker.isEnabled = true
            
            TextLbl.text = "Main switch is ON so, CCcam switech going to be ON and remaining are OFF"
            TextLbl.numberOfLines =  0
            TextLbl.textColor = UIColor.red
    }
    }
    
   //  light switch details
    
    @objc func lightSwitchs()
    {
        if (Light1.isOn == true || Light2.isOn == true)
        {
           speaker.setOn(false, animated: true)
           projctor.setOn(false, animated: true)
            
            TextLbl.text = "Lights switch is ON so, Projector and Speakers are going to be  OFF"
            TextLbl.numberOfLines =  0
        }else
        {
            projctor.setOn(true , animated: true)
            speaker.setOn(true, animated: true)
            
            TextLbl.text = "Lights switch is OFF so, Projector and Speakers are going to be  ON"
            TextLbl.numberOfLines =  0
        }
        
    }
    
    // Fans switches details
    
    @objc func fansswitchs(){
        
        if (FanSwtch.isOn == true && fan2.isOn == true)
        {
            Ac.setOn(false , animated: true)
            TextLbl.text = "Fans switchs is ON so, AC switech going is to be OFF "
            TextLbl.numberOfLines =  0
        }else
        {
            Ac.setOn(true , animated: true)
            TextLbl.text = "Fans switchs is OFF so, AC switech  is going to be ON "
            TextLbl.numberOfLines =  0
        }
    }
    
    // Ac switch details
    
    @objc func acswitch(){
        if (Ac.isOn == true)
        {
            FanSwtch.setOn(false, animated: true)
            fan2.setOn(false, animated: true)
            
            TextLbl.text = "AC  switchs is ON so, Fans are is going to be OFF "
            TextLbl.numberOfLines =  0
        }else
        {
            FanSwtch.setOn(true , animated: true)
            fan2.setOn(true , animated: true)
            
            TextLbl.text = "AC  switchs is OFF so, Fans are is going to be ON "
            TextLbl.numberOfLines =  0
        }
    }
    
    // Projector switch details
    
    @objc func projectorswitch(){
        if (projctor.isOn == false)
        {
            Light1.setOn(true, animated: true)
            Light2.setOn(true , animated: true)
            speaker.setOn(false, animated: true)
            
            TextLbl.text = "projector  switch is OFF so, Lights are is going to be ON and speaker is giong to be OFF "
            TextLbl.numberOfLines =  0
        }else
        {
            Light1.setOn(false , animated: true)
            Light2.setOn(false , animated: true)
             speaker.setOn(true, animated: true)
            
            TextLbl.text = "projector  switch is ON so, Lights are is going to be OFF and speaker is giong to be ON "
            TextLbl.numberOfLines =  0
        }
    
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         Lights()
         fans()
         ac()
         projct()
         mainswth()
         CCcam()
    }
    
    // lights switches func details
    
    func Lights()
    {
    
        Light1.addTarget(self, action: #selector(lightSwitchs), for: UIControl.Event.valueChanged)
        Light1.tintColor = UIColor.blue
        Light1.thumbTintColor = UIColor.red
        view.addSubview(Light1)
        
        Light2.addTarget(self, action: #selector(lightSwitchs), for: UIControl.Event.valueChanged)
        Light2.tintColor = UIColor.blue
        Light2.thumbTintColor = UIColor.red
        view.addSubview(Light2)
        
        
    }
    
    // Fans switches func details
    
    func fans()
    {
        
        FanSwtch.addTarget(self, action: #selector(fansswitchs), for: UIControl.Event.valueChanged)
        FanSwtch.tintColor = UIColor.blue
        FanSwtch.thumbTintColor = UIColor.red
        view.addSubview(FanSwtch)
        
        fan2.addTarget(self, action: #selector(fansswitchs), for: UIControl.Event.valueChanged)
        fan2.tintColor = UIColor.blue
        fan2.thumbTintColor = UIColor.red
        view.addSubview(fan2)
        
        
    }
    
    // AC switches func details
    
    func ac()  {
       Ac.addTarget(self, action: #selector(acswitch), for: UIControl.Event.valueChanged)
        Ac.tintColor = UIColor.blue
        Ac.thumbTintColor = UIColor.red
        view.addSubview(Ac)
    }
    
    // projctor switches func details
    
    func projct()  {
        projctor.addTarget(self, action: #selector(projectorswitch), for: UIControl.Event.valueChanged)
        projctor.tintColor = UIColor.blue
        projctor.thumbTintColor = UIColor.red
        view.addSubview(projctor)
    }
    
    // MainSwitch func details
    
    func mainswth()  {
        mainswitch.addTarget(self, action: #selector( mainswicth), for: UIControl.Event.valueChanged)
        mainswitch.tintColor = UIColor.green
        mainswitch.thumbTintColor = UIColor.blue
        view.addSubview(mainswitch)
    }
    
    // CCcam switch func Details
    
    func CCcam()  {
        CCCam.tintColor = UIColor.blue
        CCCam.thumbTintColor = UIColor.red
        speaker.tintColor = UIColor.blue
        speaker.thumbTintColor = UIColor.red
        view.addSubview(CCCam)
    }
    
    
}

