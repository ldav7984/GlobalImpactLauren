//
//  ImpactViewController.swift
//  GlobalImpactLauren
//
//  Created by Davis, Lauren on 1/10/19.
//  Copyright © 2019 Davis, Lauren. All rights reserved.
//

import UIKit
import MapKit

public class ImpactViewController: UIViewController
{
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var AnimateButton: UIButton!
    @IBOutlet weak var Image: UIImageView!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func AnimateButton(_ sender: UIButton)
    {
        let impactLocation = CLLocationCoordinate2D(latitude: 5, longitude: 95)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 10.05, longitudeDelta: 10.05)
        let impactRegion = MKCoordinateRegion(center: impactLocation, span: mapSpan)
        mapView.animatedZoom(zoomRegion: impactRegion, duration: 2.5)
    }
    
    
}


extension MKMapView
{
    public func animatedZoom(zoomRegion:MKCoordinateRegion, duration:TimeInterval)
    {
        MKMapView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 10, options: UIView.AnimationOptions.curveEaseIn, animations: { self.setRegion(zoomRegion, animated: true)}, completion: nil)
    }
}

