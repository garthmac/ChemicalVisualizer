//
//  Atoms.swift
//  ChemicalVisualizer  Copyright (c) 2015 Garth MacKenzie
//
//  Created by iMac 27 on 2015-12-01.
//
//

import UIKit
import SceneKit

class Atoms {
    //https://en.wikipedia.org/wiki/Van_der_Waals_radius
    class func argonAtom() -> SCNGeometry {  //18
        let argonAtom = SCNSphere(radius: 1.88)
        argonAtom.firstMaterial!.diffuse.contents = UIColor.crayons_tealColor(1.0)
        argonAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return argonAtom
    }
    class func arsenicAtom() -> SCNGeometry {  //33
        let arsenicAtom = SCNSphere(radius: 1.85)
        arsenicAtom.firstMaterial!.diffuse.contents = UIColor.purpleColor()
        arsenicAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return arsenicAtom
    }
    class func bromineAtom() -> SCNGeometry {  //35
        let bromineAtom = SCNSphere(radius: 1.85)
        bromineAtom.firstMaterial!.diffuse.contents = UIColor.crayons_springColor(1.0)
        bromineAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return bromineAtom
    }
    class func cadmiumAtom() -> SCNGeometry {  //48
        let cadmiumAtom = SCNSphere(radius: 1.58)
        cadmiumAtom.firstMaterial!.diffuse.contents = UIColor.crayons_salmonColor(1.0)
        cadmiumAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return cadmiumAtom
    }
    class func carbonAtom() -> SCNGeometry {  //6
        let carbonAtom = SCNSphere(radius: 1.70)
        carbonAtom.firstMaterial!.diffuse.contents = UIColor.darkGrayColor()
        carbonAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return carbonAtom
    }
    class func chlorineAtom() -> SCNGeometry {  //17
        let chlorineAtom = SCNSphere(radius: 1.175)
        chlorineAtom.firstMaterial!.diffuse.contents = UIColor.greenColor()
        chlorineAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return chlorineAtom
    }
    class func cobaltAtom() -> SCNGeometry {  //27
        let cobaltAtom = SCNSphere(radius: 1.92)
        cobaltAtom.firstMaterial!.diffuse.contents = UIColor.darkGrayColor()
        cobaltAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return cobaltAtom
    }
    class func copperAtom() -> SCNGeometry {  //29
        let copperAtom = SCNSphere(radius: 1.40)
        copperAtom.firstMaterial!.diffuse.contents = UIColor.crayons_spindriftColor(1.0)
        copperAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return copperAtom
    }
    class func fluorineAtom() -> SCNGeometry {  //9
        let fluorineAtom = SCNSphere(radius: 1.47)
        fluorineAtom.firstMaterial!.diffuse.contents = UIColor.crayons_fernColor(1.0)
        fluorineAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return fluorineAtom
    }
    class func galliumAtom() -> SCNGeometry {  //31
        let galliumAtom = SCNSphere(radius: 1.87)
        galliumAtom.firstMaterial!.diffuse.contents = UIColor.crayons_strawberryColor(1.0)
        galliumAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return galliumAtom
    }
    class func goldAtom() -> SCNGeometry {  //79
        let goldAtom = SCNSphere(radius: 1.66)
        goldAtom.firstMaterial!.diffuse.contents = UIColor.crayons_bananaColor(1.0)
        goldAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return goldAtom
    }
    class func helliumAtom() -> SCNGeometry {  //2
        let helliumAtom = SCNSphere(radius: 1.40)
        helliumAtom.firstMaterial!.diffuse.contents = UIColor.crayons_skyColor(1.0)
        helliumAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return helliumAtom
    }
    class func hydrogenAtom() -> SCNGeometry {  //1
        let hydrogenAtom = SCNSphere(radius: 1.20)
        hydrogenAtom.firstMaterial!.diffuse.contents = UIColor.lightGrayColor()
        hydrogenAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return hydrogenAtom
    }
    class func indiumAtom() -> SCNGeometry {  //49
        let indiumAtom = SCNSphere(radius: 1.93)
        indiumAtom.firstMaterial!.diffuse.contents = UIColor.brownColor()
        indiumAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return indiumAtom
    }
    class func iodineAtom() -> SCNGeometry {  //53
        let iodineAtom = SCNSphere(radius: 1.98)
        iodineAtom.firstMaterial!.diffuse.contents = UIColor.crayons_eggplantColor(1.0)
        iodineAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return iodineAtom
    }
    class func kryptonAtom() -> SCNGeometry {  //36
        let kryptonAtom = SCNSphere(radius: 2.02)
        kryptonAtom.firstMaterial!.diffuse.contents = UIColor.crayons_steelColor(1.0)
        kryptonAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return kryptonAtom
    }
    class func leadAtom() -> SCNGeometry {  //82
        let leadAtom = SCNSphere(radius: 2.02)
        leadAtom.firstMaterial!.diffuse.contents = UIColor.crayons_tungstenColor(1.0)
        leadAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return leadAtom
    }
    class func lithiumAtom() -> SCNGeometry {  //3
        let lithiumAtom = SCNSphere(radius: 1.82)
        lithiumAtom.firstMaterial!.diffuse.contents = UIColor.crayons_lavenderColor(1.0)
        lithiumAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return lithiumAtom
    }
    class func magnesiumAtom() -> SCNGeometry {  //12
        let magnesiumAtom = SCNSphere(radius: 1.73)
        magnesiumAtom.firstMaterial!.diffuse.contents = UIColor.crayons_magnesiumColor(1.0)
        magnesiumAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return magnesiumAtom
    }
    class func mercuryAtom() -> SCNGeometry {  //80
        let mercuryAtom = SCNSphere(radius: 1.55)
        mercuryAtom.firstMaterial!.diffuse.contents = UIColor.crayons_mercuryColor(1.0)
        mercuryAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return mercuryAtom
    }
    class func neonAtom() -> SCNGeometry {  //10
        let neonAtom = SCNSphere(radius: 1.54)
        neonAtom.firstMaterial!.diffuse.contents = UIColor.crayons_aquaColor(1.0)
        neonAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return neonAtom
    }
    class func nickleAtom() -> SCNGeometry {  //28
        let nickleAtom = SCNSphere(radius: 1.63)
        nickleAtom.firstMaterial!.diffuse.contents = UIColor.crayons_nickelColor(1.0)
        nickleAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return nickleAtom
    }
    class func nitrogenAtom() -> SCNGeometry {  //7
        let nitrogenAtom = SCNSphere(radius: 1.55)
        nitrogenAtom.firstMaterial!.diffuse.contents = UIColor.blueColor()
        nitrogenAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return nitrogenAtom
    }
    class func oxygenAtom() -> SCNGeometry {  //8
        let oxygenAtom = SCNSphere(radius: 1.52)
        oxygenAtom.firstMaterial!.diffuse.contents = UIColor.redColor()
        oxygenAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return oxygenAtom
    }
    class func palladiumAtom() -> SCNGeometry {  //46
        let palladiumAtom = SCNSphere(radius: 1.63)
        palladiumAtom.firstMaterial!.diffuse.contents = UIColor.crayons_seaFoamColor(1.0)
        palladiumAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return palladiumAtom
    }
    class func phosphorusAtom() -> SCNGeometry {  //15
        let phosphorusAtom = SCNSphere(radius: 1.80)
        phosphorusAtom.firstMaterial!.diffuse.contents = UIColor.crayons_plumColor(1.0)
        phosphorusAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return phosphorusAtom
    }
    class func platinumAtom() -> SCNGeometry {  //78
        let platinumAtom = SCNSphere(radius: 1.75)
        platinumAtom.firstMaterial!.diffuse.contents = UIColor.crayons_iceColor(1.0)
        platinumAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return platinumAtom
    }
    class func potassiumAtom() -> SCNGeometry {  //19
        let potassiumAtom = SCNSphere(radius: 2.75)
//        potassiumAtom.firstMaterial!.diffuse.contents = UIColor.crayons_grapeColor(1.0)
        potassiumAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        potassiumAtom.segmentCount = 48;
        potassiumAtom.firstMaterial!.diffuse.contents = "iTunesArtwork@2x_clear.png"
//        potassiumAtom.firstMaterial!.specular.contents = "earth-specular.jpg"
        potassiumAtom.firstMaterial!.specular.intensity = 0.2
        
//        potassiumAtom.firstMaterial!.shininess = 0.1
//        potassiumAtom.firstMaterial!.reflective.contents = "envmap.jpg"
//        potassiumAtom.firstMaterial!.reflective.intensity = 0.5
//        potassiumAtom.firstMaterial!.fresnelExponent = 2
        return potassiumAtom
    }
    class func seleniumAtom() -> SCNGeometry {  //34
        let seleniumAtom = SCNSphere(radius: 1.90)
        seleniumAtom.firstMaterial!.diffuse.contents = UIColor.crayons_cantaloupeColor(1.0)
        seleniumAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return seleniumAtom
    }
    class func siliconAtom() -> SCNGeometry {  //14
        let siliconAtom = SCNSphere(radius: 2.10)
        siliconAtom.firstMaterial!.diffuse.contents = UIColor.crayons_turquoiseColor(1.0)
        siliconAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        siliconAtom.segmentCount = 48;
        siliconAtom.firstMaterial!.diffuse.contents = "3D.png"
        //        potassiumAtom.firstMaterial!.specular.contents = "earth-specular.jpg"
        siliconAtom.firstMaterial!.specular.intensity = 0.2
        return siliconAtom
    }
    class func silverAtom() -> SCNGeometry {  //47
        let silverAtom = SCNSphere(radius: 1.72)
        silverAtom.firstMaterial!.diffuse.contents = UIColor.crayons_silverColor(1.0)
        silverAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return silverAtom
    }
    class func sodiumAtom() -> SCNGeometry {  //11
        let sodiumAtom = SCNSphere(radius: 2.27)
        sodiumAtom.firstMaterial!.diffuse.contents = UIColor.crayons_grapeColor(1.0)
        sodiumAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return sodiumAtom
    }
    class func sulfurAtom() -> SCNGeometry {  //16
        let sulfurAtom = SCNSphere(radius: 1.80)
        sulfurAtom.firstMaterial!.diffuse.contents = UIColor.crayons_lemonColor(1.0)
        sulfurAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return sulfurAtom
    }
    class func telluriumAtom() -> SCNGeometry {  //52
        let telluriumAtom = SCNSphere(radius: 2.06)
        telluriumAtom.firstMaterial!.diffuse.contents = UIColor.crayons_tangerineColor(1.0)
        telluriumAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return telluriumAtom
    }
    class func thalliumAtom() -> SCNGeometry {  //81
        let thalliumAtom = SCNSphere(radius: 1.96)
        thalliumAtom.firstMaterial!.diffuse.contents = UIColor.crayons_mochaColor(1.0)
        thalliumAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return thalliumAtom
    }
    class func tinAtom() -> SCNGeometry {  //50
        let tinAtom = SCNSphere(radius: 2.17)
        tinAtom.firstMaterial!.diffuse.contents = UIColor.crayons_tinColor(1.0)
        tinAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return tinAtom
    }
    class func uraniumAtom() -> SCNGeometry {  //92
        let uraniumAtom = SCNSphere(radius: 1.86)
        uraniumAtom.firstMaterial!.diffuse.contents = UIColor.crayons_blueberryColor(1.0)
        uraniumAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return uraniumAtom
    }
    class func xenonAtom() -> SCNGeometry {   //54
        let xenonAtom = SCNSphere(radius: 2.16)
        xenonAtom.firstMaterial!.diffuse.contents = UIColor.crayons_asparagusColor(1.0)
        xenonAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return xenonAtom
    }
    class func zincAtom() -> SCNGeometry {  //30
        let zincAtom = SCNSphere(radius: 1.39)
        zincAtom.firstMaterial!.diffuse.contents = UIColor.crayons_magentaColor(1.0)
        zincAtom.firstMaterial!.specular.contents = UIColor.whiteColor()
        return zincAtom
    }
    class func allAtoms() -> SCNNode {
        let atomsNode = SCNNode()

        let argonNode = SCNNode(geometry: argonAtom())
        argonNode.position = SCNVector3Make(-10, 12, 0)
        atomsNode.addChildNode(argonNode)
        
        let arsenicNode = SCNNode(geometry: arsenicAtom())
        arsenicNode.position = SCNVector3Make(-6, 12, 0)
        atomsNode.addChildNode(arsenicNode)
        
        let bromineNode = SCNNode(geometry: bromineAtom())
        bromineNode.position = SCNVector3Make(-2, 12, 0)
        atomsNode.addChildNode(bromineNode)
        
        let cadmiumNode = SCNNode(geometry: cadmiumAtom())
        cadmiumNode.position = SCNVector3Make( 2, 12, 0)
        atomsNode.addChildNode(cadmiumNode)
        
        let carbonNode = SCNNode(geometry: carbonAtom())
        carbonNode.position = SCNVector3Make( 6, 12, 0)
        atomsNode.addChildNode(carbonNode)
        
        let chlorineNode = SCNNode(geometry: chlorineAtom())
        chlorineNode.position = SCNVector3Make( 10, 12, 0)
        atomsNode.addChildNode(chlorineNode)
        
        let cobaltNode = SCNNode(geometry: cobaltAtom())
        cobaltNode.position = SCNVector3Make(-10, 8, 0)
        atomsNode.addChildNode(cobaltNode)
        
        let copperNode = SCNNode(geometry: copperAtom())
        copperNode.position = SCNVector3Make(-6, 8, 0)
        atomsNode.addChildNode(copperNode)
        
        let fluorineNode = SCNNode(geometry: fluorineAtom())
        fluorineNode.position = SCNVector3Make(-2, 8, 0)
        atomsNode.addChildNode(fluorineNode)
        
        let galliumNode = SCNNode(geometry: galliumAtom())
        galliumNode.position = SCNVector3Make(+2, 8, 0)
        atomsNode.addChildNode(galliumNode)
        
        let goldNode = SCNNode(geometry: goldAtom())
        goldNode.position = SCNVector3Make(+6, 8, 0)
        atomsNode.addChildNode(goldNode)
        
        let helliumNode = SCNNode(geometry: helliumAtom())
        helliumNode.position = SCNVector3Make(+10, 8, 0)
        atomsNode.addChildNode(helliumNode)
        
        let hydrogenNode = SCNNode(geometry: hydrogenAtom())
        hydrogenNode.position = SCNVector3Make(-10, 4, 0)
        atomsNode.addChildNode(hydrogenNode)
        
        let indiumNode = SCNNode(geometry: indiumAtom())
        indiumNode.position = SCNVector3Make(-6, 4, 0)
        atomsNode.addChildNode(indiumNode)
        
        let iodineNode = SCNNode(geometry: iodineAtom())
        iodineNode.position = SCNVector3Make(-2, 4, 0)
        atomsNode.addChildNode(iodineNode)
        
        let kryptonNode = SCNNode(geometry: kryptonAtom())
        kryptonNode.position = SCNVector3Make( 2, 4, 0)
        atomsNode.addChildNode(kryptonNode)
        
        let leadNode = SCNNode(geometry: leadAtom())
        leadNode.position = SCNVector3Make(+6, 4, 0)
        atomsNode.addChildNode(leadNode)
        
        let lithiumNode = SCNNode(geometry: lithiumAtom())
        lithiumNode.position = SCNVector3Make(+10, 4, 0)
        atomsNode.addChildNode(lithiumNode)
        
        let magnesiumNode = SCNNode(geometry: magnesiumAtom())
        magnesiumNode.position = SCNVector3Make(-10, 0, 0)
        atomsNode.addChildNode(magnesiumNode)
        
        let mercuryNode = SCNNode(geometry: mercuryAtom())
        mercuryNode.position = SCNVector3Make(-6, 0, 0)
        atomsNode.addChildNode(mercuryNode)
        
        let neonNode = SCNNode(geometry: neonAtom())
        neonNode.position = SCNVector3Make(-2, 0, 0)
        atomsNode.addChildNode(neonNode)
        
        let nickleNode = SCNNode(geometry: nickleAtom())
        nickleNode.position = SCNVector3Make(+2, 0, 0)
        atomsNode.addChildNode(nickleNode)
        
        let nitrogenNode = SCNNode(geometry: nitrogenAtom())
        nitrogenNode.position = SCNVector3Make(+2, 0, 0)
        atomsNode.addChildNode(nitrogenNode)
        
        let oxygenNode = SCNNode(geometry: oxygenAtom())
        oxygenNode.position = SCNVector3Make(+6, 0, 0)
        atomsNode.addChildNode(oxygenNode)
        
        let palladiumNode = SCNNode(geometry: palladiumAtom())
        palladiumNode.position = SCNVector3Make(+10, 0, 0)
        atomsNode.addChildNode(palladiumNode)
        
        let phosphorusNode = SCNNode(geometry: phosphorusAtom())
        phosphorusNode.position = SCNVector3Make(-10, -8, 0)
        atomsNode.addChildNode(phosphorusNode)
        
        let platinumNode = SCNNode(geometry: platinumAtom())
        platinumNode.position = SCNVector3Make(10, -12, 0)
        atomsNode.addChildNode(platinumNode)
        
        let potassiumNode = SCNNode(geometry: potassiumAtom())
        potassiumNode.position = SCNVector3Make(-2, -4.5, 0)
        atomsNode.addChildNode(potassiumNode)
        potassiumNode.runAction(SCNAction.repeatActionForever(SCNAction.rotateByX( 0, y: CGFloat(M_PI), z: 0, duration: 6)))
        
        let seleniumNode = SCNNode(geometry: seleniumAtom())
        seleniumNode.position = SCNVector3Make( 2, -12, 0)
        atomsNode.addChildNode(seleniumNode)
        
        let siliconNode = SCNNode(geometry: siliconAtom())
        siliconNode.position = SCNVector3Make(+4, -4, 0)
        atomsNode.addChildNode(siliconNode)
        
        let silverNode = SCNNode(geometry: silverAtom())
        silverNode.position = SCNVector3Make(+10, -4, 0)
        atomsNode.addChildNode(silverNode)
        
        let sodiumNode = SCNNode(geometry: sodiumAtom())
        sodiumNode.position = SCNVector3Make(-7.5, -4, 0)
        atomsNode.addChildNode(sodiumNode)
        
        let sulfurNode = SCNNode(geometry: sulfurAtom())
        sulfurNode.position = SCNVector3Make(-5.5, -8, 0)
        atomsNode.addChildNode(sulfurNode)
        
        let telluriumNode = SCNNode(geometry: telluriumAtom())
        telluriumNode.position = SCNVector3Make(-8, -12, 0)
        atomsNode.addChildNode(telluriumNode)
        
        let thalliumNode = SCNNode(geometry: thalliumAtom())
        thalliumNode.position = SCNVector3Make( 1.8, -7.8, 0)
        atomsNode.addChildNode(thalliumNode)
        
        let tinNode = SCNNode(geometry: tinAtom())
        tinNode.position = SCNVector3Make(+6, -8, 0)
        atomsNode.addChildNode(tinNode)
        
        let uraniumNode = SCNNode(geometry: uraniumAtom())
        uraniumNode.position = SCNVector3Make(+10, -8, 0)
        atomsNode.addChildNode(uraniumNode)
        
        let xenonNode = SCNNode(geometry: xenonAtom())
        xenonNode.position = SCNVector3Make(-2.5, -11, 0)
        atomsNode.addChildNode(xenonNode)
        
        let zincNode = SCNNode(geometry: zincAtom())
        zincNode.position = SCNVector3Make(+6, -12, 0)
        atomsNode.addChildNode(zincNode)
        
        return atomsNode
    }
}
