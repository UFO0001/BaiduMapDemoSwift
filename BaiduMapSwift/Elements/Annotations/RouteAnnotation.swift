

import UIKit

class RouteAnnotation: BMKPointAnnotation {
    
    var type: Int!
    var degree: Int!
    
    override init() {
        super.init()
    }
    
    init(type: Int, degree: Int) {
        self.type = type
        self.degree = degree
    }
    
}
