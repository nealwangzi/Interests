//
//  HomeViewController.swift
//  Interests
//
//  Created by neal on 2017/7/3.
//  Copyright © 2017年 Cloudoc. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var collevtionView: UICollectionView!

    fileprivate var interestrs = Interest.createInterests()
    
    fileprivate  struct Storyboard {
        static let cellIndentifier  = "Interest Cell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


// MARK: - UICollectionViewDataSource
extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interestrs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Storyboard.cellIndentifier, for: indexPath) as! InterestCollectionViewCell
        
        cell.interest = interestrs[(indexPath as NSIndexPath).item]
        return cell
    }
}


// MARK: - UICollectionViewDelegate
extension HomeViewController:UICollectionViewDelegate {
    
}


// MARK: - UIScrollViewDelegate
extension HomeViewController: UIScrollViewDelegate {
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let layout = self.collevtionView.collectionViewLayout as! UICollectionViewFlowLayout
        let cellWidthWithSpace = layout.itemSize.width + layout.minimumLineSpacing
        
        var offset = targetContentOffset.pointee
        
        let index = (offset.x + scrollView.contentInset.left) / cellWidthWithSpace
        
        let roundedIndex = round(index)

        let interest:Interest = interestrs[Int(roundedIndex)]
        
        self.backgroundImageView.image = interest.featuredImage
        
        offset = CGPoint(x: roundedIndex * cellWidthWithSpace - scrollView.contentInset.left, y: -scrollView.contentInset.top)
    }
}
