//
//  Challenge.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 25/05/23.
// This file is for the two different categories of tips

import Foundation

struct Challenge: Hashable {
    let name: String
    let category: ChallengeCategory
    let quiz: ChallengeQuiz
}

extension Challenge {
    static let all = [
        Challenge(name: "Battery life",
                  category: .init(name: "Reduce consumption of mobile terminals", category: .equipment),
                  quiz: ChallengeQuiz(question: "What do you do to save the battery life of your device ?",suggestions: ["Let the battery discharge" ,"Set device to power save mode", "Over use of your device", "leave your device in a very cold room"], answer: "Set device to power save mode", tip: "Set standby times and set devices to power save mode. Tablets are configured to go to sleep very quickly to ensure maximum battery life.")),
  
        Challenge(name: "Sleep mode",
                  category: .init(name: "Reduce consumption of mobile terminals", category: .equipment),
                  quiz: ChallengeQuiz(question: "What is the best duration for sleep mode ?",suggestions: ["3 minutes" ,"5 minutes", "8 minutes", "12 minutes"], answer: "3 minutes", tip: "Put your computer to sleep after 3 minutes without use (there are very simple keyboard shortcuts for this) and turn it off during an extended break.")),
        
        Challenge(name: "Sleep mode 2",
                  category: .init(name: "Reduce consumption of mobile terminals", category: .equipment),
                  quiz: ChallengeQuiz(question: "When should you turn off your computer completely?",suggestions: ["1 minutes" ,"5 minutes", "8 minutes", "12 minutes"], answer: "3 minutes", tip: "Put your computer to sleep after 3 minutes without use (there are very simple keyboard shortcuts for this) and turn it off during an extended break.")),
   
        Challenge(name: "Web requests",
                  category: .init(name: "Make short and simple web requests", category: .internet),
                  quiz: ChallengeQuiz(question: "What is the most efficient way to access a website ?",suggestions: ["Use a search engine" ,"Browsing the URL history", "", " "], answer: "3 minutes", tip: "Go directly to the site you are looking for, by using your browsing history, by creating favourites in your browser for addresses you visit regularly, or by typing the URL address bof a site directly in a search."))

    ]
}

