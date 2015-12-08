//
//  Molecules.swift
//  ChemicalVisualizer  Copyright (c) 2015 Garth MacKenzie
//
//  Created by iMac 27 on 2015-12-01.
//
//


import Foundation
import SceneKit

class Molecules {
    class func bacteriaMolecule() -> SCNNode {  // http://www.chemspider.com/Chemical-Structure.3628289.html
        //20   Bacteria (Streptomyces cremeus NRRL 3241) Formula: C8H6N2O4
        let bacteriaMolecule = SCNNode()
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: bacteriaMolecule, position: SCNVector3Make(-0.4697,  0.3029, -0.8452))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: bacteriaMolecule, position: SCNVector3Make( 1.6890,  0.3905,  0.3540))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: bacteriaMolecule, position: SCNVector3Make( 1.6678,  1.3574, -0.8016))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: bacteriaMolecule, position: SCNVector3Make( 0.4618,  1.4047, -1.3980))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: bacteriaMolecule, position: SCNVector3Make(-0.0018, -0.7292, -1.1224))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: bacteriaMolecule, position: SCNVector3Make( 2.5430,  1.9817, -1.0202))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: bacteriaMolecule, position: SCNVector3Make( 0.0629,  2.1406, -2.1001))
        _ = nodeWithAtom(Atoms.nitrogenAtom(), molecule: bacteriaMolecule, position: SCNVector3Make( 2.4386, -0.7326,  0.3247))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: bacteriaMolecule, position: SCNVector3Make( 3.4824, -0.6489, -0.3557))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: bacteriaMolecule, position: SCNVector3Make( 2.1007, -1.7333,  1.0042))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: bacteriaMolecule, position: SCNVector3Make( 0.4696,  0.3029,  0.8452))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: bacteriaMolecule, position: SCNVector3Make(-1.6890,  0.3905, -0.3540))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: bacteriaMolecule, position: SCNVector3Make(-1.6678,  1.3574,  0.8016))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: bacteriaMolecule, position: SCNVector3Make(-0.4619,  1.4047,  1.3980))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: bacteriaMolecule, position: SCNVector3Make( 0.0016, -0.7292,  1.1225))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: bacteriaMolecule, position: SCNVector3Make(-2.5430,  1.9817,  1.0201))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: bacteriaMolecule, position: SCNVector3Make(-0.0629,  2.1406,  2.1001))
        _ = nodeWithAtom(Atoms.nitrogenAtom(), molecule: bacteriaMolecule, position: SCNVector3Make(-2.4386, -0.7327, -0.3247))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: bacteriaMolecule, position: SCNVector3Make(-3.4823, -0.6489,  0.3557))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: bacteriaMolecule, position: SCNVector3Make(-2.1006, -1.7334, -1.0041))
        bacteriaMolecule.pivot = SCNMatrix4MakeRotation(Float(M_PI_2), 1, 0, 0)
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around y
        spin.fromValue = NSValue(SCNVector4: SCNVector4(x: 0, y: 1, z: 0, w: 0))
        spin.toValue = NSValue(SCNVector4: SCNVector4(x: 0, y: 1, z: 0, w: Float(2 * M_PI)))
        spin.duration = 3
        spin.repeatCount = .infinity
        bacteriaMolecule.addAnimation(spin, forKey: "spin around")
        return bacteriaMolecule
    }
    class func benzeneMolecule() -> SCNNode {  // https://en.wikipedia.org/wiki/Benzene
        //12  Benzene(aromatic hydrocarbon)\nFormula: C6H6
        let benzeneMolecule = SCNNode()
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: benzeneMolecule, position: SCNVector3Make(0, 1.40272, 0))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: benzeneMolecule, position: SCNVector3Make(0, 2.49029, 0))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: benzeneMolecule, position: SCNVector3Make(-1.21479, 0.70136, 0))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: benzeneMolecule, position: SCNVector3Make(-2.15666, 1.24515, 0))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: benzeneMolecule, position: SCNVector3Make(-1.21479, -0.70136, 0))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: benzeneMolecule, position: SCNVector3Make(-2.15666, -1.24515, 0))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: benzeneMolecule, position: SCNVector3Make(0, -1.40272, 0))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: benzeneMolecule, position: SCNVector3Make(0, -2.49029, 0))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: benzeneMolecule, position: SCNVector3Make(1.21479, -0.70136, 0))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: benzeneMolecule, position: SCNVector3Make(2.15666, -1.24515, 0))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: benzeneMolecule, position: SCNVector3Make(1.21479, 0.70136, 0))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: benzeneMolecule, position: SCNVector3Make(2.15666, 1.24515, 0))
        //        12  C6H6
        //        benzene example  http://openbabel.org/wiki/XYZ_(format)#Input_Format
        //        C        0.00000        1.40272        0.00000
        //        H        0.00000        2.49029        0.00000
        //        C       -1.21479        0.70136        0.00000
        //        H       -2.15666        1.24515        0.00000
        //        C       -1.21479       -0.70136        0.00000
        //        H       -2.15666       -1.24515        0.00000
        //        C        0.00000       -1.40272        0.00000
        //        H        0.00000       -2.49029        0.00000
        //        C        1.21479       -0.70136        0.00000
        //        H        2.15666       -1.24515        0.00000
        //        C        1.21479        0.70136        0.00000
        //        H        2.15666        1.24515        0
        benzeneMolecule.pivot = SCNMatrix4MakeRotation(Float(M_PI_2), 1, 0, 0)
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around y
        spin.fromValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: 0))
        spin.toValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: Float(2 * M_PI)))
        spin.duration = 3
        spin.repeatCount = .infinity
        benzeneMolecule.addAnimation(spin, forKey: "spin around")
        return benzeneMolecule
    }
    class func caffeineMolecule() -> SCNNode {  // https://en.wikipedia.org/wiki/Caffeine
        //      24  C8H10N4O2  http://examples.yourdictionary.com/examples-of-organic-compound.html
        //Chemcraft/samples/MultXYZ/caffeine.xyz  http://www.chemcraftprog.com
        let caffeineMolecule = SCNNode()
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: caffeineMolecule, position: SCNVector3Make(0.9163192029,    0.1723652799,    0.0000538537))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: caffeineMolecule, position: SCNVector3Make(0.3509083411,   -1.0602209706,    0.0000405782))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: caffeineMolecule, position: SCNVector3Make(-1.8294812579,   -0.1530826679,    0.0000937309))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(-3.0416705675,   -0.2543508127,    0.0001152929))
        _ = nodeWithAtom(Atoms.nitrogenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(-0.9968950055,   -1.2504609345,    0.0000451826))
        _ = nodeWithAtom(Atoms.nitrogenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(-1.2199179912,    1.1012515026,    0.0001177418))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: caffeineMolecule, position: SCNVector3Make(0.1505912656,    1.3709444647,    0.0000634254))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(0.5918714543,    2.5088521310,    0.0000452654))
        _ = nodeWithAtom(Atoms.nitrogenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(2.2838824225,   -0.0357752199,    0.0000392411))
        _ = nodeWithAtom(Atoms.nitrogenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(1.3069147912,   -2.0280391296,    0.0000175093))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: caffeineMolecule, position: SCNVector3Make(2.4553849204,   -1.3717111960,    0.0000200731))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: caffeineMolecule, position: SCNVector3Make(3.3065784847,    1.0144397214,    0.0000527820))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: caffeineMolecule, position: SCNVector3Make(-1.5644361354,   -2.6074506413,    0.0000156331))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: caffeineMolecule, position: SCNVector3Make(-2.1509960993,    2.2480522409,    0.0001828341))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(3.4163727057,   -1.8273821969,    0.0000098208))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(3.1942693393,    1.6328430162,    0.8769638077))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(3.1939698529,    1.6331304053,   -0.8766120781))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(4.2800507157,    0.5472366162,   -0.0001862080))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(-1.2346715300,   -3.1405469521,    0.8799452405))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(-1.2348358395,   -3.1404521906,   -0.8800330469))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(-2.6354685610,   -2.5062107159,    0.0001156051))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(-2.7781103774,    2.2063254642,    0.8776070691))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(-2.7779874036,    2.2065320421,   -0.8773401308))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: caffeineMolecule, position: SCNVector3Make(-1.5564081395,    3.1433564463,    0.0003242258))
        caffeineMolecule.pivot = SCNMatrix4MakeRotation(Float(M_PI_2), 1, 0, 0)
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around y
        spin.fromValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: 0))
        spin.toValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: Float(2 * M_PI)))
        spin.duration = 3
        spin.repeatCount = .infinity
        caffeineMolecule.addAnimation(spin, forKey: "spin around")
        return caffeineMolecule
    }
    class func ethanolMolecule() -> SCNNode {  // https://en.wikipedia.org/wiki/Ethanol
        //9  drinking alcohol  Formula: C2H6O
        let ethanolMolecule = SCNNode()
//        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ethanolMolecule, position: SCNVector3Make( 0.87, 0.03, 0.02))
//        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ethanolMolecule, position: SCNVector3Make(-0.43, -0.66, -0.41))
//        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: ethanolMolecule, position: SCNVector3Make(-1.35, -0.64, 0.67))
//        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make( 1.72, -0.40, -0.55))
//        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make( 1.03, -0.13, 1.11))
//        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make( 0.80, 1.12, -0.19))
//        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make(-0.25, -1.72, -0.69))
//        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make(-0.90, -0.13, -1.27))
//        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make(-2.25, -0.19, 0.56))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ethanolMolecule, position: SCNVector3Make(-0.70, 0.86, -0.36))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ethanolMolecule, position: SCNVector3Make( 0.18, -0.18,  0.34))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: ethanolMolecule, position: SCNVector3Make( 0.12, -1.43, -0.34))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make(-0.67, 1.83,  0.20))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make(-1.75, 0.48, -0.38))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make(-0.35, 1.03, -1.40))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make(-0.19, -0.32, 1.38))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make( 1.24, 0.18, 0.36))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make( 0.67, -2.03, 0.18))
        ethanolMolecule.pivot = SCNMatrix4MakeRotation(Float(M_PI_2), 1, 0, 0)
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around y
        spin.fromValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: 0))
        spin.toValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: Float(2 * M_PI)))
        spin.duration = 3
        spin.repeatCount = .infinity
        ethanolMolecule.addAnimation(spin, forKey: "spin around")
        return ethanolMolecule
    }
    class func ethylamineMolecule() -> SCNNode {  // https://en.wikipedia.org/wiki/Ethylamine
        //        Ethylaminel\n(CH₃CH₂NH₂)
        let ethylamineMolecule = SCNNode()
        //        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ethanolMolecule, position: SCNVector3Make( 0.87, 0.03, 0.02))
        //        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ethanolMolecule, position: SCNVector3Make(-0.43, -0.66, -0.41))
        //        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: ethanolMolecule, position: SCNVector3Make(-1.35, -0.64, 0.67))
        //        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make( 1.72, -0.40, -0.55))
        //        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make( 1.03, -0.13, 1.11))
        //        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make( 0.80, 1.12, -0.19))
        //        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make(-0.25, -1.72, -0.69))
        //        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make(-0.90, -0.13, -1.27))
        //        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethanolMolecule, position: SCNVector3Make(-2.25, -0.19, 0.56))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ethylamineMolecule, position: SCNVector3Make(-0.70, 0.86, -0.36))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ethylamineMolecule, position: SCNVector3Make( 0.18, -0.18,  0.34))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: ethylamineMolecule, position: SCNVector3Make( 0.12, -1.43, -0.34))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethylamineMolecule, position: SCNVector3Make(-0.67, 1.83,  0.20))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethylamineMolecule, position: SCNVector3Make(-1.75, 0.48, -0.38))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethylamineMolecule, position: SCNVector3Make(-0.35, 1.03, -1.40))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethylamineMolecule, position: SCNVector3Make(-0.19, -0.32, 1.38))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethylamineMolecule, position: SCNVector3Make( 1.24, 0.18, 0.36))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ethylamineMolecule, position: SCNVector3Make( 0.67, -2.03, 0.18))
        ethylamineMolecule.pivot = SCNMatrix4MakeRotation(Float(M_PI_2), 1, 0, 0)
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around y
        spin.fromValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: 0))
        spin.toValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: Float(2 * M_PI)))
        spin.duration = 3
        spin.repeatCount = .infinity
        ethylamineMolecule.addAnimation(spin, forKey: "spin around")
        return ethylamineMolecule
    }
    class func fructoseMolecule() -> SCNNode {  // https://en.wikipedia.org/wiki/Fructose
        //24  Fructose(fruit sugar)\nFormula: C6H12O6
        let fructoseMolecule = SCNNode()
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-0.80, -1.78, -0.2))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-1.53, -0.66, -0.8))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-1.67, -2.63,  0.52))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-0.70,  0.58, -0.56))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-1.59,  1.71, -0.04))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: fructoseMolecule, position: SCNVector3Make( 0.23, -1.16, 0.72))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-0.09,  1.01, -1.76))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: fructoseMolecule, position: SCNVector3Make( 0.31,  0.26, 0.42))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-0.90,  2.94, -0.04))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-1.72, -0.86, -2.2))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: fructoseMolecule, position: SCNVector3Make( 1.59, -1.82, 0.51))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: fructoseMolecule, position: SCNVector3Make( 2.56, -1.31, 1.40))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-0.30, -2.39, -0.99))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-2.54, -0.55, -0.34))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-2.23, -3.03, -0.15))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-1.90,  1.47,  1.01))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-2.50,  1.79, -0.68))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-0.08, -1.30,  1.78))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: fructoseMolecule, position: SCNVector3Make( 0.61,  0.37, -1.91))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-0.57,  3.03, -0.94))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: fructoseMolecule, position: SCNVector3Make(-2.56, -1.32, -2.27))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: fructoseMolecule, position: SCNVector3Make( 1.92, -1.62, -0.54))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: fructoseMolecule, position: SCNVector3Make( 1.49, -2.92,  0.66))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: fructoseMolecule, position: SCNVector3Make( 2.28, -1.60,  2.27))
        fructoseMolecule.pivot = SCNMatrix4MakeRotation(Float(M_PI_2), 1, 0, 0)
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around y
        spin.fromValue = NSValue(SCNVector4: SCNVector4(x: 0, y: 1, z: 0, w: 0))
        spin.toValue = NSValue(SCNVector4: SCNVector4(x: 0, y: 1, z: 0, w: Float(2 * M_PI)))
        spin.duration = 3
        spin.repeatCount = .infinity
        fructoseMolecule.addAnimation(spin, forKey: "spin around")
        return fructoseMolecule
    }
    class func glyphosateMolecule() -> SCNNode {  // https://en.wikipedia.org/wiki/Glyphosate    
        //18  (Monsanto Roundup)  Chemical formula C3H8NO5P
        let glyphosateMolecule = SCNNode()
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: glyphosateMolecule, position: SCNVector3Make(-3.00,  0.68, -0.07))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: glyphosateMolecule, position: SCNVector3Make(-1.75,  0.52,  0.77))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: glyphosateMolecule, position: SCNVector3Make(-3.35, -0.28, -0.97))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: glyphosateMolecule, position: SCNVector3Make(-3.70,  1.66,  0.07))
        _ = nodeWithAtom(Atoms.nitrogenAtom(), molecule: glyphosateMolecule, position: SCNVector3Make(-0.55, 0.56, -0.07))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: glyphosateMolecule, position: SCNVector3Make( 0.64,  0.28,  0.74))
        _ = nodeWithAtom(Atoms.phosphorusAtom(), molecule: glyphosateMolecule, position: SCNVector3Make( 2.15,  0.21, -0.25))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: glyphosateMolecule, position: SCNVector3Make( 2.45, 1.54, -0.76))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: glyphosateMolecule, position: SCNVector3Make( 1.91, -0.82, -1.50))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: glyphosateMolecule, position: SCNVector3Make( 3.41, -0.31, 0.65))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: glyphosateMolecule, position: SCNVector3Make(-1.70,  1.35, 1.50))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: glyphosateMolecule, position: SCNVector3Make(-1.80, -0.45, 1.31))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: glyphosateMolecule, position: SCNVector3Make(-4.15, -0.18, -1.49))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: glyphosateMolecule, position: SCNVector3Make(-0.47,  1.52, -0.38))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: glyphosateMolecule, position: SCNVector3Make( 0.76,  1.09,  1.50))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: glyphosateMolecule, position: SCNVector3Make( 0.50, -0.69,  1.26))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: glyphosateMolecule, position: SCNVector3Make( 1.70, -1.66, -1.09))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: glyphosateMolecule, position: SCNVector3Make(-4.15, -0.34,  0.04))
        glyphosateMolecule.pivot = SCNMatrix4MakeRotation(Float(M_PI_2), 1, 0, 0)
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around y
        spin.fromValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: 0))
        spin.toValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: Float(2 * M_PI)))
        spin.duration = 3
        spin.repeatCount = .infinity
        glyphosateMolecule.addAnimation(spin, forKey: "spin around")
        return glyphosateMolecule
    }
    class func hydrogenPeroxideMolecule() -> SCNNode {  // https://en.wikipedia.org/wiki/Hydrogen_peroxide
        //4  Hydrogen peroxide(disinfectant)\nFormula: H2O2
        let hydrogenPeroxideMolecule = SCNNode()
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: hydrogenPeroxideMolecule, position: SCNVector3Make( -0.39, -0.62,  0.36))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: hydrogenPeroxideMolecule, position: SCNVector3Make(  0.39,  0.63,  0.24))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: hydrogenPeroxideMolecule, position: SCNVector3Make( -0.05, -1.18, -0.34))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: hydrogenPeroxideMolecule, position: SCNVector3Make( -0.13,  1.18, -0.36))
        hydrogenPeroxideMolecule.pivot = SCNMatrix4MakeRotation(Float(M_PI_2), 1, 0, 0)
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around y
        spin.fromValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: 0))
        spin.toValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: Float(2 * M_PI)))
        spin.duration = 3
        spin.repeatCount = .infinity
        hydrogenPeroxideMolecule.addAnimation(spin, forKey: "spin around")
        return hydrogenPeroxideMolecule
    }
    class func ibuprofenMolecule() -> SCNNode {  // https://en.wikipedia.org/wiki/Ibuprofen  
        //33  Ibuprofen(Advil)  Formula: C13H18O2
        let ibuprofenMolecule = SCNNode()
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make( 1.05, -1.13, -0.25))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make( 1.62,  0.17, -0.20))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-0.31, -1.30, -0.59))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make( 0.82,  1.30, -0.50))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-1.11, -0.17, -0.90))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-0.55,  1.13, -0.86))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-2.61, -0.35, -1.30))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-3.63,  0.20, -0.24))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-3.39,  1.72,  0.08))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-5.08,  0.03, -0.80))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make( 4.05, -0.54, -0.66))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make( 3.11,  0.38,  0.17))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make( 3.66, -1.66, -1.01))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make( 5.32, -0.10, -1.02))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make( 3.35,  0.13,  1.69))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make( 1.70, -2.04,  0.0))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-0.76, -2.35, -0.63))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make( 1.26,  2.35, -0.47))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-1.18,  2.03, -1.11))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-2.79,  0.20, -2.28))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-2.81, -1.46, -1.45))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-3.50, -0.39,  0.73))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-4.22,  2.12,  0.75))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-2.39,  1.83,  0.61))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-3.39,  2.32, -0.89))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-5.63, -0.78, -0.22))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-5.63,  1.02, -0.68))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make(-5.05, -0.26, -1.90))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make( 3.37,  1.47, -0.08))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make( 5.63,  0.79, -0.74))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make( 3.37, -0.98,  1.92))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make( 2.52,  0.63,  2.28))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: ibuprofenMolecule, position: SCNVector3Make( 4.35,  0.58,  2.00))
        ibuprofenMolecule.pivot = SCNMatrix4MakeRotation(Float(M_PI_2), 1, 0, 0)
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around y
        spin.fromValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: 0))
        spin.toValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: Float(2 * M_PI)))
        spin.duration = 3
        spin.repeatCount = .infinity
        ibuprofenMolecule.addAnimation(spin, forKey: "spin around")
        return ibuprofenMolecule
    }
    class func isooctaneMolecule() -> SCNNode {  // https://en.wikipedia.org/wiki/2,2,4-Trimethylpentane
        //26  Isooctane(gasoline)\nFormula (CH₃)₃CCH₂CH(CH₃)₂
        let isooctaneMolecule = SCNNode()
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: isooctaneMolecule, position: SCNVector3Make( 1.05, -1.13, -0.25))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: isooctaneMolecule, position: SCNVector3Make( 1.62,  0.17, -0.20))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-0.31, -1.30, -0.59))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: isooctaneMolecule, position: SCNVector3Make( 0.82,  1.30, -0.50))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-1.11, -0.17, -0.90))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-0.55,  1.13, -0.86))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-2.61, -0.35, -1.30))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-3.63,  0.20, -0.24))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-3.39,  1.72,  0.08))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-5.08,  0.03, -0.80))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: isooctaneMolecule, position: SCNVector3Make( 4.05, -0.54, -0.66))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: isooctaneMolecule, position: SCNVector3Make( 3.11,  0.38,  0.17))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make( 3.66, -1.66, -1.01))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make( 5.32, -0.10, -1.02))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: isooctaneMolecule, position: SCNVector3Make( 3.35,  0.13,  1.69))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make( 1.70, -2.04,  0.0))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-0.76, -2.35, -0.63))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make( 1.26,  2.35, -0.47))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-1.18,  2.03, -1.11))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-2.79,  0.20, -2.28))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-2.81, -1.46, -1.45))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-3.50, -0.39,  0.73))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-4.22,  2.12,  0.75))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-2.39,  1.83,  0.61))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-3.39,  2.32, -0.89))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-5.63, -0.78, -0.22))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-5.63,  1.02, -0.68))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make(-5.05, -0.26, -1.90))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make( 3.37,  1.47, -0.08))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make( 5.63,  0.79, -0.74))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make( 3.37, -0.98,  1.92))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make( 2.52,  0.63,  2.28))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: isooctaneMolecule, position: SCNVector3Make( 4.35,  0.58,  2.00))
        isooctaneMolecule.pivot = SCNMatrix4MakeRotation(Float(M_PI_2), 1, 0, 0)
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around y
        spin.fromValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: 0))
        spin.toValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: Float(2 * M_PI)))
        spin.duration = 3
        spin.repeatCount = .infinity
        isooctaneMolecule.addAnimation(spin, forKey: "spin around")
        return isooctaneMolecule
    }
    class func methaneMolecule() -> SCNNode {  // https://en.wikipedia.org/wiki/Methane
        //5  Methane(natural gas) Formula: CH4
        let methaneMolecule = SCNNode()
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: methaneMolecule, position: SCNVector3Make(0, 0, 0))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: methaneMolecule, position: SCNVector3Make(0, 0, 1.089))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: methaneMolecule, position: SCNVector3Make(1.026719, 0,-0.363))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: methaneMolecule, position: SCNVector3Make(-0.51336, -0.889165, -0.363))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: methaneMolecule, position: SCNVector3Make(-0.51336, 0.889165, -0.363))
        //    5   methane molecule (in ångströms)    https://en.wikipedia.org/wiki/XYZ_file_format
        //        C        0.000000        0.000000        0.000000
        //        H        0.000000        0.000000        1.089000
        //        H        1.026719        0.000000       -0.363000
        //        H       -0.513360       -0.889165       -0.363000
        //        H       -0.513360        0.889165       -0.363000
        methaneMolecule.pivot = SCNMatrix4MakeRotation(Float(M_PI_2), 1, 0, 0)
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around y
        spin.fromValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: 0))
        spin.toValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: Float(2 * M_PI)))
        spin.duration = 3
        spin.repeatCount = .infinity
        methaneMolecule.addAnimation(spin, forKey: "spin around")
        return methaneMolecule
    }
    class func ptfeMolecule() -> SCNNode {  // https://en.wikipedia.org/wiki/Polytetrafluoroethylene
        //6  Polytetrafluoroethylene\n(Teflon) synthetic fluoropolymer of tetrafluoroethylene Formula: (C2F4)n
        let ptfeMolecule = SCNNode()
        // 2 double bond Carbon + 4 Flourine repeating structure
        _ = nodeWithAtom(Atoms.fluorineAtom(), molecule: ptfeMolecule, position: SCNVector3Make( 0.79, -1.56, -0.25))
        _ = nodeWithAtom(Atoms.fluorineAtom(), molecule: ptfeMolecule, position: SCNVector3Make(-1.44, -0.99, -0.23))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ptfeMolecule, position: SCNVector3Make(-0.16, -0.64, -0.12))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: ptfeMolecule, position: SCNVector3Make( 0.16,  0.64,  0.12))
        _ = nodeWithAtom(Atoms.fluorineAtom(), molecule: ptfeMolecule, position: SCNVector3Make(-0.79, 1.56, 0.25))
        _ = nodeWithAtom(Atoms.fluorineAtom(), molecule: ptfeMolecule, position: SCNVector3Make( 1.44, 0.99, 0.22))
        ptfeMolecule.pivot = SCNMatrix4MakeRotation(Float(M_PI_2), 1, 0, 0)
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around y
        spin.fromValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: 0))
        spin.toValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: Float(2 * M_PI)))
        spin.duration = 3
        spin.repeatCount = .infinity
        ptfeMolecule.addAnimation(spin, forKey: "spin around")
        return ptfeMolecule
    }
    class func phosphoricAcidMolecule() -> SCNNode {  // https://en.wikipedia.org/wiki/Phosphoric_acid
        //8  Phosphoric acid(mineral acid)\nFormula: H3PO4
        let phosphoricAcidMolecule = SCNNode()
        _ = nodeWithAtom(Atoms.phosphorusAtom(), molecule: phosphoricAcidMolecule, position: SCNVector3Make( -0.07,  0.15,  0))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: phosphoricAcidMolecule, position: SCNVector3Make( 0.99,  1.22,  0.64))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: phosphoricAcidMolecule, position: SCNVector3Make(-1.13,  0.93, -0.99))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: phosphoricAcidMolecule, position: SCNVector3Make( 0.75, -0.98, -0.86))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: phosphoricAcidMolecule, position: SCNVector3Make(-0.81, -0.49,  1.07))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: phosphoricAcidMolecule, position: SCNVector3Make(1.56, 0.69,  1.2))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: phosphoricAcidMolecule, position: SCNVector3Make(-1.56,  1.57, -0.42))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: phosphoricAcidMolecule, position: SCNVector3Make(0.07, -1.57, -1.2))
        //   4  phosphorus molecule (in ångströms)    https://en.wikipedia.org/wiki/Tetrahedron
        //      (+1, +1, +1);
        //      (−1, −1, +1);
        //      (−1, +1, −1);
        //      (+1, −1, −1)
        // Point the pyramid in the -z direction
        phosphoricAcidMolecule.pivot = SCNMatrix4MakeRotation(Float(M_PI_2), 1, 0, 0)
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around y
        spin.fromValue = NSValue(SCNVector4: SCNVector4(x: 0, y: 1, z: 0, w: 0))
        spin.toValue = NSValue(SCNVector4: SCNVector4(x: 0, y: 1, z: 0, w: Float(2 * M_PI)))
        spin.duration = 3
        spin.repeatCount = .infinity
        phosphoricAcidMolecule.addAnimation(spin, forKey: "spin around")
        return phosphoricAcidMolecule
    }
    class func pyrazineMolecule() -> SCNNode {  // https://en.wikipedia.org/wiki/Pyrazine
        //33  Pyrazine(antibiotic)\nFormula: C4H4N2
        let pyrazineMolecule = SCNNode()
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: pyrazineMolecule, position: SCNVector3Make( 1.21, -0.68,  0.02))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: pyrazineMolecule, position: SCNVector3Make( 1.19,  0.71, -0.02))
        _ = nodeWithAtom(Atoms.nitrogenAtom(), molecule: pyrazineMolecule, position: SCNVector3Make( 0.01, -1.39,  0.04))
        _ = nodeWithAtom(Atoms.nitrogenAtom(), molecule: pyrazineMolecule, position: SCNVector3Make(-0.01,  1.39, -0.04))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: pyrazineMolecule, position: SCNVector3Make(-1.19, -0.71,  0.02))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: pyrazineMolecule, position: SCNVector3Make(-1.21,  0.68, -0.02))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: pyrazineMolecule, position: SCNVector3Make( 2.17, -1.23,  0.03))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: pyrazineMolecule, position: SCNVector3Make( 2.15,  1.27, -0.04))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: pyrazineMolecule, position: SCNVector3Make(-2.15, -1.27,  0.04))
        _ = nodeWithAtom(Atoms.hydrogenAtom(), molecule: pyrazineMolecule, position: SCNVector3Make(-2.17, 1.23,  -0.03))
        pyrazineMolecule.pivot = SCNMatrix4MakeRotation(Float(M_PI_2), 1, 0, 0)
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around y
        spin.fromValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: 0))
        spin.toValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: Float(2 * M_PI)))
        spin.duration = 3
        spin.repeatCount = .infinity
        pyrazineMolecule.addAnimation(spin, forKey: "spin around")
        return pyrazineMolecule
    }
    class func sodiumTriphosphateMolecule() -> SCNNode {  // https://en.wikipedia.org/wiki/Sodium_triphosphate
        //18  Sodium triphosphate(detergent)\nFormula Na5P3O10
        let sodiumTriphosphateMolecule = SCNNode()
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make( 1.05, -1.13, -0.25))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make( 1.62,  0.17, -0.20))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make(-0.31, -1.30, -0.59))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make( 0.82,  1.30, -0.50))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make(-1.11, -0.17, -0.90))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make(-0.55,  1.13, -0.86))
        _ = nodeWithAtom(Atoms.carbonAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make(-2.61, -0.35, -1.30))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make(-3.63,  0.20, -0.24))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make(-3.39,  1.72,  0.08))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make(-5.08,  0.03, -0.80))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make( 4.05, -0.54, -0.66))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make( 3.11,  0.38,  0.17))
        _ = nodeWithAtom(Atoms.oxygenAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make( 3.66, -1.66, -1.01))
        _ = nodeWithAtom(Atoms.sodiumAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make( 3.37,  1.47, -0.08))
        _ = nodeWithAtom(Atoms.sodiumAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make( 5.63,  0.79, -0.74))
        _ = nodeWithAtom(Atoms.sodiumAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make( 3.37, -0.98,  1.92))
        _ = nodeWithAtom(Atoms.sodiumAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make( 2.52,  0.63,  2.28))
        _ = nodeWithAtom(Atoms.sodiumAtom(), molecule: sodiumTriphosphateMolecule, position: SCNVector3Make( 4.35,  0.58,  2.00))
        sodiumTriphosphateMolecule.pivot = SCNMatrix4MakeRotation(Float(M_PI_2), 1, 0, 0)
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around y
        spin.fromValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: 0))
        spin.toValue = NSValue(SCNVector4: SCNVector4(x: 1, y: 0, z: 0, w: Float(2 * M_PI)))
        spin.duration = 3
        spin.repeatCount = .infinity
        sodiumTriphosphateMolecule.addAnimation(spin, forKey: "spin around")
        return sodiumTriphosphateMolecule
    }
    class func nodeWithAtom(atom: SCNGeometry, molecule: SCNNode, position: SCNVector3) -> SCNNode {
        let node = SCNNode(geometry: atom)
        node.position = position
        molecule.addChildNode(node)
        return node
    }
}
