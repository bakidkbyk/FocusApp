//
//  Focus+CoreDataProperties.swift
//  
//
//  Created by Baki Dikbıyık on 27.02.2024.
//
//

import Foundation
import CoreData


extension Focus {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Focus> {
        return NSFetchRequest<Focus>(entityName: "Focus")
    }

    @NSManaged public var longBreakCount: Int32
    @NSManaged public var pomodoroCount: Int32
    @NSManaged public var shortBreakCount: Int32

}
