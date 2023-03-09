//
//  DetailViewController.swift
//  Flixster Pt. 1
//
//  Created by Kayla Son on 3/6/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var movieBackground: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieVoteAvg: UILabel!
    @IBOutlet weak var movieVoteCount: UILabel!
    @IBOutlet weak var moviePop: UILabel!
    @IBOutlet weak var testingDescript: UITextView!
    //@IBOutlet var movieDescript: UILabel!

        

        // Do any additional setup after loading the view.
        
        // A property to store the track object.
        // We can set this property by passing along the track object associated with the track the user tapped in the table view.
        var movie: Movie!

        override func viewDidLoad() {
            super.viewDidLoad()

            // Load the image located at the `artworkUrl100` URL and set it on the image view.
            Nuke.loadImage(with: movie.backdropImage, into: movieBackground)

            // Set labels with the associated track values.
            movieTitle.text = movie.titleName
            movieVoteAvg.text =  movie.voteAverage + " Vote Average"
            movieVoteCount.text = movie.voteCount + " Votes"
            moviePop.text = movie.popularity + " Popularity"
            //movieDescript.text = movie.description
            testingDescript.text = movie.description

        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
