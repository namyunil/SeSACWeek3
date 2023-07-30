//
//  MovieTableViewCell.swift
//  SeSACWeek3
//
//  Created by NAM on 2023/07/30.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    static let identifier = "MovieTableViewCell"
    
    @IBOutlet var moviePosterImageView: UIImageView!
    
    @IBOutlet var movieNameLabel: UILabel!
    @IBOutlet var movieReleaseDateLabel: UILabel!
    @IBOutlet var movieRunningTimeLabel: UILabel!
    @IBOutlet var movieRatingLabel: UILabel!
    
    
//    @IBOutlet var movieStoryViewCell: UITableViewCell!
    
    // overview를 UILabel과 UITableViewCell로 했을때의 차이점?
    @IBOutlet var movieStoryViewCell: UILabel!
    
    func configureMovieCell(row: Movie) {
        
        moviePosterImageView.image = UIImage(named: row.title)
        movieNameLabel.text = row.title
        movieReleaseDateLabel.text = row.releaseDate
        movieRunningTimeLabel.text = ("| \(row.runtime)분 |")
        movieRatingLabel.text = ("\(row.rate)점")
        movieStoryViewCell.text = row.overview
        
 
        
    }
    
    
    
}
