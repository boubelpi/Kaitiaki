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
                  category: .init(name: "Reduce your consumption of mobile terminals", category: .equipment),
                  quiz: ChallengeQuiz(question: "What do you do to save the battery life of your device ?",suggestions: ["Let the battery discharge" ,"Set device to power save mode", "Over use of your device", "leave your device in a very cold room"], answer: "Set device to power save mode", tip: "Set standby times and set devices to power save mode. Tablets are configured to go to sleep very quickly to ensure maximum battery life.")),
  
        Challenge(name: "Sleep mode",
                  category: .init(name: "Reduce your consumption of mobile terminals", category: .equipment),
                  quiz: ChallengeQuiz(question: "What is the best duration for sleep mode ?",suggestions: ["3 minutes" ,"5 minutes", "8 minutes", "12 minutes"], answer: "3 minutes", tip: "Put your computer to sleep after 3 minutes without use (there are very simple keyboard shortcuts for this) and turn it off during an extended break.")),
        
        Challenge(name: "Sleep mode 2",
                  category: .init(name: "Reduce your consumption of mobile terminals", category: .equipment),
                  quiz: ChallengeQuiz(question: "After how long of inactivity should you shut down your computer completely?",suggestions: ["30 minutes" ,"1 hour", "1 1/2 hour", "2 hours"], answer: "1 hour", tip: "Put your computer on standby when you're away for a short time, and switch it off completely after an hour's inactivity. There are sleep cutter systems available: similar in appearance to a power strip, they detect devices on standby and automatically cut the power supply. The result: electricity savings of up to 11%!.")),
        
        Challenge(name: "Screens",
                  category: .init(name: "Reduce your consumption of mobile terminals", category: .equipment),
                  quiz: ChallengeQuiz(question: "What are the 2 things you can do to make the screens run more economically?",suggestions: ["Remove the wallpaper" ,"Empty your desktop", "Remove animated screensavers", "adjust brightness"], answer: "Adjust brightness & Remove animated screensavers", tip: "Operate screens more economically by removing animated screensavers (they prevent the computer from going to sleep and don't save electricity), adjusting brightness for a good compromise between visual comfort and energy savings...")),
        
        Challenge(name: "Impact of equipment",
                  category: .init(name: "Extend the life of your equipment", category: .equipment),
                  quiz: ChallengeQuiz(question: "For how long should we keep a tablet or a computer ?",suggestions: ["1 to 2 years" ,"Until they find a better one", "2 to 4 years", "forever"], answer: "2 to 4 years", tip: "Going from 2 to 4 years of use for a tablet or computer improves its environmental balance by 50%. In the event of breakdown or renewal of equipment, think about repairs, the re-use and reconditioned equipment market and, ultimately, the mandatory recycling of waste electrical and electronic equipment. These points are not your responsibility alone. Beware of some screensavers that use 3D graphics.They place enormous demands on the computer's graphics card and can consume as much, if not more, than the active mode.")),
        
        Challenge(name: "Equipment consumption",
                  category: .init(name: "USE SOBER EQUIPMENT", category: .equipment),
                  quiz: ChallengeQuiz(question: "which equipment consumes the least?",suggestions: ["A PC" ,"A laptop", "A tablet", ""], answer: "2 to 4 years", tip: "Going from 2 to 4 years of use for a tablet or computer improves its environmental balance by 50%. In the event of breakdown or renewal of equipment, think about repairs, the re-use and reconditioned equipment market and, ultimately, the mandatory recycling of waste electrical and electronic equipment. These points are not your responsibility alone. Beware of some screensavers that use 3D graphics.They place enormous demands on the computer's graphics card and can consume as much, if not more, than the active mode.")),
   
        Challenge(name: "Web requests",
                  category: .init(name: "Make short and simple web requests", category: .internet),
                  quiz: ChallengeQuiz(question: "What is the most efficient way to access a website ?",suggestions: ["Use a search engine" ,"Browsing the URL history", "", " "], answer: "3 minutes", tip: "Go directly to the site you are looking for, by using your browsing history, by creating favourites in your browser for addresses you visit regularly, or by typing the URL address bof a site directly in a search."))

    ]
}

