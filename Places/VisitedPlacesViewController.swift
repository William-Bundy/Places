//
//  VisitedPlacesViewController.swift
//  Places
//
//  Created by William Bundy on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class VisitedPlacesViewController: UIViewController, PlaceModelConsumer, PlacesTableDelegate
{
	var controller:PlaceController!
	var map:MapViewController!
	var table:PlacesTableViewController!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
	{
		if let tableVC = segue.destination as? PlacesTableViewController {
			table = tableVC
			table.controller = controller
			table.delegate = self
		} else if let mapVC = segue.destination as? MapViewController {
			map = mapVC
		}
    }

	func setController(_ c: PlaceController) {
		controller = c
	}

	func locationSelected(_ place:Place) {
		map.location = place.location
	}

}
