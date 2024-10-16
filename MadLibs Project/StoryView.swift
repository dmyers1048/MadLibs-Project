//
//  StoryView.swift
//  MadLibs Project
//
//  Created by Devan Myers on 10/7/24.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(writeStory())
    }
    func writeStory() -> String
    {
        return "My name is \(words.name1) and I am \(words.number1) years old. If I were president, I'd do a whole bunch of \(words.adjective1) things: 1. I would drive the biggest \(words.color1) car in the country. And that car would go faster than any other \(words.noun1) in the world! 2. Everyone would eat pepperoni \(words.foodPlural) for dinner. 3. I would live in the statue of \(words.noun2) and build a \(words.verbEndIng) pool at her feet."
    }
}
#Preview {
    StoryView(words: Words())
}
