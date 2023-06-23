//
//  ModifyMainInformationView.swift
//  Cookcademy
//
//  Created by Angelo Delgado on 6/22/23.
//

import SwiftUI

struct ModifyMainInformationView: View {
    @Binding var mainInformation: MainInformation
    
    var body: some View {
        Form {
            TextField("Recipe name", text: $mainInformation.name)
            TextField("Author", text: $mainInformation.author)
            Section(header: Text("Description")) {
                TextEditor(text: $mainInformation.description)
            }
            Picker(selection: $mainInformation.category, label: HStack {
                Text("Category")
                Spacer()
                Text(mainInformation.category.rawValue)
            }) {
                ForEach(MainInformation.Category.allCases, id: \.self) { category in
                    Text(category.rawValue)
                }
            }
            .pickerStyle(MenuPickerStyle())
        }
    }
}

struct ModifyMainInformationView_Previews: PreviewProvider {
    @State static var mainInformation = MainInformation(name: "test", description: "test", author: "test", category: .breakfast)
    
    static var previews: some View {
        ModifyMainInformationView(mainInformation: $mainInformation)
    }
}
