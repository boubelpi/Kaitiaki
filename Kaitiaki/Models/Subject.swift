//
//  subject.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 25/05/23.
// This file is for the two different categories of tips

import Foundation

struct Subject: Hashable {
    let name: String
    let category: ChallengeCategory
    let quiz: ChallengeQuiz
}

extension Subject {
    static let all = [
        Subject(name: "Battery life",
                  category: .init(name: "Reduce your consumption of mobile terminals", category: .equipment),
                  quiz: ChallengeQuiz(question: "What would you do to save the battery life of your device ?",suggestions: ["Let the battery  discharge","Set device to power save mode", "Over use of your device", "leave your device in a very cold room"], answer: "Set device to power save mode", tip: "Set standby times and set devices to power save mode. Tablets are configured to go to sleep very quickly to ensure maximum battery life.")),
  
        Subject(name: "Sleep mode",
                  category: .init(name: "Reduce your consumption of mobile terminals", category: .equipment),
                  quiz: ChallengeQuiz(question: "What is the best duration for sleep mode ?",suggestions: ["3 minutes" ,"5 minutes", "8 minutes", "12 minutes"], answer: "3 minutes", tip: "Put your computer to sleep after 3 minutes without use (there are very simple keyboard shortcuts for this) and turn it off during an extended break.")),
        
        Subject(name: "Sleep mode 2",
                  category: .init(name: "Change your consumption of mobile terminals", category: .equipment),
                  quiz: ChallengeQuiz(question: "After how long of inactivity should you shut down your computer completely?",suggestions: ["30 minutes" ,"1 hour", "1 1/2 hour", "2 hours"], answer: "1 hour", tip: "Put your computer on standby when you're away for a short time, and switch it off completely after an hour's inactivity. There are sleep cutter systems available: similar in appearance to a power strip, they detect devices on standby and automatically cut the power supply. The result: electricity savings of up to 11%!.")),
        
        Subject(name: "Screens",
                  category: .init(name: "Reduce your consumption of mobile terminals", category: .equipment),
                  quiz: ChallengeQuiz(question: "What are the 2 things you can do to make the screens run more economically?",suggestions: ["Remove the wallpaper    & Empty  your desktop" ,"Empty your desktop & Remove animated screensavers", "Remove animated screensavers & Remove the wallpaper", "Adjust brightness & Remove animated screensavers"], answer: "Adjust brightness & Remove animated screensavers", tip: "Operate screens more economically by removing animated screensavers (they prevent the computer from going to sleep and don't save electricity), adjusting brightness for a good compromise between visual comfort and energy savings...")),
        
        Subject(name: "Impact of equipment",
                  category: .init(name: "Extend the life of your equipment", category: .equipment),
                  quiz: ChallengeQuiz(question: "For how long should we keep a tablet or a computer ?",suggestions: ["1 to 2 years" ,"Until they find a better one", "2 to 4 years", "forever"], answer: "2 to 4 years", tip: "Going from 2 to 4 years of use for a tablet or computer improves its environmental balance by 50%. In the event of breakdown or renewal of equipment, think about repairs, the re-use and reconditioned equipment market and, ultimately, the mandatory recycling of waste electrical and electronic equipment. These points are not your responsibility alone. Beware of some screensavers that use 3D graphics.They place enormous demands on the computer's graphics card and can consume as much, if not more, than the active mode.")),
        
        Subject(name: "Equipment consumption",
                  category: .init(name: "USE SOBER EQUIPMENT", category: .equipment),
                  quiz: ChallengeQuiz(question: "which equipment consumes the least?",suggestions: ["A PC" ,"A laptop", "A tablet"], answer: "A tablet", tip: "Some equipment consumes less energy than others: a laptop consumes 50 to 80% less than a desktop computer, and a tablet even less.The energy consumption of a flat-screen monitor depends very much on its size: the larger the screen, the more energy it consumes.There are a number of environmental labels for high-performance, energy-efficient equipment: European Ecolabel, EPEAT, Nordic Ecolabel, Blue Angel and TCO.")),
   
        Subject(name: "Incoming and outgoing Emails",
                  category: .init(name: "Emails", category: .internet),
                quiz: ChallengeQuiz(question: "What shouldn't you do with emails",suggestions: ["Sort your e-mails as soon as they arrive" ,"Keep the spams", "Don't multiply the recipients", "Create lightweight attachments"], answer: "Keep the spams", tip: "Sort your e-mails as soon as they arrive and eliminate spam from the start. It's a good idea to install an anti-spam software.Don't multiply your recipients. Adapt your mailing lists regularly.Create light, well-designed attachments: compressed files, low-resolution PDFs, optimized documents (removal of blanks, unnecessary images, etc.) that are easy to read.More tips are available in the tips menu")),
        
        Subject(name: "Browsers: Variable Power Consumption",
                  category: .init(name: "Browsers", category: .internet),
                quiz: ChallengeQuiz(question: "Which web browser consumes the most energy?",suggestions: ["Internet explorer" ,"Mozilla", "Ecosia", "Chrome"], answer: "Chrome", tip: "Some browsers consume more energy than others. The Web Energy Archive* study (* WEA carried out by Green Code Lab, 2013) for ADEME names Chrome as one of the most power-hungry (27 Wh per 1,000 page views), ahead of Internet Explorer and Firefox. However, if you install a new browser on your computer, don't uninstall Internet Explorer, which is required to display certain programs on Windows.")),
        
        Subject(name: "Data",
                  category: .init(name: "Data storage", category: .internet),
                quiz: ChallengeQuiz(question: "What are the good practices when it comes to data storage ?",suggestions: ["Do not clear your browser's cache," ,"never delete cookies", "always keep your browsing history", "Regularly empty your operating system's downloads folder."], answer: "Regularly empty your operating system's downloads folder.", tip: "Empty your browser's cache, cookies and browsing history...Update your list of favorites.Sort stored data by deleting unnecessary ones, especially those stored remotely: images, videos and documents never consulted accumulate and clutter up storage units.Regularly empty your operating system's downloads folder.")),

        Subject(name: "Increase equipments' life expectancy",
                  category: .init(name: "Devices sustainability", category: .equipment),
                quiz: ChallengeQuiz(question: "How long should you keep your electronic devices?",suggestions: ["Until the new version of a device is released," ,"at least 2 years", "Until it breaks or is damaged", "at least 4 years"], answer: "at least 4 years", tip: "Most of our environmental impact comes from the manufacture of our appliances and their end-of-life, if poorly managed. For example: manufacturing a computer alone requires no less than 240 kg of fossil fuels, 22 kg of chemicals, and 1.5 tonnes of water! The components of our appliances contain substances that are toxic to the environment and to human health. So it's best to change them as little as possible."))


    ]
}

