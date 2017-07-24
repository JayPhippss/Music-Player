//
//  MusicSongTableViewCell.swift
//  Music Player Final
//
//  Created by Jaylin Phipps on 7/24/17.
//  Copyright © 2017 Jaylin Phipps. All rights reserved.
//

import UIKit

class MusicSongTableViewCell: UITableViewCell {
    @IBOutlet weak var songIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
