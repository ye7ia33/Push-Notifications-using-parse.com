//
//  ViewController.swift
//  Pushnotification
//
//  Created by Yahia on 2/3/16.
//  Copyright © 2016 nichepharma. All rights reserved.
//




import UIKit
import Parse


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "BKG.jpg")!)
        
        
   //
        

    
    }

 
    @IBAction func sendNotifications(sender: AnyObject) {
         //     let userQuery = PFUser.query()
        /*
        userQuery!.whereKey("deviceToken", equalTo: "5b8f81511efab0b75572e17be9d939260ad2545dfc535e687b280d0d9344b9c")
        //        userQuery.whereKey("location", nearGeoPoint: "", withinMiles: 1)
        let pushQuery = PFInstallation.query()
        pushQuery!.whereKey("currentUser", matchesQuery: userQuery!)

        */
        
//        var query = PFQuery(className:"User")
//        
//        query.whereKey("username", equalTo:"ye7ia33")
//        query.findObjectsInBackgroundWithBlock {
//            (objects: [PFObject]?, error: NSError?) -> Void in
//            
//            if error == nil {
//                // The find succeeded.
//                print("Successfully retrieved \(objects!.count) scores.")
//                // Do something with the found objects
//                if let objects = objects {
//                    for object in objects {
//                        print(object.objectId)
//                    }
//                }
//            } else {
//                // Log details of the failure
//                print("Error: \(error!) \(error!.userInfo)")
//            }
//        }
//        
        
        
      let subscribedChannels = PFInstallation.currentInstallation().deviceToken
        
              print(">> : \(subscribedChannels)")

         self .sendByToken();
    }

    


    
    
    
    
    
    func pushGeneralNotifications(let str_Message :String ){
        let push = PFPush();
        push.setMessage(str_Message);
        push.sendPushInBackgroundWithBlock(nil)
        
    }
    
    
    
    func loginWithUsername (let str_Username : String , let str_Password : String )->Bool{
        var isSucc : Bool = false ;
        
        PFUser.logInWithUsernameInBackground("\(str_Username)", password:"\(str_Password)") {
            (user: PFUser?, error: NSError?) -> Void in
            if user != nil {
                // Do stuff after successful login.
               isSucc = true
            
            } else {
                // The login failed. Check error to see why.
                isSucc = false
                let _ErrorAlert = UIAlertView();
                _ErrorAlert.message="not found Username or Password"
                _ErrorAlert.title = "Ooops"
                _ErrorAlert.addButtonWithTitle("Close")
                _ErrorAlert.show()
            
            }
        }
        
            return isSucc
    }
    
    func sendByToken(){
//        let query = PFInstallation.query()
//        if let query = query {
//            query.whereKey("channels", equalTo: "suitcaseOwners")
//            
//            // Notification for Android users
//            query.whereKey("deviceType", equalTo: "ios")
//            let androidPush = PFPush()
//            androidPush.setMessage("Your suitcase has been filled with tiny robots!")
//            androidPush.setQuery(query)
//            androidPush.sendPushInBackground()
//            
//            // Notification for iOS users
//            query.whereKey("deviceType", equalTo: "ios")
//            let iOSPush = PFPush()
//            iOSPush.setMessage("Your suitcase has been filled with tiny apples!")
//            iOSPush.setChannel("suitcaseOwners")
//            iOSPush.setQuery(query)
//            iOSPush.sendPushInBackground()
//        }
//        
        
            
            
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
}

