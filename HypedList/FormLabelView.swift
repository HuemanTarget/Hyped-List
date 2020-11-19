//
//  FormLabelView.swift
//  HypedList
//
//  Created by PompousPro on 11/19/20.
//

import SwiftUI

struct FormLabelView: View {
    
    var title: String
    var color: Color
    var icon: String
    
    var body: some View {
        Label {
            Text(title)
        } icon: {
            Image(systemName: icon)
                .padding(4)
                .background(color)
                .cornerRadius(7)
                .foregroundColor(.white)
        }
    }
}

struct FormLabelView_Previews: PreviewProvider {
    static var previews: some View {
        FormLabelView(title: "Title", color: .red, icon: "keyboard")
    }
}
