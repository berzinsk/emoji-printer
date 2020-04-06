//
//  ViewController.swift
//  emoji-printer
//
//  Created by karlis.berzins on 06/04/2020.
//  Copyright © 2020 berzinsk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DetailViewControllerDelegate {
  @IBOutlet weak var textView: UITextView!
  var emoji = [String]()

  override func viewDidLoad() {
    super.viewDidLoad()

  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "showDetailSegue", let vc = segue.destination as? DetailViewController {
      vc.delegate = self
    }
  }

  // MARK: - DetailViewControllerDelegate -
  func add(emoji: String) {
    self.emoji.append(emoji)

    textView.text = self.emoji.joined(separator: " ")
  }
}
