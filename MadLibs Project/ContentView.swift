//
//  ContentView.swift
//  MadLibs Project
//
//  Created by Devan Myers on 10/7/24.
//

import SwiftUI

struct Words
{
    var name1 = ""
    var number1 = ""
    var adjective1 = ""
    var color1 = ""
    var noun1 = ""
    var foodPlural = ""
    var noun2 = ""
    var verbEndIng = ""
}

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please enter the requested words Below!")
                HStack
                {
                    CustomTextField(placeholder: "Name", variable: $words.name1)
                    CustomTextField(placeholder: "Number", variable: $words.number1)
                    CustomTextField(placeholder: "Adjective", variable: $words.adjective1)
                }
                HStack
                {
                    CustomTextField(placeholder: "Color", variable: $words.color1)
                    CustomTextField(placeholder: "Noun", variable: $words.noun1)
                    CustomTextField(placeholder: "Food (Plural)", variable: $words.foodPlural)
                }
                HStack
                {
                    CustomTextField(placeholder: "Noun", variable: $words.noun2)
                    CustomTextField(placeholder: "Verb Ending In ING", variable: $words.verbEndIng)
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
            }
            .navigationTitle("Word Play")
        }
    }
}

struct CustomTextField: View
{
    let placeholder : String
    let variable : Binding<String>
    var body: some View
    {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}

#Preview {
    ContentView()
}
