//
//  CustomFont.swift
//  

import UIKit

var kRegularFontName    = "Baloo2-Regular"
var kMediumFontName     = "Baloo2-Medium"
var kBoldFontName       = "Baloo2-Bold"
var kExtraBoldFontName  = "Baloo2-ExtraBold"
var kSemiBoldFontName   = "Baloo2-SemiBold"

var kWillRobinson       = "WillRobinson"
var kBubblegum          = "BubblegumSans-Regular"

func fontNameFromType(fontType : String) -> String {
    switch fontType.lowercased() {
    case "regular":
        return kRegularFontName
    case "medium":
        return kMediumFontName
    case "bold":
        return kBoldFontName
    case "semibold":
        return kSemiBoldFontName
    case "extrabold":
        return kExtraBoldFontName
    case "willrobinson":
        return kWillRobinson
    case "bubblegum":
        return kBubblegum
    default:
        return kRegularFontName
    }
}

extension UITextField {
    @IBInspectable var fontType : String?  {
        get {
            return self.font?.familyName
        }
        set {
            self.font = UIFont(name: fontNameFromType(fontType: newValue!), size: (self.font?.pointSize)!)
            
        }
    }
    
    @IBInspectable var returnButton : String!  {
        get {
            return "y"
        }
        set {
            if newValue.lowercased() == "y" || newValue.lowercased() == "yes" {
                let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(hideKeyboard))
                let flexableItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
                let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 40))
                toolbar.tintColor = UIColor.darkGray
                toolbar.barTintColor = UIColor.lightGray
                toolbar.setItems([flexableItem,doneItem], animated: false)
                //toolbar.setBackgroundImage(UIImage(named: ""), forToolbarPosition: .any, barMetrics: .default)
                self.inputAccessoryView = toolbar
            }
        }
    }
    
    @objc func hideKeyboard() -> Void {
        self.resignFirstResponder()
    }

}

extension UILabel {
    @IBInspectable var fontType : String?  {
        get {
            return self.font?.familyName
        }
        set {
            self.font = UIFont(name: fontNameFromType(fontType: newValue!), size: (self.font?.pointSize)!)
        }
    }
}

extension UITextView {
    @IBInspectable var fontType : String?  {
        get {
            return self.font?.familyName
        }
        set {
            self.font = UIFont(name: fontNameFromType(fontType: newValue!), size: (self.font?.pointSize)!)
        }
    }
    
    @IBInspectable var returnButton : String!  {
        get {
            return "y"
        }
        set {
            if newValue.lowercased() == "y" || newValue.lowercased() == "yes" {
                let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(hideKeyboard))
                let flexableItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
                let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 40))
                toolbar.tintColor = UIColor.darkGray
                toolbar.barTintColor = UIColor.lightGray
                toolbar.setItems([flexableItem,doneItem], animated: false)
                //toolbar.setBackgroundImage(UIImage(named: ""), forToolbarPosition: .any, barMetrics: .default)
                self.inputAccessoryView = toolbar
            }
        }
    }
    
    @objc func hideKeyboard() -> Void {
        self.resignFirstResponder()
    }
    
}

extension UIButton {
    @IBInspectable var fontType : String?  {
        get {
            return self.titleLabel?.font?.familyName
        }
        set {
            self.titleLabel?.font = UIFont(name: fontNameFromType(fontType: newValue!), size: (self.titleLabel?.font?.pointSize)!)
        }
    }
}

