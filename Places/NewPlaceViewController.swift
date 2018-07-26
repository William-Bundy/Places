//
//  NewPlaceViewController.swift
//  Places
//
//  Created by William Bundy on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class NewPlaceViewController: UIViewController, PlaceModelConsumer
{
	var controller:PlaceController!
	func setController(_ c: PlaceController) {
		controller = c
	}

	@IBOutlet weak var nameField: UITextField!
	@IBOutlet weak var latitudeField: UITextField!
	@IBOutlet weak var longitudeField: UITextField!
	@IBAction func savePlace(_ sender: Any)
	{
		let name = nameField.text ?? "Untitled Location"
		guard let lat = Double(latitudeField.text ?? ""),
			let lon = Double(longitudeField.text ?? "") else {
				return
		}
		let _ = controller.create(name, lat, lon)
	}


}
