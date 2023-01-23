//
//  ViewController.swift
//  Cyclic circle(version2)
//
//  Created by Konstantyn Koroban on 25/09/2021.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var circleView = makeCircleView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(circleView)
        moveToRight(circleView)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    private func moveToRight(_ targetView: UIView) {
        UIView.animate(withDuration: 1,
                       delay: 0,
                       options: [],
                       animations: {targetView.frame.origin = CGPoint(x: targetView.frame.origin.x + 150, y: targetView.frame.origin.y)},
                       completion: {_ in self.moveToDown(targetView)})
        
    }
    
    private func moveToDown(_ targetView: UIView) {
        UIView.animate(withDuration: 1,
                       delay: 0,
                       options: [],
                       animations: {targetView.frame.origin = CGPoint(x: targetView.frame.origin.x , y: targetView.frame.origin.y + 150)},
                       completion: {_ in self.moveToLeft(targetView)})
    }
    
    private func moveToLeft(_ targetView: UIView) {
        UIView.animate(withDuration: 1,
                       delay: 0,
                       options: [],
                       animations: {targetView.frame.origin = CGPoint(x: targetView.frame.origin.x - 150 , y: targetView.frame.origin.y)},
                       completion: {_ in self.moveToUp(targetView)})
    }
    
    private func moveToUp(_ targetView: UIView) {
        UIView.animate(withDuration: 1,
                       delay: 0,
                       options: [],
                       animations: {targetView.frame.origin = CGPoint(x: targetView.frame.origin.x , y: targetView.frame.origin.y - 150)},
                       completion: {_ in self.moveToRight(targetView)})
        
    }
    
    private func makeCircleView() -> UIView {
        let circleView = UIView()
        circleView.backgroundColor = .green
        circleView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        circleView.layer.cornerRadius = circleView.frame.width/2
        return circleView
        
    }
    
}







