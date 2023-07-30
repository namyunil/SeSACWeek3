//
//  MovieTableViewController.swift
//  SeSACWeek3
//
//  Created by NAM on 2023/07/30.
//

import UIKit

class MovieTableViewController: UITableViewController {

    var movieList = MovieInfo()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 240
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movieList.movie.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.identifier) as! MovieTableViewCell
        
        let row = movieList.movie[indexPath.row]
        cell.configureMovieCell(row: row)
        
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
}
