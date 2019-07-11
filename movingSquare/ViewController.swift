//
//  ViewController.swift
//  movingSquare
//
//  Created by Jagmeet Kaur on 2019-07-11.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lbl_rect: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbl_rect.backgroundColor = getRandomColor()
        move_front()
    }
    
    func move_front()
    {
        UIView.animate(withDuration: 1, delay: 1 ,animations: {
            self.lbl_rect.transform = CGAffineTransform(translationX: 20, y: 768)
        }, completion: {
            (completed: Bool) -> Void in
            UIView.animate(withDuration: 1, delay: 0 ,animations: {
                self.lbl_rect.transform = CGAffineTransform(translationX: 100, y: 768)
            }, completion: {
                (completed: Bool) -> Void in
                UIView.animate(withDuration: 1, delay: 0 ,animations: {
                    self.lbl_rect.transform = CGAffineTransform(translationX: 100, y: 0)
                }, completion: {
                    (completed: Bool) -> Void in
                    UIView.animate(withDuration: 1, delay: 0 ,animations: {
                        self.lbl_rect.transform = CGAffineTransform(translationX: 183, y: 0)
                    }, completion: {
                        (completed: Bool) -> Void in
                        UIView.animate(withDuration: 1, delay: 0 ,animations: {
                            self.lbl_rect.transform = CGAffineTransform(translationX: 183, y: 768)
                        }, completion: {
                            (completed: Bool) -> Void in
                            UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                self.lbl_rect.transform = CGAffineTransform(translationX: 243, y: 768)
                            }, completion: {
                                (completed: Bool) -> Void in
                                UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                    self.lbl_rect.transform = CGAffineTransform(translationX: 243, y: 0)
                                }, completion: {
                                    (completed: Bool) -> Void in
                                    UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                        self.lbl_rect.transform = CGAffineTransform(translationX: 328, y: 0)
                                    }, completion: {
                                        (completed: Bool) -> Void in
                                        UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                            self.lbl_rect.transform = CGAffineTransform(translationX: 328, y: 768)
                                        }, completion: {
                                            (completed: Bool) -> Void in
                                            self.lbl_rect.backgroundColor = self.getRandomColor()
                                            self.move_back()
                                        })
                                    })
                                })
                            })
                        })
                    })
                })
            })
        })
    }
    
    
    
    
    func move_back()
    {
        UIView.animate(withDuration: 1, delay: 1 ,animations: {
            self.lbl_rect.transform = CGAffineTransform(translationX: 328, y: 0)
        }, completion: {
            (completed: Bool) -> Void in
            UIView.animate(withDuration: 1, delay: 0 ,animations: {
                self.lbl_rect.transform = CGAffineTransform(translationX: 243, y: 0)
            }, completion: {
                (completed: Bool) -> Void in
                UIView.animate(withDuration: 1, delay: 0 ,animations: {
                    self.lbl_rect.transform = CGAffineTransform(translationX: 243, y: 768)
                }, completion: {
                    (completed: Bool) -> Void in
                    UIView.animate(withDuration: 1, delay: 0 ,animations: {
                        self.lbl_rect.transform = CGAffineTransform(translationX: 183, y: 768)
                    }, completion: {
                        (completed: Bool) -> Void in
                        UIView.animate(withDuration: 1, delay: 0 ,animations: {
                            self.lbl_rect.transform = CGAffineTransform(translationX: 183, y: 0)
                        }, completion: {
                            (completed: Bool) -> Void in
                            UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                self.lbl_rect.transform = CGAffineTransform(translationX: 100, y: 0)
                            }, completion: {
                                (completed: Bool) -> Void in
                                UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                    self.lbl_rect.transform = CGAffineTransform(translationX: 100, y: 768)
                                }, completion: {
                                    (completed: Bool) -> Void in
                                    UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                        self.lbl_rect.transform = CGAffineTransform(translationX: 20, y: 768)
                                    }, completion: {
                                        (completed: Bool) -> Void in
                                        UIView.animate(withDuration: 1, delay: 0 ,animations: {
                                            self.lbl_rect.transform = CGAffineTransform(translationX: 20, y: 0)
                                        }, completion: {
                                            (completed: Bool) -> Void in
                                            self.lbl_rect.backgroundColor = self.getRandomColor()
                                            self.move_front()
                                        })
                                    })
                                })
                            })
                        })
                    })
                })
            })
        })
    }
    
    
    func getRandomColor() -> UIColor {
        //Generate between 0 to 1
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    
    
}


