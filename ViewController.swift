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
    @IBOutlet weak var topSegControl: UISegmentedControl!
    @IBOutlet weak var secondSegControl: UISegmentedControl!
    @IBOutlet weak var thirdSegControl: UISegmentedControl!
    @IBOutlet weak var bottomSegControl: UISegmentedControl!
    struct Constants {
        static let AtomsTitle = "Atoms - Van Der Waals Radius"
        static let PeriodicTable = "http://periodictable.com/Properties/A/VanDerWaalsRadius.al.html"
        static let DemoURL = "https://redblockblog.wordpress.com/marketing/"
        static let ChemsketchURL = "http://www.chemteach.ac.nz/documents/chemed09/misc/chemsketch.pdf"
        static let ChemSketch_GuideURL = "http://academic.pgcc.edu/psc/ChemSketch_Guide.pdf"
        static let ShowURLSegue = "Show URL"
    }
    var url = ""
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == Constants.ShowURLSegue {
            //prepare
            if let bvc = segue.destinationViewController as? BrowserViewController {
                bvc.url = url
                if let nsurl = NSURL(string: url) {
                    bvc.nsurl = nsurl
                }
            }
        }
    }
    func unwindFromModalViewController(segue: UIStoryboardSegue?) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    let model = UIDevice.currentDevice().model
    // Geometry
    var geometryNode: SCNNode = SCNNode()
    //if you navigate your scene with the default camera controls (rotation, specifically), you’ll notice an odd effect: you might expect the box to rotate and the lighting to stay in place but, in fact, it’s actually the camera rotating around the scene.
    // Gestures
    var currentAngle: Float = 0.0
    //once you have more complex models with multiple geometry sources, it’ll be much easier to manage them as a single node – hence the addition of geometryNode. Furthermore, currentAngle will help modify the y-axis rotation of geometryNode exclusively, leaving the rest of your scene nodes untouched...see panGesture
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        secondSegControl.selectedSegmentIndex = -1
        thirdSegControl.selectedSegmentIndex = -1
        bottomSegControl.selectedSegmentIndex = -1
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        if geometryLabel.text == "Geometry" {
            sceneSetup()
            geometryLabel.text = Constants.AtomsTitle
            geometryNode = Atoms.allAtoms()
            sceneView.scene!.rootNode.addChildNode(geometryNode)
        }
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
        cameraNode.position = SCNVector3Make(0, 0, 25)  //The only thing you need to define is its position, conveniently set right in front
        scene.rootNode.addChildNode(cameraNode)
        
        let doubleTapRecognizer = UITapGestureRecognizer(target: self, action: "doubleTapGesture:")  //wikipedia atom
        doubleTapRecognizer.numberOfTapsRequired = 2
        sceneView.addGestureRecognizer(doubleTapRecognizer)
        
        let panRecognizer = UIPanGestureRecognizer(target: self, action: "panGesture:")
        sceneView.addGestureRecognizer(panRecognizer)
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: "tapGesture:")   //wikipedia molecule
        sceneView.addGestureRecognizer(tapRecognizer)
        
        sceneView.scene = scene
        //        sceneView.autoenablesDefaultLighting = true
        //        sceneView.allowsCameraControl = true  ****used initially to see first node
    }
    func panGesture(gesture: UIPanGestureRecognizer) {  //Whenever sceneView detects a pan gesture, this function will be called, and it transforms the gesture’s x-axis translation to a y-axis rotation on the geometry node (1 pixel = 1 degree)
        if geometryLabel.text == Constants.AtomsTitle {
            let translation = gesture.translationInView(gesture.view!)
            var newAngle = (Float)(translation.x)*(Float)(M_PI)/180.0
            newAngle += currentAngle
            geometryNode.transform = SCNMatrix4MakeRotation(newAngle, 0, 1, 0)  //you modify the transform property of geometryNode by creating a new rotation matrix, but you could also modify its rotation property with a rotation vector. A transformation matrix is better because you can easily expand it to include translation and scale.  ***full 3D...http://www.raywenderlich.com/50398/opengl-es-transformations-gestures
            if (gesture.state == UIGestureRecognizerState.Ended) {
                currentAngle = newAngle
            }
        } else {
            if (gesture.state == UIGestureRecognizerState.Ended) {
                url = Constants.PeriodicTable
                performSegueWithIdentifier(Constants.ShowURLSegue, sender: nil)
            }
        }
    }
    var tap = UITapGestureRecognizer()
    func tapStop(gesture: UITapGestureRecognizer, willDisable: Bool) {
        tap = gesture
        if willDisable {
            gesture.enabled = false
        } else {
            gesture.enabled = true
        }
    }
    func tapGesture(gesture: UITapGestureRecognizer) {   //for molecules (although may still be abble to double tap an atom on rotating molecule)
        if gesture.numberOfTapsRequired == 1 {
            let location = gesture.locationInView(gesture.view!)
            //print(location)
            let hits = self.sceneView.hitTest(location, options: nil)
            if let tappedNode = hits.first?.node {
                let name = tappedNode.parentNode!.name
                if name != nil {
                    tappedNode.parentNode?.pauseAnimationForKey("spin around")  //removeAnimationForKey("spin around")
                    tapStop(gesture, willDisable: true)
                    url = name!
                    performSegueWithIdentifier(Constants.ShowURLSegue, sender: nil)
                }
            }
        }
    }
    func doubleTapGesture(gesture: UITapGestureRecognizer) {    //for atoms
        if gesture.numberOfTapsRequired == 2 {
            let location = gesture.locationInView(gesture.view!)
            //print(location)
            let hits = self.sceneView.hitTest(location, options: nil)
            if let tappedNode = hits.first?.node {
                let name = tappedNode.geometry!.name
                if name != nil {
                    url = name!
                    performSegueWithIdentifier(Constants.ShowURLSegue, sender: nil)
                }
            }
        }
    }
    // MARK: IBActions
    @IBAction func segmentValueChanged(sender: UISegmentedControl) {
        geometryNode.removeFromParentNode()
        currentAngle = 0.0
        var segIndex = 0
        if !tap.enabled {
            tap.enabled = true   //restart molecule singleTap
        }
        if sender == bottomSegControl {
            topSegControl.selectedSegmentIndex = -1
            secondSegControl.selectedSegmentIndex = -1
            thirdSegControl.selectedSegmentIndex = -1
            segIndex = topSegControl.numberOfSegments + secondSegControl.numberOfSegments + thirdSegControl.numberOfSegments + sender.selectedSegmentIndex
        } else if sender == thirdSegControl {
            topSegControl.selectedSegmentIndex = -1
            secondSegControl.selectedSegmentIndex = -1
            bottomSegControl.selectedSegmentIndex = -1
            segIndex = topSegControl.numberOfSegments + secondSegControl.numberOfSegments + sender.selectedSegmentIndex
        } else if sender == secondSegControl {
            topSegControl.selectedSegmentIndex = -1
            thirdSegControl.selectedSegmentIndex = -1
            bottomSegControl.selectedSegmentIndex = -1
            segIndex = topSegControl.numberOfSegments + sender.selectedSegmentIndex
        } else {  //top
            thirdSegControl.selectedSegmentIndex = -1
            secondSegControl.selectedSegmentIndex = -1
            bottomSegControl.selectedSegmentIndex = -1
            segIndex = sender.selectedSegmentIndex
        }
        switch segIndex {
        case 0:
            geometryLabel.text = Constants.AtomsTitle  // http://periodictable.com/Properties/A/VanDerWaalsRadius.an.html
            geometryNode = Atoms.allAtoms()
        case 1:
            geometryLabel.text = "Terpinen-4-ol (antimicrobial/antifungal\nprimary active ingredient of tea tree oil)\nChemical formula C10H18O\nMolar mass 154.25 g·mol−1"
            geometryNode = Molecules.teaTreeOilMolecule()  //  https://en.wikipedia.org/wiki/Terpinen-4-ol
        case 2:
            geometryLabel.text = "Benzene (aromatic)\nFormula: C6H6\nMolar mass: 78.11 g/mol\nDensity: 876.50 kg/m³"
            geometryNode = Molecules.benzeneMolecule()
        case 3:
            geometryLabel.text = "Caffeine\nFormula: C8H10N4O2\nMelting point: 235 °C\nMolar mass: 194.19 g/mol\nBoiling point: 178 °C\nDensity: 1.23 g/cm³"
            geometryNode = Molecules.caffeineMolecule()
        case 4:
            geometryLabel.text = "Ethanol\n(ethyl alcohol, drinking alcohol)\nFormula: C2H6O\nMolar mass: 46.06844 g/mol\nBoiling point: 78.37 °C\nDensity: 789.00 kg/m³"
            geometryNode = Molecules.ethanolMolecule()
        case 5:
            geometryLabel.text = "Enprofylline (asthma treatment)\nxanthine derivative\nwhich acts as a bronchodilator\nMolar mass: 194.19 g/mol"
            geometryNode = Molecules.enprofyllineMolecule()
        case 6:
            geometryLabel.text = "Fructose (fruit sugar)\nFormula: C6H12O6\nMelting point: 103 °C\nBoiling point: 440 °C\nDensity: 1.69 g/cm³"
            geometryNode = Molecules.fructoseMolecule()
        case 7:
            geometryLabel.text = "Glyphosate (Roundup)\nN-(phosphonomethyl)glycine\nChemical formula C3H8NO5P\nMolar mass 169.07 g·mol−1\nwhite crystalline powder\nDensity 1.704\nMelting point 184.5 °C"
            geometryNode = Molecules.glyphosateMolecule()
        case 8:
            geometryLabel.text = "Ibuprofen (Advil)\nFormula: C13H18O2\nMolecular mass 206.29 g/mol\nProtein binding 98%\nMetabolism Hepatic\nOnset of action 30 min"
            geometryNode = Molecules.ibuprofenMolecule()
        case 9:
            geometryLabel.text = "Hydrogen peroxide (disinfectant)\nFormula: H2O2\nMolar mass: 34.0147 g/mol\nDensity: 1.45 g/cm³\nMelting point: -0.43 °C\nBoiling point: 150.2 °C"
            geometryNode = Molecules.hydrogenPeroxideMolecule()
        case 10:
            geometryLabel.text = "Isooctane (gasoline)\nFormula (CH₃)₃CCH₂CH(CH₃)₂\non octane rating scale = 100 points\nDensity: 690.00 kg/m³\nBoiling point: 99 °C"
            geometryNode = Molecules.isooctaneMolecule()
        case 11:
            geometryLabel.text = "Methane (natural gas)\nFormula: CH4\nMolar mass: 16.04 g/mol\nBoiling point: -161.5 °C\nDensity: 0.66 kg/m³\nMelting point: -182 °C"
            geometryNode = Molecules.methaneMolecule()
        case 12:
            geometryLabel.text = "Polytetrafluoroethylene (Teflon)\nFormula: (C2F4)n\nsynthetic fluoropolymer\nof tetrafluoroethylene\nMelting point: 326.8 °C\nDensity: 2.20 g/cm³"
            geometryNode = Molecules.ptfeMolecule()
        case 13:
            geometryLabel.text = "Phosphoric acid (mineral acid)\nFormula: H3PO4\nMolar mass: 98 g/mol\nDensity: 1.89 g/cm³\nBoiling point: 158 °C\nMelting point: 42.35 °C"
            geometryNode = Molecules.phosphoricAcidMolecule()
        case 14:
            geometryLabel.text = "Pyrazine (antitumor,antibiotic\nand diuretic) Formula: C4H4N2\nMolar mass: 80.09 g/mol\nDensity: 1.03 g/cm³\nBoiling point: 115 °C\nMelting point: 52 °C"
            geometryNode = Molecules.pyrazineMolecule()
        case 15:
            geometryLabel.text = "Sodium triphosphate (detergent)\nFormula Na5P3O10\nMolar mass: 367.864 g/mol\nMelting point: 622 °C\nDensity: 2.52 g/cm³"
            geometryNode = Molecules.sodiumTriphosphateMolecule()
        case 16:
            geometryLabel.text = "\n \n "  //no title      //4. pan to open Van Der Waals page
            // Create a 3D text SIMILAR TO A MOLECULE
            geometryNode = SCNNode()
            geometryNode.name = Constants.ChemsketchURL    //2. single tap
            let sky = SCNMaterial()
            sky.diffuse.contents = UIImage(named: "RBGames.png")
            let red = SCNMaterial()
            red.diffuse.contents = UIColor.redColor()
            let blue = SCNMaterial()
            blue.diffuse.contents = UIColor.blueColor()
            let myText = SCNText(string: "Ⓒhem 3D", extrusionDepth: 3)
            myText.name = Constants.ChemSketch_GuideURL     //3. double tap after single tap
            myText.flatness = 0.1  //default 0.6
            myText.font = UIFont(name: "Arial", size: 13)
            //myText.chamferRadius = 1  //half extrusionDepth max
            myText.materials = [sky, red, blue]  //see SCNText help
            let childNode = SCNNode(geometry: myText)
            childNode.position = SCNVector3(x: -8, y: 0, z: 0)
            childNode.orientation = SCNQuaternion(x: 0, y: 0, z: 0.6, w: 0)
            geometryNode.addChildNode(childNode)
            //sceneView.scene?.background.contents = "RBGames.png"
            url =  Constants.DemoURL
            performSegueWithIdentifier(Constants.ShowURLSegue, sender: nil)
            //        if let url = NSURL(string: Constants.DemoURL) {
            //            UIApplication.sharedApplication().openURL(url)   //1. opens first
            //        }
            break
            //    case 16:
            //        geometryLabel.text = "Bacteria\n(Streptomyces cremeus NRRL 3241)\nFormula: C8H6N2O4\nAverage mass: 194.144 Da"        //(mouth wash=ZnCl2/shampo=NaCl2)
            //        geometryNode = Molecules.bacteriaMolecule()       zopiclone is chloropyridinoxotriazabicyclonona-trienylmethylpiper-azinecarboxylate (C17H17ClN6O3)
            //    case 17:
            //        geometryLabel.text = "Tetrahydrocannabinol (THC), the psychoactive constituent of the cannabis plant"   // https://en.wikipedia.org/wiki/Tetrahydrocannabinol
            //        geometryNode = Molecules.ptfeMolecule()           cd ~/.wine/drive_c/users/imac27/.wine/drive_c/Program\ Files/ACD2015FREE    wine CHEMSK.EXE
        default:
            break
        }
        if geometryLabel.text != Constants.AtomsTitle {
            if sceneView.frame.width < sceneView.frame.height {
                geometryNode.scale = SCNVector3Make(1.2, 1.2, 1.2)
            } else {
                let result = geometryLabel.text?.componentsSeparatedByString("\n")
                geometryLabel.text = result![0] + " " + result![1] + "," + result![2]
                geometryNode.scale = SCNVector3Make(2.4, 2.4, 2.4)
            }
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
        if geometryLabel.text != Constants.AtomsTitle {
            if sceneView.frame.width > sceneView.frame.height {
                geometryNode.scale = SCNVector3Make(1.2, 1.2, 1.2)
            } else {
                geometryNode.scale = SCNVector3Make(2.4, 2.4, 2.4)
            }
        }
        sceneView.play(nil)
    }
}
