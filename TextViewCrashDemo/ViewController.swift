//
//  ViewController.swift
//  TextViewCrashDemo
//
//  Created by Ringo Müller on 18.10.21.
//
import UIKit

class ViewController: UIViewController {
  
  let tv1 = UITextView(frame: CGRect(x: 10, y: 110, width: 200, height: 40))
  let tv2 = UITextView(frame: CGRect(x: 10, y: 210, width: 200, height: 40))
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    self.view.addSubview(tv1)
    self.view.addSubview(tv2)
    
    tv1.backgroundColor = .white
    tv1.text = "Hello World!"//placeholder
    
    tv2.backgroundColor = .white
    tv2.text = "Hello World!"
    
    tv1.delegate = self
    tv2.delegate = self
    
    self.view.frame = UIScreen.main.bounds
  }
}

extension ViewController: UITextViewDelegate {
  
  public func textViewDidBeginEditing(_ textView: UITextView)
  {
    if textView.text == "Hello World!" {//Remove the placeholder text on begin
      textView.text = "" //Crash!
    }
  }
}
