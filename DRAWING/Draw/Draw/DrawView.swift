//
//  DrawView.swift
//  Draw
//
//  Created by Florian Doppler on 18.02.22.
//

import UIKit

class DrawView: UIView {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func draw(_ rect: CGRect) {
        /* let path = UIBezierPath()
        path.move(to: CGPoint(x: 100, y: 100))
        path.addLine(to: CGPoint(x: 300, y: 300))
        path.addArc(withCenter: CGPoint(x: 200, y: 400), radius: 100, startAngle: 0, endAngle: 1.57, clockwise: true)
        path.addLine(to: CGPoint(x: 100, y: 500))
        UIColor.red.setStroke()
        path.close()
        UIColor.blue.setFill()
        path.lineWidth = 10
        path.stroke()
        path.fill() */
        
        let rect = CGRect(x: 75, y: 300, width: 250, height: 250)
        let roundedRect = UIBezierPath(roundedRect: rect, cornerRadius: 500)
        let circle = UIBezierPath(ovalIn: rect)
        UIColor.yellow.setFill()
        UIColor.black.setStroke()
        circle.fill()
        circle.stroke()
        
        let secondRect = CGRect(x: 120, y: 340, width: 70, height: 70)
        let secondRoundedRect = UIBezierPath(roundedRect: secondRect, cornerRadius: 500)
        let secondCircle = UIBezierPath(ovalIn: secondRect)
        UIColor.white.setFill()
        UIColor.black.setStroke()
        secondCircle.fill()
        secondCircle.stroke()
        
        let thirdRect = CGRect(x: 200, y: 340, width: 70, height: 70)
        let thirdRoundedRect = UIBezierPath(roundedRect: thirdRect, cornerRadius: 500)
        let thirdCircle = UIBezierPath(ovalIn: thirdRect)
        UIColor.white.setFill()
        UIColor.black.setStroke()
        thirdCircle.fill()
        thirdCircle.stroke()
        
        let pupil = CGRect(x: 145, y: 360, width: 25, height: 25)
        let roundedPupil = UIBezierPath(roundedRect: pupil, cornerRadius: 500)
        let pupilCircle = UIBezierPath(ovalIn: pupil)
        UIColor.black.setFill()
        pupilCircle.fill()
        
        let secondPupil = CGRect(x: 225, y: 360, width: 25, height: 25)
        let secondRoundedPupil = UIBezierPath(roundedRect: secondPupil, cornerRadius: 500)
        let secondPupilCircle = UIBezierPath(ovalIn: secondPupil)
        UIColor.black.setFill()
        secondPupilCircle.fill()
        
        
        let nose = CGRect(x: 180, y: 410, width: 30, height: 60)
        let roundedNose = UIBezierPath(roundedRect: nose, cornerRadius: 50)
        UIColor.black.setStroke()
        roundedNose.stroke()
        
        let smile = UIBezierPath();
        smile.addArc(withCenter: CGPoint(x: 200, y: 430), radius: 80, startAngle: 0.6, endAngle: 2.5, clockwise: true)
        UIColor.black.setStroke()
        smile.stroke();
        
    }
    

    
    

}
