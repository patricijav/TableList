//
//  MovieDetailsViewController.swift
//  TableList
//
//  Created by patricija.vainovska on 24/04/2023.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var movieDirectorLabel: UILabel!
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if movie != nil {
            movieImageView.image = UIImage(named: movie.cover)
            movieTitleLabel.text = "Title: \(movie.title)"
            movieTitleLabel.numberOfLines = 0
            movieYearLabel.text = "Year: \(movie.year)"
            movieDirectorLabel.text = "Director: \(movie.director)"
            movieRatingLabel.text = "Rating: \(movie.rating) ⭐"
        }
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
