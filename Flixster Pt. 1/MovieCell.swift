//
//  MovieCell.swift
//  Flixster Pt. 1
//
//  Created by Kayla Son on 3/6/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    /// Configures the cell's UI for the given track.
    func configure(with movie: Movie) {
        movieTitleLabel.text = movie.titleName
        movieDescription.text = movie.description

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movie.artworkUrl100, into: movieImageView)
    }
    

}
