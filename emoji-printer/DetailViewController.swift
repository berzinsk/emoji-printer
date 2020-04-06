//
//  DetailViewController.swift
//  emoji-printer
//
//  Created by karlis.berzins on 06/04/2020.
//  Copyright © 2020 berzinsk. All rights reserved.
//

import UIKit

protocol DetailViewControllerDelegate {
  func add(emoji: String)
}

class DetailViewController: UIViewController {
  @IBOutlet weak var inputField: UITextField!

  var delegate: DetailViewControllerDelegate?

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func submitAction(_ sender: UIButton) {
    guard let emoji = inputField.text else { return }
    delegate?.add(emoji: emoji)
  }
}
