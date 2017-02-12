//
//  DetailViewController.swift
//  MovieViewer
//
//  Created by Gokulsree Yenugadhati on 2/10/17.
//  Copyright © 2017 Gokul Yenugadhati. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var overViewLabel: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var infoView: UIView!
    
    
    
    
    
    var movie: NSDictionary!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width:scrollView.frame.size.width, height: infoView.frame.origin.y + infoView.frame.size.height)
        let title = movie["title"] as? String
        titleLabel.text = title
        let overview = movie["overview"] as? String
        overViewLabel.text = overview
        overViewLabel.sizeToFit()
        let baseURL = "https://image.tmdb.org/t/p/w500/"
        if let posterPath = movie["poster_path"] as? String{
            
            let imageURL = NSURL(string: baseURL + posterPath)
            
            postImageView.setImageWith(imageURL as! URL)
            
        }

        
        
        print(movie)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
