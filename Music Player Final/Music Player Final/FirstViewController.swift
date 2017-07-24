//
//  FirstViewController.swift
//  Music Player Final
//
//  Created by Jaylin Phipps on 7/24/17.
//  Copyright © 2017 Jaylin Phipps. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var musicSongTableView: UITableView!
    
    let musicSong = PlayersSongJSONLoader.load(fileName: "music_songs")
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        self.title = "Songs"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicSong.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath)
        
        if let cell = cell as? MusicSongTableViewCell {
            let musicSongs = musicSong[indexPath.row]
            cell.songIconImageView.image = musicSongs.classification.image
            cell.titleLabel.text = musicSongs.title
            cell.artistLabel.text = musicSongs.artist
        }
        return cell
    }
    



}

