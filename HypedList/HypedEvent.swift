//
//  HypedEvent.swift
//  HypedList
//
//  Created by PompousPro on 11/19/20.
//

import Foundation
import SwiftUI

class HypedEvent: ObservableObject {
    var date = Date()
    var title = ""
    var url = ""
    var color = Color.purple
    //since its an optional use colons instead of equals
    var imageData: Data?
}
