//
//  WallpaperViewController.swift
//  WallpaperApp
//
//  Created by Pavel Gribachev on 31.01.2024.
//

import UIKit

class WallpaperViewController: UIViewController {
    
    @IBAction func testRequestDidTapped(_ sender: UIButton) {
        fetchWallpaper()
    }
}

private extension WallpaperViewController {
    func fetchWallpaper() {
        
        URLSession.shared.dataTask(with: URL(string: "https://wallhaven.cc")!) { data, response, error in
            guard let data, let response else {
                print(error ?? "Not description")
                return
            }
            
            do {
                let wallpaper = try JSONDecoder().decode(Wallpaper.self, from: data)
                
                print(wallpaper)
            } catch {
                print(error)
            }
            
            print(response)

            
        }.resume()
    }
}
