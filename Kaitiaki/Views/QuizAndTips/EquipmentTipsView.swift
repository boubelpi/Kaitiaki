//
//  EquipmentTipsView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 11/06/23.
//

import SwiftUI
import Foundation

struct EquipmentTipsView: View {
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    Text("Reducing the energy consumption of computers, tablets and mobile phones:")
                        .font(.title)
                        .foregroundColor(.accentColor)
                        .bold()
                    //.padding(.top, 10)
                    
                    Text("Configure standby times and set equipment to energy-saving mode. Tablets are configured to go into standby very quickly to ensure maximum autonomy.")
                        .font(.body)
                        .padding(.top, 10)
                    
                    Text("Put your computer to sleep after 3 minutes without use (there are very simple keyboard shortcuts for this) and switch it off when you take a long break.")
                        .font(.body)
                        .padding(.top, 10)
                    
                    Text("Put your computer on standby when you're away for a short time, and switch it off completely after an hour's inactivity. There are standby cut-out systems: similar in appearance to a power strip, they detect devices on standby and automatically cut off the power supply. The result: electricity savings of up to 11%!")
                        .font(.body)
                        .padding(.top, 10)
                    
                    Text("Use screens sparingly by removing animated screen savers (they prevent the computer from going to sleep and don't save electricity), and by adjusting brightness for a good compromise between visual comfort and energy savings...")
                        .font(.body)
                        .padding(.top, 10)
                }//End of Group
                
                Group {
                    Text("Extend the life of equipment:")
                        .font(.title)
                        .foregroundColor(.accentColor)
                        .bold()
                    
                    Text("The most effective way to reduce their impact: Moving from 2 to 4 years of use for a tablet or computer improves its environmental impact by 50%. If your equipment breaks down or needs replacing, think about repairs, the re-use and reconditioning market and, ultimately, the mandatory recycling of waste electrical and electronic equipment. These points are not your responsibility alone")
                        .font(.body)
                        .padding(.top, 10)
                    
                    Text("Beware of certain screensavers that use 3D graphics. They place enormous demands on the computer's graphics card and can consume as much, if not more, than the active mode.")
                        .font(.body)
                        .padding(.top, 10)
                    
                    Text("Use sobre equipment:")
                        .font(.title)
                        .foregroundColor(.accentColor)
                        .bold()
                    
                    Text("Some equipment consumes less than others: a laptop consumes 50 to 80% less than a desktop computer, and a tablet even less.")
                        .font(.body)
                        .padding(.top, 10)
                }//End of Group
                Group {
                    Text("La consommation d’un écran plat dépend beaucoup de sa taille, plus l'écran est grand plus il consomme d'énergie.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("There are a number of environmental labels that identify high-performance, energy-efficient equipment: European Ecolabel, EPEAT, Nordic Ecolabel, Blue Angel and TCO.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Mails: optimising reception and dispatch:")
                        .font(.title)
                        .foregroundColor(.accentColor)
                        .bold()
                    Text("Sort your emails as soon as they arrive and eliminate spam from the outset. It is very useful to install anti-spam software.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Don't multiply the number of recipients.")
                        .font(.body)
                        .padding(.top, 10)
                }// End of Group
                Group {
                    Text("Adjust your recipient lists regularly.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Avoid systematic use of the \"reply to all\" function if you are replying to a mass mailing.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Create light, well-designed attachments: compressed files, low-definition PDFs, optimised documents (remove blanks, unnecessary images, etc.) that are easy to read on a computer or tablet and can be edited by chapter (so your correspondent can select what he or she needs).")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Create several signatures: one with a low-resolution image of your signature and your company logo for official emails or contacts, and one without an image or logo for internal exchanges and well-established contacts.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Replace attachments with a hypertext link or URL.For very large documents, think of your company's sharing folders.")
                        .font(.body)
                        .padding(.top, 10)
                }//End of Group
                Group {
                    Text("Delete attachments from messages to which you reply.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Avoid sending too many emails and limit the number of attachments and people copied. Sending an e-mail consumes as much energy as storing it for 1 year.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Group them together as much as possible and use a direct and concise style, as the time spent writing and reading them is the main source of impact.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Keep the number of recipients and attachments to a minimum. If you need to send a document to someone close to you, prefer to transfer it via a USB key, as the heavier the email, the greater its environmental impact. Avoid sending them by 4G. And whenever possible, use text format, which is on average twelve times lighter than HTML.")
                        .font(.body)
                        .padding(.top, 10)
                }//End of Group
                
                Group {
                    Text("Regularly sort through your email and delete all unnecessary messages.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Delete SPAM automatically.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Keep your email signatures light (avoid images or put them in low definition)")
                        .font(.body)
                        .padding(.top, 10)
                    Text("If a colleague is not far away and you need to ask them something, go and see them in person rather than sending an email and send them your attachments on a USB stick.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Sort and organise your emails to make it easier to find what you're looking for.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Clean out your mailbox regularly, especially if it's webmail: you're protecting yourself from unwanted use, and you're lightening the load on data centres and your equipment.")
                }//End of Group
                Group {
                    Text("6 Web queries: keep it short and simple:")
                        .font(.title)
                        .foregroundColor(.accentColor)
                        .bold()
                    Text("Go directly to the site you are looking for, using your browsing history, by creating favourites in your browser for addresses you visit regularly or by typing the URL address of a site directly in a search.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Make a precise search by using relevant keywords and refining your search (excluding or combining certain words, using the most exact wording possible, using the \"advanced search\" function, etc.).")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Use the arrows in the address bar (\"go back\" or \"go forward\" one page). This saves reloading pages.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Close tabs that you are not using, as this improves browsing.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Limit the use of flash animations on the pages you visit: they consume a lot of energy. Some software allows you to block them and play them on a case-by-case basis.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Save sites that you search for regularly as favourites, rather than leaving numerous tabs open all the time.")
                        .font(.body)
                        .padding(.top, 10)
                } //End of Group
                Group {
                    Text("Browsers: Varying energy consumption:")
                        .font(.title)
                        .foregroundColor(.accentColor)
                        .bold()
                    Text("Some browsers consume more energy than others. The Web Energy Archive* study (* WEA carried out by the Green Code Lab, 2013) for ADEME names Chrome as one of the most energy-hungry (27 Wh per 1,000 pages viewed) ahead of Internet Explorer and Firefox. However, if you install a new browser on your computer, don't uninstall Internet Explorer, which is required to display certain programmes on Windows.")
                        .font(.body)
                        .padding(.top, 10)
                    Text(" Use search engines that respect privacy")
                        .font(.body)
                        .padding(.top, 10)
                }//End of Group
                Group {
                    Text("Data storage:")
                        .font(.title)
                        .foregroundColor(.accentColor)
                        .bold()
                    Text(" Empty your browser's cache, cookies and browsing history...")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Update your list of favourites.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Sort your stored data by deleting unnecessary items, especially those stored remotely: images, videos and documents that have never been consulted accumulate there and clutter up the storage units.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Regularly empty your operating system's \"downloads\" folder.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Store and use as much data as possible locally (external hard drive, etc.). Every time you store data externally, and every time you consult it, you have to go back and forth between users and servers. What's more, it's easy to forget what'sstored in the Cloud when you no longer need it.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Eco-design your website by following the advice of the Green Code Lab: www.greencodelab.org.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Store locally rather than in the cloud (use of datacentres): online storage of emails, photos, videos, music and other documents requires constant to-ing and fro-ing between the user's terminal and the servers. Transporting data over the Internet consumes twice as much energy as storing it for a year. We therefore need to encourage as far as possible the local storage and use of our data.")
                }//End of Group
                Group {
                    Text("Opting for eco-communication:")
                        .font(.title)
                        .foregroundColor(.accentColor)
                        .bold()
                    Text("Eco-communication integrates environmental concerns into the design of a website, a blog, documents for the web, etc. It aims to reduce the environmental impact of communication practices, for example:")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Organise eco-responsible business events by choosing a venue close to public transport,")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Adopt new marketing and advertising rules: responsible advertising...")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Use digital information and communication technologies while respecting the rules of eco-communication.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Are you creating or updating a website, blog or web documents? Are you producing an e-mailing?")
                        .font(.body)
                        .padding(.top, 10)
                    Text("-Resize images to make them lighter.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("-Make them easy to read online to avoid printing.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("-Provide a printable version that limits ink and paper consumption.")
                        .font(.body)
                        .padding(.top, 10)
                } //End of group
                Group {
                    Text("Acessibility")
                        .font(.title)
                        .foregroundColor(.accentColor)
                        .bold()
                    Text("Make your website or blog accessible to everyone (the visually or hearing impaired, etc.) and everywhere (computer, tablet, smartphone).")
                        .font(.body)
                        .padding(.top, 10)
                    
                } //End of Group
                
                Group {
                    Text("Use only the audio and not the camera for video conferences")
                        .font(.body)
                        .padding(.top, 10)
                } //End of Group
                
                Group {
                    Text("Extending the life of appliances:")
                        .font(.title)
                        .foregroundColor(.accentColor)
                        .bold()
                    Text("Most of the environmental impact comes from the manufacture of our devices and their end-of-life, if poorly managed. For example: manufacturing a computer alone requires no less than 240 kg of fossil fuels, 22 kg of chemicals and 1.5 tonnes of water!")
                        .font(.body)
                        .padding(.top, 10)
                    Text(" The manufacture of a computer is highly polluting: it requires 240 kg of fossil fuels, 22 kg of chemicals and 1.5 tonnes of water.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Batteries, accumulators, electronic chips... The components of our devices contain substances that are toxic to the environment and to our health. From the extraction of the rare metals needed to manufacture them to their treatment as waste, it's important to limit their ecological footprint as much as possible throughout their life cycle! So it's best to change them as infrequently as possible.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Keep your digital equipment as long as possible (>4 years). If you take good care of it, a smartphone can be used for 5 years and a laptop for more than 10 years.")
                        .font(.body)
                        .padding(.top, 10)
                }//End of Group
                
                Group {
                    Text("Miscellaneous")
                        .font(.title)
                        .foregroundColor(.accentColor)
                        .bold()
                    Text("Switching off your box and TV set-top box: switched on 24 hours a day, an ADSL box and the associated TV set-top box consume 150 to 300 kWh a year, equivalent to the annual electricity consumption of 5 to 10 15-inch laptops used 8 hours a day! Switching off your box at night saves 65 to 130 kWh, between €8 and €16 and 650 to 1,300 litres of water a year.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Choose DTT over ADSL: online video accounts for over 60% of Internet traffic. Watching a programme in HD streaming via your ADSL box emits as much greenhouse gas as making, transporting and playing a DVD! So prefer to use DTT to watch live broadcasts.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Opt for reconditioned rather than new products")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Give preference to environmental labels (Blue Angel, TCO, EPEAT, etc.) for computer equipment.")
                        .font(.body)
                        .padding(.top, 10)
                } //End of Group
                Group {
                    Text("  Remove all unnecessary software. They often slow down computers.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Repair and reuse before throwing away (In most cases, our equipment can be repaired).")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Donate to a recycling organisation. After being cleaned and refurbished, your old smartphone or computer will be donated or resold. This will give it a second life. By choosing a Social and Solidarity Economy (SSE) player, you will be actively contributing to social inclusion and the fight against the digital divide.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Recycle as a last option: If you have to dispose of your equipment, drop it off at a suitable container or specialist retailer, who will be able to reuse it if it is still working. Your equipment will then either be recycled or donated to a charity.")
                        .font(.body)
                        .padding(.top, 10)
                    Text("Choose your website hosting carefully to limit its impact (\"green\" hosting).")
                        .font(.body)
                        .padding(.top, 10)
                }//End of Group
            } //Fin de VStack
        }//Fin de ScrollView
        //.padding()
    } //Fin du body
}

struct EquipmentTipsView_Previews: PreviewProvider {
    static var previews: some View {
        EquipmentTipsView()
    }
}

