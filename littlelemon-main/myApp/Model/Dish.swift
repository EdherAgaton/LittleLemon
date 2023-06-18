

import Foundation
import CoreData

class DishEntity: NSManagedObject, Identifiable {
    @NSManaged var id: UUID
    @NSManaged var title: String
    @NSManaged var image: String
    @NSManaged var price: String
    @NSManaged override var description: String
    @NSManaged var category: String
}

