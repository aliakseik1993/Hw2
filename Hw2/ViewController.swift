//
//  ViewController.swift
//  Hw2
//
//  Created by Ульяна Сексишмекси on 30.01.2020.
//  Copyright © 2020 Ульяна Сексишмекси. All rights reserved.
//
import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldRed: UITextField!
    @IBOutlet weak var textFieldGreen: UITextField!
    @IBOutlet weak var textFieldBlue: UITextField!
    
    @IBOutlet weak var viewWindow: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labalBlue: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
  
    @IBOutlet weak var buttonDone: UIButton!
    
    let numberToolbar: UIToolbar = UIToolbar()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //--- add UIToolBar on keyboard and Done button on UIToolBar ---//
     
        // textFieldRed value
        textFieldRed.text = String(Float(round(100*redSlider.value)/100))
        // textFieldGreen value
        textFieldGreen.text = String(Float(round(100*greenSlider.value)/100))
        // textFieldBlue value
        textFieldBlue.text = String(Float(round(100*blueSlider.value)/100))
           // label red value
           labelRed.text = String(Float(round(100*redSlider.value)/100))
    // label Green value
        labelGreen.text = String(Float(round(100*greenSlider.value)/100))
        // label Blue value
        labalBlue.text = String(Float(round(100*blueSlider.value)/100))
        //button Done
        numberToolbar.items=[
    
            UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: self, action: "buttonDoneaction")
        ]

        numberToolbar.sizeToFit()

        textFieldRed.inputAccessoryView = numberToolbar //do it for every relevant textfield if there are more than one
        textFieldGreen.inputAccessoryView = numberToolbar
        textFieldBlue.inputAccessoryView = numberToolbar
    }
    
    @IBAction func sliderGreenActionColor() {
        viewWindow.backgroundColor = UIColor.green
             let backgroundColorGreen = viewWindow.backgroundColor
             viewWindow.backgroundColor = backgroundColorGreen?.withAlphaComponent(CGFloat(greenSlider.value))
             // textFieldRed value
             textFieldGreen.text = String(Float(round(100*greenSlider.value)/100))
             // label red value
             labelGreen.text = String(Float(round(100*greenSlider.value)/100))
    }
    
    @IBAction func sliiderBlueActionColor1() {
        viewWindow.backgroundColor = UIColor.blue
                        let backgroundColorBlue = viewWindow.backgroundColor
                        viewWindow.backgroundColor = backgroundColorBlue?.withAlphaComponent(CGFloat(blueSlider.value))
                        // textFieldRed value
                        textFieldBlue.text = String(Float(round(100*blueSlider.value)/100))
                        // label red value
                        labalBlue.text = String(Float(round(100*blueSlider.value)/100))
    }

    @IBAction func sliderRedActionColor() {
        viewWindow.backgroundColor = UIColor.red
        let backgroundColorRed = viewWindow.backgroundColor
        viewWindow.backgroundColor = backgroundColorRed?.withAlphaComponent(CGFloat(redSlider.value))
        // textFieldRed value
        textFieldRed.text = String(Float(round(100*redSlider.value)/100))
        // label red value
        labelRed.text = String(Float(round(100*redSlider.value)/100))
        
//        viewWindow.backgroundColor = UIColor.backgroundColor.red(CGFloat(redSlider.value))
    }
    func allcolor() {
       
        sliiderBlueActionColor1()
        sliderGreenActionColor()
        sliderRedActionColor()
    }

    //done button
    
    @IBAction func buttonDoneaction() {
        
        redSlider.value = Float(textFieldRed.text!)!
        greenSlider.value = Float(textFieldGreen.text!)!
        blueSlider.value = Float(textFieldBlue.text!)!
        allcolor()
        
    
        view.endEditing(true)
        
    
    }
    func buttonfunction () {
        view.endEditing(true)
        
    }
 
    @IBAction func textfieldAction() {
    }
    
}

