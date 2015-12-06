//
//  ViewController.swift
//  ChemicalVisualizer  Copyright (c) 2015 Garth MacKenzie
//
//  Created by iMac 27 on 2015-12-01.
//
//


import UIKit
import SceneKit

class ViewController: UIViewController {
  @IBOutlet weak var geometryLabel: UILabel!
  @IBOutlet weak var sceneView: SCNView!
    // Geometry
    var geometryNode: SCNNode = SCNNode()
    //if you navigate your scene with the default camera controls (rotation, specifically), you’ll notice an odd effect: you might expect the box to rotate and the lighting to stay in place but, in fact, it’s actually the camera rotating around the scene.
    // Gestures
    var currentAngle: Float = 0.0
    //once you have more complex models with multiple geometry sources, it’ll be much easier to manage them as a single node – hence the addition of geometryNode. Furthermore, currentAngle will help modify the y-axis rotation of geometryNode exclusively, leaving the rest of your scene nodes untouched...see panGesture
  // MARK: Lifecycle
  override func viewDidLoad() {
      super.viewDidLoad()
  }
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    sceneSetup()
    geometryLabel.text = "Atoms\n"
    geometryNode = Atoms.allAtoms()
    sceneView.scene!.rootNode.addChildNode(geometryNode)
  }
    // MARK: Scene
    func sceneSetup() {
        let scene = SCNScene()
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light!.type = SCNLightTypeAmbient
        ambientLightNode.light!.color = UIColor(white: 0.67, alpha: 1.0)  //67% white color
        scene.rootNode.addChildNode(ambientLightNode)
        //Ambient light is a basic form of lighting that illuminates all objects in a scene evenly, with a constant intensity from all directions, much like cloud-filtered sunlight. It’s a great addition to most scenes when you want a more natural look. Otherwise, objects in shadow would be pure black
        let omniLightNode = SCNNode()
        omniLightNode.light = SCNLight()
        omniLightNode.light!.type = SCNLightTypeOmni
        omniLightNode.light!.color = UIColor(white: 0.75, alpha: 1.0)
        omniLightNode.position = SCNVector3Make(0, 50, 50)
        scene.rootNode.addChildNode(omniLightNode)
        //omnidirectional light, or point light. It’s similar to ambient light in that it has constant intensity, but differs because it has a direction. The light’s position relative to other objects in your scene determines its direction. Your box node’s default position is (0, 0, 0), so positioning your new light node at (0, 50, 50) means that it’s above and in front...A position of (0, 50, 50) doesn’t mean 50 meters, miles, or light years; it’s simply 50 units
        //experiment with directional (SCNLightTypeDirectional) and spot (SCNLightTypeSpot) lights
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
//        cameraNode.camera?.usesOrthographicProjection = true   //default projection type of a SCNCamera is perspective
        cameraNode.position = SCNVector3Make(0, 0, 25)
        scene.rootNode.addChildNode(cameraNode)
        //The default projection settings are spot-on for a basic scene, so you don’t have to modify the camera’s field of view, focal range or other properties. The only thing you need to define is its position, conveniently set right in front
        
//        let boxGeometry = SCNBox(width: 10.0, height: 10.0, length: 10.0, chamferRadius: 1.0)
//        let boxNode = SCNNode(geometry: boxGeometry)
//        scene.rootNode.addChildNode(boxNode)
//        geometryNode = boxNode
        
        let panRecognizer = UIPanGestureRecognizer(target: self, action: "panGesture:")
        sceneView.addGestureRecognizer(panRecognizer)
        
        sceneView.scene = scene
//        sceneView.autoenablesDefaultLighting = true
//        sceneView.allowsCameraControl = true  ****used initially to see first node
    }
    func panGesture(sender: UIPanGestureRecognizer) {  //Whenever sceneView detects a pan gesture, this function will be called, and it transforms the gesture’s x-axis translation to a y-axis rotation on the geometry node (1 pixel = 1 degree)
        let translation = sender.translationInView(sender.view!)
        var newAngle = (Float)(translation.x)*(Float)(M_PI)/180.0
        newAngle += currentAngle
        geometryNode.transform = SCNMatrix4MakeRotation(newAngle, 0, 1, 0)  //you modify the transform property of geometryNode by creating a new rotation matrix, but you could also modify its rotation property with a rotation vector. A transformation matrix is better because you can easily expand it to include translation and scale.
        //***full 3D...http://www.raywenderlich.com/50398/opengl-es-transformations-gestures
        if(sender.state == UIGestureRecognizerState.Ended) {
            currentAngle = newAngle
        }
    }
  // MARK: IBActions
  @IBAction func segmentValueChanged(sender: UISegmentedControl) {
    geometryNode.removeFromParentNode()
    currentAngle = 0.0
    switch sender.selectedSegmentIndex {
    case 0:
        geometryLabel.text = "Atoms\n"
        geometryNode = Atoms.allAtoms()
    case 1:
        geometryLabel.text = "Benzene(ring)\nFormula: C6H6\nMolar mass: 78.11 g/mol\nDensity: 876.50 kg/m³\nBoiling point: 80.1 °C\nIUPAC ID: Benzene\nMelting point: 5.5 °C\nSoluble in: Water"
        geometryNode = Molecules.benzeneMolecule()
    case 2:
        geometryLabel.text = "Bacteria\n(Streptomyces cremeus NRRL 3241)\nFormula: C8H6N2O4\nAverage mass: 194.144 Da\nMonoisotopic mass: 194.032761 Da"
        geometryNode = Molecules.bacteriaMolecule()
    case 3:
        geometryLabel.text = "Methane(Natural Gas)\nFormula: CH4\nMolar mass: 16.04 g/mol\nBoiling point: -161.5 °C\nDensity: 0.66 kg/m³\nMelting point: -182 °C\nSoluble in: Diethyl ether, Water,\nMethanol, Benzene, Toluene,\nAcetone, Ethanol"
        geometryNode = Molecules.methaneMolecule()
    case 4:
        geometryLabel.text = "Phosphorus"
        geometryNode = Molecules.phosphorusMolecule()
    case 5:
        geometryLabel.text = "Polytetrafluoroethylene\n(DuPont Teflon)\nsynthetic fluoropolymer of\ntetrafluoroethylene\nFormula: (C2F4)n\nMelting point: 326.8 °C\nDensity: 2.20 g/cm³"
        geometryNode = Molecules.ptfeMolecule()
    case 6:
        geometryLabel.text = "Caffeine\nFormula: C8H10N4O2\nMelting point: 235 °C\nMolar mass: 194.19 g/mol\n1,3,7-Trimethylpurine-2,6-dione\nBoiling point: 178 °C\nDensity: 1.23 g/cm³"
        geometryNode = Molecules.caffeineMolecule()
    case 7:
        geometryLabel.text = "Ethanol\n(ethyl alcohol, drinking alcohol)\nFormula: C2H6O\nMolar mass: 46.06844 g/mol\nBoiling point: 78.37 °C\nDensity: 789.00 kg/m³\nMelting point: -114 °C\nVapor pressure: 5.95 kPa"
        geometryNode = Molecules.ethanolMolecule()
    case 8:
        geometryLabel.text = "Ibuprofen(Advil)\nFormula: C13H18O2\nMolecular mass 206.29 g/mol\nBioavailability 87–100%(oral,rectal)\nProtein binding 98%\nMetabolism Hepatic\nOnset of action 30 min\nBiological half-life 1.3–3 h\nExcretion Urine(95%)"
        geometryNode = Molecules.ibuprofenMolecule()
    case 9:
        geometryLabel.text = "Glyphosate(Monsanto Roundup)\nN-(phosphonomethyl)glycine\nChemical formula C3H8NO5P\nMolar mass 169.07 g·mol−1\nwhite crystalline powder\nDensity 1.704\nMelting point 184.5 °C\nBoiling Pt decomposes at 187 °C\nSolubility in water 1.01 g/100 mL"
        geometryNode = Molecules.glyphosateMolecule()
    default:
        break
    }
    sceneView.scene!.rootNode.addChildNode(geometryNode)
  }
  
  // MARK: Style
  override func preferredStatusBarStyle() -> UIStatusBarStyle {
    return UIStatusBarStyle.LightContent
  }
  
  // MARK: Transition
  override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
    super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
    sceneView.stop(nil)
    sceneView.play(nil)
  }
}
