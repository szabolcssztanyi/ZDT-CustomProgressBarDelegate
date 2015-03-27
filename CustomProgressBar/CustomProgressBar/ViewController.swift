//
//  ViewController.swift
//  CustomProgressBar
//
//  Created by Sztanyi Szabolcs on 16/10/14.
//  Copyright (c) 2014 Sztanyi Szabolcs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ProgressViewDelegate {

    @IBOutlet var progressView: ProgressView!

    @IBAction func presentProgressView(sender: AnyObject) {
        progressView.hideProgressView()
    }
    
    @IBAction func animateProgressView(sender: AnyObject) {
        progressView.animateProgressView()
    }
    
    // MARK: progressView delegate
    func progressViewProgressStarted() {
        // progress started
    }
    
    func progressViewProgressStopped() {
        // progress stopped
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 52.0/255.0, green: 170.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        progressView.delegate = self
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}

