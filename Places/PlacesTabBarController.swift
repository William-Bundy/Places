//
//  PlacesTabBarController.swift
//  Places
//
//  Created by William Bundy on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit
protocol PlaceModelConsumer
{
	func setController(_ c:PlaceController);
}

class PlacesTabBarController: UITabBarController
{
	var controller:PlaceController = PlaceController()
	
    override func viewDidLoad()
	{
        super.viewDidLoad()

		for child in childViewControllers {
			if let pmc = child as? PlaceModelConsumer {
				pmc.setController(controller)
			}
		}
    }
}
