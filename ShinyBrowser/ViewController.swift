/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The view controller contains a web view for viewing the desktop or mobile version of a website.
*/

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var webViewContainer: UIView!

    let webView: WKWebView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()

        webView.translatesAutoresizingMaskIntoConstraints = false
        webViewContainer.addSubview(webView)

        NSLayoutConstraint.activate([
            webView.widthAnchor.constraint(equalTo: webViewContainer.widthAnchor),
            webView.heightAnchor.constraint(equalTo: webViewContainer.heightAnchor)
        ])

        webView.load(URLRequest(url: URL(string: "https://stefkors.github.io/dev")!))
    }
}
