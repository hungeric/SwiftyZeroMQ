//
// Copyright (c) 2016-2017 Ahmad M. Zawawi (azawawi)
//
// This package is distributed under the terms of the MIT license.
// Please see the accompanying LICENSE file for the full text of the license.
//

import UIKit
import SwiftyZeroMQ

class ViewController: UIViewController {

    @IBOutlet weak var versionTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Show version information
        let frameworkVersion = "0"
        let version = version.versionString
        versionTextView.text =
        "SwiftyZeroMQ version is \(frameworkVersion)\n" +
            "ZeroMQ library version is \(version)"
    }
    
    var version : (major: Int, minor: Int, patch: Int, versionString: String) {
        var major: Int32 = 0
        var minor: Int32 = 0
        var patch: Int32 = 0
        zmq_version(&major, &minor, &patch)
        let versionString = "\(major).\(minor).\(patch)"

        return ( Int(major), Int(minor), Int(patch), versionString)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

