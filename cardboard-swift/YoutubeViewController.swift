//
//  YoutubeViewController.swift
//  cardboard-swift
//
//  Created by Jessica Wilson on 5/14/16.
//  Copyright © 2016 nzff. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire
import YouTubePlayer

class YoutubeViewController: UIViewController {
    
    
    @IBOutlet weak var youtubeWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let url = NSURL (string: "http://192.168.128.94:8000")
        let requestObj = NSURLRequest(URL: url!)
        print(requestObj)
        youtubeWebView.loadRequest(requestObj)
   
       
    }//viewdidload
    
        
//        // Setting API key once for whole session
//        let manager = Alamofire.Manager.sharedInstance
//        // Add API key header to all requests make with this manager (i.e., the whole session)
//        manager.session.configuration.HTTPAdditionalHeaders = ["Youtube-API-Key": "AIzaSyDBF_NLgHrmyV0fQ_IBFKKTXk7BADllkAw"]
//        
//        let urlString = "https://trailapi-trailapi.p.mashape.com/"
//        let headers = ["Accept": "text/plain",
//                       "Youtube-API-Key": "AIzaSyDBF_NLgHrmyV0fQ_IBFKKTXk7BADllkAw"]
//        manager.request(.GET, urlString, headers: headers).responseJSON{ response in
//            
//            if let value = response.result.value {
//                
//                let json = JSON(value)
//                print(json)
//                print("---------------------------------")
//                
//                // use SwiftyJSON
//                for (key,subJson):(String, JSON) in json {
//                    //
//                    print(subJson.dictionaryValue)
//                    print("YOLO")
//                    if key == "places"{
//                        for i in 0...subJson.count{
//                            print("------------")
//                            
//                        }
//                        
//                    }
//                    
//                }
//            }
//        }
//        
        
        
}
    


    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
//}
