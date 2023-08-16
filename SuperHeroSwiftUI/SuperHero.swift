//
//  SuperHero.swift
//  SuperHeroSwiftUI
//
//  Created by İbrahim Halid Bayrak on 16.08.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperHero : Identifiable {
    var id = UUID()
    var realName : String
    var name : String
    var imageName : String
    var city : String
    var job : String
    var coordinate : Coordinate
    
    var coordinateLocation : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
}

struct Coordinate {
    var latitude : Double
    var longitude : Double
}

let batman = SuperHero(realName: "Bruce Wayne", name: "Batman", imageName: "batman", city: "Gotham", job: "Bussines Man", coordinate: Coordinate(latitude: 41.8713679, longitude: -87.7669902))

let superman = SuperHero(realName: "Clark Kent", name: "Superman", imageName: "superman", city: "Kansas", job: "Journalist", coordinate: Coordinate(latitude: 39.0865207, longitude: -94.7089592))

let spiderman = SuperHero(realName: "Peter Parker", name: "Spider Man", imageName: "spiderman", city: "New York", job: "Photographer", coordinate: Coordinate(latitude: 40.7160119, longitude: -74.0524729))

let ironman = SuperHero(realName: "Tony Stark", name: "Iron Man", imageName: "ironman", city: "Los Angeles", job: "Bussines Man", coordinate: Coordinate(latitude: 33.8003309, longitude: -118.2261494))

let superHeroArray = [batman, superman, spiderman, ironman]
