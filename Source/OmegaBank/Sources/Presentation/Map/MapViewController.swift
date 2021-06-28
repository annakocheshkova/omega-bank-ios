//
//  MapViewController.swift
//  OmegaBank
//
//  Created by Konsantin Makhov on 28.06.2021.
//  Copyright © 2021 RedMadRobot. All rights reserved.
//

import CoreLocation
import MapKit
import UIKit

final class MapViewController: PageViewController {
    
    // MARK: - Private properties
    
    private var locationManager = CLLocationManager()
    
    // MARK: - IBOutlets
    
    @IBOutlet private var mapView: MKMapView!
    
    // MARK: - Init
    
    static func make(delegate: ProfileViewControllerDelegate?) -> UIViewController {
        let controller = MapViewController()
        controller.delegate = delegate
        let navigationController = NavigationController(rootViewController: controller)
        
        return navigationController
    }
    
    init() {
        super.init(title: "Map", tabBarImage: #imageLiteral(resourceName: "map"))
        
        navigationItem.title = "Offices"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}