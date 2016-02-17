//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var mugginDrizzy: UIButton!
    @IBOutlet var happyDrizzy: UIButton!
    @IBOutlet var wheelinDrizzy: UIButton!
    @IBOutlet var disgustedDrizzy: UIButton!
    @IBOutlet var nwtsDrizzy: UIButton!
    
    @IBOutlet var coleWorld: UIButton!
    @IBOutlet var steph: UIButton!
    @IBOutlet var kobe: UIButton!
    @IBOutlet var drake: UIButton!
    @IBOutlet var yao: UIButton!
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
        loadTargets()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func returnMessage() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("\n")
    }
    
    func deleteChar() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    
    func mugginDrizzyAction() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("When you come home, I'll be in the same bed that you left me in.")
    }
    
    func happyDrizzyAction() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Haaaaaaaaa!")
    }
    
    func disgustedDrizzyAction() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Oh Man! Not Again!")
    }
    
    func wheelinDrizzyAction() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Last name walk, First name never.")
    }
    
    func nwtsDrizzyAction() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Nothing Was The Same.")
    }
    
    func ColeWorldAction() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("It's Cole! Real Cole! I need a sweater!")
    }
    
    func stephAction() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Chef Curry with the pot boy!")
    }
    
    func kobeAction() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Pass? Nah I'll shoot thanks.")
    }
    
    func drakeAction() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("I'm Waaaay up, I feel blessed.")
    }
    
    func yaoAction() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("LMAO!")
    }
    
    func loadTargets() {
        returnButton.addTarget(self, action: "returnMessage", forControlEvents: .TouchUpInside)
        deleteButton.addTarget(self, action: "deleteChar", forControlEvents: .TouchUpInside)
        
        mugginDrizzy.addTarget(self, action: "mugginDrizzyAction", forControlEvents: .TouchUpInside)
        happyDrizzy.addTarget(self, action: "happyDrizzyAction", forControlEvents: .TouchUpInside)
        wheelinDrizzy.addTarget(self, action: "wheelinDrizzyAction", forControlEvents: .TouchUpInside)
        disgustedDrizzy.addTarget(self, action: "disgustedDrizzyAction", forControlEvents: .TouchUpInside)
        nwtsDrizzy.addTarget(self, action: "nwtsDrizzyAction", forControlEvents: .TouchUpInside)
        
        coleWorld.addTarget(self, action: "ColeWorldAction", forControlEvents: .TouchUpInside)
        steph.addTarget(self, action: "stephAction", forControlEvents: .TouchUpInside)
        kobe.addTarget(self, action: "kobeAction", forControlEvents: .TouchUpInside)
        drake.addTarget(self, action: "drakeAction", forControlEvents: .TouchUpInside)
        yao.addTarget(self, action: "yaoAction", forControlEvents: .TouchUpInside)
    }
    
    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
    }
    

}
