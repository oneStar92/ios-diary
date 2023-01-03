//  Diary - ManagedObjectModel.swift
//  Created by Ayaan, zhilly on 2023/01/02

import CoreData.NSManagedObject

protocol ManagedObjectModel: Hashable {
    associatedtype Object: NSManagedObject
    var objectID: String { get }
    
    init?(from: Object)
}

extension ManagedObjectModel {
    public static func == (lhs: any ManagedObjectModel, rhs: any ManagedObjectModel) -> Bool {
        return lhs.objectID == rhs.objectID
    }
}
