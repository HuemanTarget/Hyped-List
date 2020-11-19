//
//  CreateHypedEventView.swift
//  HypedList
//
//  Created by PompousPro on 11/19/20.
//

import SwiftUI

struct CreateHypedEventView: View {
    
    //Use StateObject when dealing with data from Classes
    @StateObject var hypedEvent = HypedEvent()
    
    var body: some View {
        Form {
            Section {
                FormLabelView(title: "Title", color: .blue, icon: "keyboard")
                    
//                Label {
//                    Text("Title")
//                } icon: {
//                    Image(systemName: "keyboard")
//                        .padding(4)
//                        .background(Color.blue)
//                        .cornerRadius(7)
//                        .foregroundColor(.white)
//                }
                TextField("Title", text: $hypedEvent.title)
                    .autocapitalization(.words) //allows keyboard to auto cap each word
            }
            Section {
                Label {
                    Text("Date")
                } icon: {
                    Image(systemName: "calendar")
                        .padding(4)
                        .background(Color.red)
                        .cornerRadius(7)
                        .foregroundColor(.white)
                }
                DatePicker("Date", selection: $hypedEvent.date, displayedComponents: [.date, .hourAndMinute])
                    .datePickerStyle(GraphicalDatePickerStyle())
            }
            
            Section {
                ColorPicker("Color", selection: $hypedEvent.color)
            }
            
            Section {
                TextField("Website", text: $hypedEvent.url)
                    .keyboardType(.URL)
                    .autocapitalization(.none)
            }
        }
    }
}

struct CreateHypedEventView_Previews: PreviewProvider {
    static var previews: some View {
        CreateHypedEventView()
    }
}
