//
//  ViewController.swift
//  displayingMultipleObjects
//
//  Created by Saransh G on 7/21/19.
//  Copyright © 2019 Saransh G. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        // Create a new scene
        let scene = SCNScene()
        
        let firstCube = SCNBox(width: 0.2, height: 0.2, length: 0.2, chamferRadius: 0.05)
        
        let FirstCubeMaterial = SCNMaterial()
        FirstCubeMaterial.diffuse.contents = UIColor.orange
        
        firstCube.materials = [FirstCubeMaterial]
        
        let FirstCubeNode = SCNNode(geometry: firstCube )
        FirstCubeNode.position = SCNVector3(x: 0, y: 0.2, z: -1)
        
        let rectangle = SCNBox(width: 0.2, height: 0.2, length: 0.4, chamferRadius: 0)
        let rectangleMaterial = SCNMaterial()
        rectangleMaterial.diffuse.contents = UIColor.blue
        
        rectangle.materials = [rectangleMaterial]
        
        let rectangleNode = SCNNode(geometry: rectangle)
        rectangleNode.position = SCNVector3(x: 0, y: 0.5, z: -1)
        
        // Set the scene to the view
        sceneView.scene = scene
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
