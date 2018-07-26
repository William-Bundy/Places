//
//  PlaceModel.swift
//  Places
//
//  Created by William Bundy on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import Foundation

struct Place {
	var name: String
	// if we had anonymous unions....
	var latitude:Double
	var longitude:Double
	var location:(latitude:Double, longitude:Double) {
		get {
			return (latitude, longitude)
		}
	}
}

class PlaceController
{
	var places:[Place] = [];

	func add(_ p:Place)
	{
		places.append(p)
	}

	func create(_ name:String, _ latitude:Double, _ longitude:Double) -> Place
	{
		let p = Place(name:name, latitude:latitude, longitude:longitude)
		add(p)
		return p
	}

}
