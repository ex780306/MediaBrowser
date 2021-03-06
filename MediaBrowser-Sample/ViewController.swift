//
//  ViewController.swift
//  MediaBrowser-Sample
//
//  Created by Joe on 2017/1/9.
//  Copyright © 2017年 Joe. All rights reserved.
//

import UIKit
import MediaBrowser

class ViewController: UIViewController {

    @IBOutlet weak var browser: MediaBrowser!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let residentEvilVideoItem = VideoItem(image: UIImage(named: "resident_evil")!,
                                              videoUrl: URL(fileURLWithPath: Bundle.main.path(forResource: "resident_evil", ofType: "mp4")!))
        let starWarsVideoItem = VideoItem(image: UIImage(named: "star_wars")!,
                                          videoUrl: URL(fileURLWithPath: Bundle.main.path(forResource: "star_wars", ofType: "mp4")!))

        let residentEvilImageItem = ImageItem(image: UIImage(named: "resident_evil")!)
        let starWarsImageItem = ImageItem(image: UIImage(named: "star_wars")!)
        
        browser.mediaItems = [residentEvilVideoItem, starWarsVideoItem, residentEvilImageItem, starWarsImageItem]
        browser.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


extension ViewController: MediaBrowserDelegate{
    func mediaBrowser(_ browser: MediaBrowser, willMoving page: Int) {
        print(page)
    }
}
