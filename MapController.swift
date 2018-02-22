//
//  MapController.swift
//  act6677
//
//  Created by Alumno IDS on 20/02/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit
import GoogleMaps

class MapController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logout()
        
        //Themes 4,5
        
        let user = User(name: "Juan Cabral", image: "penguin.png")
        let post = Post(text: "Swift ", imageUrl: "post_image.png", user: user)
        
        post.incrementComments()
        post.incrementComments()
        post.incrementLikes()
        post.incrementLikes()
        
        print("comments: \(post.getComments()); likes: \(post.getLikes());")
        print("tuple: \(post.getCounters()); \(post.getDisplayTimeAgo(date:  Date(timeIntervalSinceNow: -60*60*24*7*4)))")
        print("userId: \(String(describing: post.user?.id))")
        
        
        view.backgroundColor = UIColor.blue
        GMSServices.provideAPIKey("AIzaSyAYR0vkc5GULJwkcBvvQ5VQ603dpSJ6rXM")
        
        //20.7321983,-103.3736167,16.05
        let camera = GMSCameraPosition.camera(withLatitude: 20.7321983, longitude: -103.3736167, zoom: 14.05)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 20.735026, longitude: -103.370962)
        marker.title = "Tec Milenio"
        marker.snippet = "Mexico"
        marker.map = mapView
        
        //20.731995,-103.38216,
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2D(latitude: 20.731995, longitude: -103.38216)
        marker2.title = "Auditorio Telmex"
        marker2.snippet = "Mexico"
        marker2.map = mapView
        
        
    }
    
    //themes 6,7
    
    //we have x number of near positions
    //we have a radius
    //we have the user position
    //set of 20 positions
    
    //var point = Point<String>(x: 1, y:2, value, "Juan")
    //var list : [Point<String>] = [Point<String> (x:2.0, y: 3.0), Point<String>(x:3.0, y:4.0)]
    
    
    //Point
    //longitud
    //latitud
    
    //var p1 = Point(12.2,-12.2)
    //list.append(p1)
    
    //Enum Cardinality
    // North
    // West
    // South
    // East
    //we need to find the closest position given a user position
    
    // if x== 0 then we throw an exception
    
    //func getXNumbers(list<Point>, userPosition: Point, radius:Int) -> list<Tuple(Point,Cardinality)> throws
    //function will throw an exception if there's no point at all
    //guard check and render the closest x euclidean distance in the map
    
    //userposition -> render in the map if and only if there's no exception
    
    func logout(){
        let loginController: LoginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
    
}
