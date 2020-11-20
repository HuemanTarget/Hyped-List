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
    @State var showTime = false
    @State var showImagePicker = false
    
    var body: some View {
        Form {
            Section {
                FormLabelView(title: "Title", color: .green, icon: "keyboard")
                TextField("Title", text: $hypedEvent.title)
                    .autocapitalization(.words) //allows keyboard to auto cap each word
            }
            Section {
                FormLabelView(title: "Date", color: .blue, icon: "calendar")
                DatePicker("Date", selection: $hypedEvent.date, displayedComponents: showTime ? [.date, .hourAndMinute] : [.date])
                    .datePickerStyle(GraphicalDatePickerStyle())
                Toggle(isOn: $showTime) {
                    FormLabelView(title: "Time", color: .blue, icon: "clock.fill")
                }
            }
      
            Section {
                if hypedEvent.image() == nil {
                    HStack {
                        FormLabelView(title: "Image", color: .purple, icon: "camera")
                        
                        Spacer()
                        
                        Button(action: {
                            showImagePicker = true
                        }) {
                            Text("Pick Image")
                        }
                        
                    }
                } else {
                    HStack {
                        FormLabelView(title: "Image", color: .purple, icon: "camera")
                        
                        Spacer()
                        
                        Button(action: {
                            hypedEvent.imageData = nil
                        }) {
                            Text("Remove Image")
                                .foregroundColor(.red)
                        }
                        .buttonStyle(BorderlessButtonStyle())
                    }
                    Button(action: {
                        showImagePicker = true
                    }) {
                        hypedEvent.image()!
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .buttonStyle(BorderlessButtonStyle())
                }
                
            }
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(imageData: $hypedEvent.imageData)
            }
          
            Section {
                ColorPicker(selection: $hypedEvent.color) {
                    FormLabelView(title: "Color Picker", color: .yellow, icon: "eyedropper")
                }
            }
            
            Section {
                FormLabelView(title: "URL", color: .orange, icon: "link")
                TextField("www.google.com", text: $hypedEvent.url)
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
