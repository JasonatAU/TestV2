//
//  AppDelegate.swift
//  Twitcher v2.0
//
//  Created by Qiuye Jin on 9/4/17.
//  Copyright © 2017 Qiuye Jin. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        preloadData()
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        self.saveContext()
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "Twitcher_v2_0")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    // MARK: - Read data from CSV file
    
    func parseCSV () -> [(
        theIndex:Int,
        commonName:String,
        ScientificName:String,
        category:String,
        order:String,
        family:String,
        colour1:String,
        colour2:String,
        colour3:String,
        minLength:Int,
        maxLength:Int,
        birdDescription:String,
        diet:String,
        isInVic:Int,
        isInNsw:Int,
        isInQld:Int,
        isInAct:Int,
        isInNt:Int,
        isInSa:Int,
        isInTas:Int,
        isInWa:Int
        )]? {
        
        
        var arrayBirds = NSMutableArray()
//        let path = Bundle.main.path(forResource: "csvTest", ofType: "csv")
//        
//        let filemgr = FileManager.default
//        
//        if filemgr.fileExists(atPath: path!){
//            do {
//                let fullText = try String(contentsOfFile: path!, encoding: String.Encoding.utf8)
//                
//                let readings = fullText.components(separatedBy: "\n") as [String]
//                
//                //read info for each line
//                for i in 1..<(readings.count - 1){
//                    //let birdInfo = readings[i].components(separatedBy: ",")
//                    var birdInfo = [String]()
//                    if readings[i].contains("\"") == true{
//                        var textToScan:String = readings[i]
//                        var value:NSString?
//                        var textScanner:Scanner = Scanner(string: textToScan)
//                        textScanner.charactersToBeSkipped = ["\n"]
//                        while textScanner.string != "" {
//                            
//                            if (textScanner.string as NSString).substring(to: 1) == "\"" {
//                                textScanner.scanLocation += 1
//                                textScanner.scanUpTo("\"", into: &value)
//                                textScanner.scanLocation += 1
//                            } else {
//                                textScanner.scanUpTo(",", into: &value)
//                            }
//                            
//                            // Store the value into the values array
//                            birdInfo.append(value as! String)
//                            
//                            // Retrieve the unscanned remainder of the string
//                            if textScanner.scanLocation < (textScanner.string).characters.count {
//                                textToScan = (textScanner.string as NSString).substring(from: textScanner.scanLocation + 1)
//                            } else {
//                                textToScan = ""
//                            }
//                            textScanner = Scanner(string: textToScan)
//                        }
//                        
//                        // For a line without double quotes, we can simply separate the string
//                        // by using the delimiter (e.g. comma)
//                    } else  {
//                        birdInfo = readings[i].components(separatedBy: ",")
//                        //birdInfo = line.componentsSeparatedByString(delimiter)
//                    }
            
                    
            
        
                    
                    
                    
                    
                    //create vars for each column
                    
                    var theIndex:Int
                    var commonName:String
                    var ScientificName:String
                    var category:String
                    var order:String
                    var family:String
                    var colour1:String
                    var colour2:String
                    var colour3:String
                    var minLength:Int
                    var maxLength:Int
                    var birdDescription:String
                    var diet:String
                    var isInVic:Int
                    var isInNsw:Int
                    var isInQld:Int
                    var isInAct:Int
                    var isInNt:Int
                    var isInSa:Int
                    var isInTas:Int
                    var isInWa:Int
            
            
            
            //test the new CSV parser
            
            do {
                let csv = try CSVParser(filePath: "birdList.csv")
                print(csv.count)
                // get every row in csv
                for birdInfo in csv {
                    //print(row) // ["first column", "sceond column", "third column"]
                    if Int(birdInfo[1]) != nil{
                        theIndex = Int(birdInfo[1])!
                    }else{
                        theIndex = -1
                    }
                    
                    if birdInfo[2] != ""{
                        commonName = birdInfo[2]
                    }else{
                        commonName = "no value"
                    }
                    
                    if birdInfo[3] != ""{
                        ScientificName = birdInfo[3]
                    }else{
                        ScientificName = "no value"
                    }
                    
                    if birdInfo[4] != ""{
                        category = birdInfo[4]
                    }else{
                        category = "no value"
                    }
                    
                    if birdInfo[5] != ""{
                        order = birdInfo[5]
                    }else{
                        order = "no value"
                    }
                    
                    if birdInfo[6] != ""{
                        family = birdInfo[6]
                    }else{
                        family = "no value"
                    }
                    
                    if birdInfo[7] != ""{
                        colour1 = birdInfo[7]
                    }else{
                        colour1 = "no value"
                    }
                    
                    if birdInfo[8] != ""{
                        colour2 = birdInfo[8]
                    }else{
                        colour2 = "no value"
                    }
                    
                    if birdInfo[9] != ""{
                        colour3 = birdInfo[9]
                    }else{
                        colour3 = "no value"
                    }
                    
                    
                    if birdInfo[10] != ""{
                        minLength = Int(birdInfo[10])!
                    }else{
                        minLength = 0
                    }
                    
                    if birdInfo[11] != ""{
                        maxLength = Int(birdInfo[11])!
                    }else{
                        maxLength = 500
                    }
                    
                    if birdInfo[15] != ""{
                        birdDescription = birdInfo[15]
                    }else{
                        birdDescription = "no value"
                    }
                    
                    if birdInfo[16] != ""{
                        diet = birdInfo[16]
                    }else{
                        diet = "no value"
                    }
                    
                    if birdInfo[18] == "1.0"{
                        isInVic = 1//Int(birdInfo[18])!
                    }else{
                        isInVic = 0
                    }
                    
                    if birdInfo[19] == "1.0"{
                        isInNsw = 1//Int(birdInfo[19])!
                    }else{
                        isInNsw = 0
                    }
                    
                    if birdInfo[20] == "1.0"{
                        isInQld = 1//Int(birdInfo[20])!
                    }else{
                        isInQld = 0
                    }
                    
                    if birdInfo[21] == "1.0"{
                        isInAct = 1//Int(birdInfo[21])!
                    }else{
                        isInAct = 0
                    }
                    
                    if birdInfo[22] == "1.0"{
                        isInNt = 1//Int(birdInfo[22])!
                    }else{
                        isInNt = 0
                    }
                    
                    if birdInfo[23] == "1.0"{
                        isInSa = 1//Int(birdInfo[23])!
                    }else{
                        isInSa = 0
                    }
                    
                    if birdInfo[24] == "1.0"{
                        isInTas = 1//Int(birdInfo[24])!
                    }else{
                        isInTas = 0
                    }
                    
                    if birdInfo[25] == "1.0"{
                        isInWa = 1//Int(birdInfo[25])!
                    }else{
                        isInWa = 0
                    }
                    
                    let bird = (theIndex:theIndex, commonName:commonName, ScientificName:ScientificName, category:category, order:order, family:family, colour1:colour1, colour2:colour2, colour3:colour3, minLength:minLength, maxLength:maxLength, birdDescription:birdDescription, diet:diet, isInVic:isInVic, isInNsw:isInNsw, isInQld:isInQld, isInAct:isInAct, isInNt:isInNt, isInSa:isInSa, isInTas:isInTas, isInWa:isInWa)
                    
                    arrayBirds.add(from: bird)
                }
                // get row by int subscript
                //csv[10] // the No.10 row
                
                // get column by string subscript
                //csv["id"] // column with header key "id"
                
            }catch {
                // Error handing
            }
//            
//            
//            
//                    
//            
//
//                    
//                    
//                    //use these info to generate a bird
//            
//                }
//            }
//            catch let error as NSError{
//                print("Error: \(error)")
//            }
//            print(arrayBirds.count)
//        }
        
            //print(arrayBirds.count)
            return (arrayBirds as! [(theIndex: Int, commonName: String, ScientificName: String, category: String, order: String, family: String, colour1: String, colour2: String, colour3: String, minLength: Int, maxLength: Int, birdDescription: String, diet: String, isInVic: Int, isInNsw: Int, isInQld: Int, isInAct: Int, isInNt: Int, isInSa: Int, isInTas: Int, isInWa: Int)])
    }
    
    //MARK: - Remove all data in core data
    
    func removeData(){
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        var birds = [Bird]()
        do {
            birds = try context.fetch(Bird.fetchRequest())
        }
        catch{
            print("Fetching Failed")
        }
        
        if !birds.isEmpty {
            for task in birds {
                context.delete(task)
            }
        }
    }
    
    
    //MARK: - Preload data from file to core data
    func preloadData(){
        removeData()
        var rawBirds = parseCSV()
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        for rawBird in rawBirds!{
            
            let newBird = NSEntityDescription.insertNewObject(forEntityName: "Bird", into: context) as! Bird
            //newBird.name = rawTask.name
            newBird.index = Int16(rawBird.theIndex)
            newBird.commonName = rawBird.commonName
            newBird.scientificName = rawBird.ScientificName
            newBird.category = rawBird.category
            newBird.order = rawBird.order
            newBird.family = rawBird.family
            newBird.colour1 = rawBird.colour1
            newBird.colour2 = rawBird.colour2
            newBird.colour3 = rawBird.colour3
            newBird.minLength = Int16(rawBird.minLength)
            newBird.maxLength = Int16(rawBird.maxLength)
            newBird.birdDescription = rawBird.birdDescription
            newBird.diet = rawBird.diet
            newBird.isInVic = Int16(rawBird.isInVic)
            newBird.isInNsw = Int16(rawBird.isInNsw)
            newBird.isInQld = Int16(rawBird.isInQld)
            newBird.isInAct = Int16(rawBird.isInAct)
            newBird.isInNt = Int16(rawBird.isInNt)
            newBird.isInSa = Int16(rawBird.isInSa)
            newBird.isInTas = Int16(rawBird.isInTas)
            newBird.isInWa = Int16(rawBird.isInWa)
            
        }
        
        
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

