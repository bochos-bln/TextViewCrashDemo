//
//  ViewController.swift
//  TextViewCrashDemo
//
//  Created by Ringo Müller on 18.10.21.
//
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let tv = PlaceholderTextView(frame: CGRect(x: 10, y: 110, width: 200, height: 40))
    let tv2 = PlaceholderTextView(frame: CGRect(x: 10, y: 210, width: 200, height: 40))
    self.view.addSubview(tv)
    self.view.addSubview(tv2)
    tv.backgroundColor = .white
    tv.placeholder = "Hello World!"
    
    tv2.backgroundColor = .white
    tv2.placeholder = "Hello World!"
    self.view.frame = UIScreen.main.bounds
  }
}

class PlaceholderTextView: UITextView, UITextViewDelegate {
  
  var placeholder : String? {
    didSet { verifyPlaceholder() }
  }
  
  func verifyPlaceholder(){
    if (self.text == "")
    {
      self.text = placeholder
      self.textColor = .lightGray
    }
    else {
      self.textColor = .blue
    }
  }
  
  override func willMove(toSuperview newSuperview: UIView?) {
    super.willMove(toSuperview: newSuperview)
    self.delegate = self
  }
  
  public func textViewDidBeginEditing(_ textView: UITextView)
  {
    if (self.text == placeholder)
    {
//      textView.text = "" //Crash!
      textView.textColor = .blue
    }
  }
}
