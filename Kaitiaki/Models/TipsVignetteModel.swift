//
//  TipsVignetteModel.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 13/06/23.
//

import Foundation

struct tip : Hashable {
    var label_of_vignette : String
    var label_of_tip: String
    var text : String
    var source : String
}

enum tipCategory {
    case energy
    case equipment
    case sobre
    case mails
    case queries
    case browsers
    case dataStorage
    case communication
    case accesibility
    case appliances
    case miscellaneous
    case smartphone
    case video
    case reconditioning
    case applications
}

func Text_for_tip (_ name : tipCategory) -> String {
    switch name {
    case .energy:
        return """
        Configure standby times and set equipment to energy-saving mode. Tablets are configured to go into standby very quickly to ensure maximum autonomy.

        Put your computer to sleep after 3 minutes without use (there are very simple keyboard shortcuts for this) and switch it off when you take a long break.

        Put your computer on standby when you're away for a short time, and switch it off completely after an hour's inactivity. There are standby cut-out systems: similar in appearance to a power strip, they detect devices on standby and automatically cut off the power supply. The result: electricity savings of up to 11%!

        Use screens sparingly by removing animated screen savers (they prevent the computer from going to sleep and don't save electricity), and by adjusting brightness for a good compromise between visual comfort and energy savings...
        """
    case .equipment:
        return """
        The most effective way to reduce their impact: Moving from 2 to 4 years of use for a tablet or computer improves its environmental impact by 50%. If your equipment breaks down or needs replacing, think about repairs, the re-use and reconditioning market and, ultimately, the mandatory recycling of waste electrical and electronic equipment. These points are not your responsibility alone.

        Beware of certain screensavers that use 3D graphics. They place enormous demands on the computer's graphics card and can consume as much, if not more, than the active mode.
        """
    case .sobre:
        return """
        Some equipment consumes less than others: a laptop consumes 50 to 80% less than a desktop computer, and a tablet even less.

        La consommation d’un écran plat dépend beaucoup de sa taille, plus l'écran est grand plus il consomme d'énergie.

        There are a number of environmental labels that identify high-performance, energy-efficient equipment: European Ecolabel, EPEAT, Nordic Ecolabel, Blue Angel and TCO.
        """
    case .mails:
        return """
        Sort your emails as soon as they arrive and eliminate spam from the outset. It is very useful to install anti-spam software.

        Don't multiply the number of recipients.

        Adjust your recipient lists regularly.

        Avoid systematic use of the \"reply to all\" function if you are replying to a mass mailing.

        Create light, well-designed attachments: compressed files, low-definition PDFs, optimised documents (remove blanks, unnecessary images, etc.) that are easy to read on a computer or tablet and can be edited by chapter (so your correspondent can select what he or she needs).

        Create several signatures: one with a low-resolution image of your signature and your company logo for official emails or contacts, and one without an image or logo for internal exchanges and well-established contacts.

        Replace attachments with a hypertext link or URL.For very large documents, think of your company's sharing folders.

        Delete attachments from messages to which you reply.

        Avoid sending too many emails and limit the number of attachments and people copied. Sending an e-mail consumes as much energy as storing it for 1 year.

        Group them together as much as possible and use a direct and concise style, as the time spent writing and reading them is the main source of impact.

        Keep the number of recipients and attachments to a minimum. If you need to send a document to someone close to you, prefer to transfer it via a USB key, as the heavier the email, the greater its environmental impact. Avoid sending them by 4G. And whenever possible, use text format, which is on average twelve times lighter than HTML.

        Regularly sort through your email and delete all unnecessary messages.

        Delete SPAM automatically.

        Keep your email signatures light (avoid images or put them in low definition).

        If a colleague is not far away and you need to ask them something, go and see them in person rather than sending an email and send them your attachments on a USB stick.

        Sort and organise your emails to make it easier to find what you're looking for.

        Clean out your mailbox regularly, especially if it's webmail: you're protecting yourself from unwanted use, and you're lightening the load on data centres and your equipment.
        """
    case .queries:
        return """
        Go directly to the site you are looking for, using your browsing history, by creating favourites in your browser for addresses you visit regularly or by typing the URL address of a site directly in a search.
        Make a precise search by using relevant keywords and refining your search (excluding or combining certain words, using the most exact wording possible, using the \"advanced search\" function, etc.).

        Use the arrows in the address bar (\"go back\" or \"go forward\" one page). This saves reloading pages.

        Close tabs that you are not using, as this improves browsing.

        Limit the use of flash animations on the pages you visit: they consume a lot of energy. Some software allows you to block them and play them on a case-by-case basis.

        Save sites that you search for regularly as favourites, rather than leaving numerous tabs open all the time.
        """
    case .browsers:
        return """
        Some browsers consume more energy than others. The Web Energy Archive* study (* WEA carried out by the Green Code Lab, 2013) for ADEME names Chrome as one of the most energy-hungry (27 Wh per 1,000 pages viewed) ahead of Internet Explorer and Firefox. However, if you install a new browser on your computer, don't uninstall Internet Explorer, which is required to display certain programmes on Windows.

        Use search engines that respect privacy.
        """
    case .dataStorage:
        return """
        Empty your browser's cache, cookies and browsing history...

        Update your list of favourites.

        Sort your stored data by deleting unnecessary items, especially those stored remotely: images, videos and documents that have never been consulted accumulate there and clutter up the storage units.

        Regularly empty your operating system's \"downloads\" folder.

        Store and use as much data as possible locally (external hard drive, etc.). Every time you store data externally, and every time you consult it, you have to go back and forth between users and servers. What's more, it's easy to forget what'sstored in the Cloud when you no longer need it.

        Eco-design your website by following the advice of the Green Code Lab: www.greencodelab.org.

        Store locally rather than in the cloud (use of datacentres): online storage of emails, photos, videos, music and other documents requires constant to-ing and fro-ing between the user's terminal and the servers. Transporting data over the Internet consumes twice as much energy as storing it for a year. We therefore need to encourage as far as possible the local storage and use of our data.
        """
    case .communication:
        return """
        Eco-communication integrates environmental concerns into the design of a website, a blog, documents for the web, etc. It aims to reduce the environmental impact of communication practices, for example:

        Organise eco-responsible business events by choosing a venue close to public transport.

        Adopt new marketing and advertising rules: responsible advertising...

        Use digital information and communication technologies while respecting the rules of eco-communication.

        Are you creating or updating a website, blog or web documents? Are you producing an e-mailing?

        — Resize images to make them lighter.

        — Make them easy to read online to avoid printing.

        — Provide a printable version that limits ink and paper consumption.
        """
    case .accesibility:
        return """
        Make your website or blog accessible to everyone (the visually or hearing impaired, etc.) and everywhere (computer, tablet, smartphone).

        Use only the audio and not the camera for video conferences.
        """
    case .appliances:
        return """
        Most of the environmental impact comes from the manufacture of our devices and their end-of-life, if poorly managed. For example: manufacturing a computer alone requires no less than 240 kg of fossil fuels, 22 kg of chemicals and 1.5 tonnes of water!

        The manufacture of a computer is highly polluting: it requires 240 kg of fossil fuels, 22 kg of chemicals and 1.5 tonnes of water.

        Batteries, accumulators, electronic chips... The components of our devices contain substances that are toxic to the environment and to our health. From the extraction of the rare metals needed to manufacture them to their treatment as waste, it's important to limit their ecological footprint as much as possible throughout their life cycle! So it's best to change them as infrequently as possible.

        Keep your digital equipment as long as possible (>4 years). If you take good care of it, a smartphone can be used for 5 years and a laptop for more than 10 years.
        """
    case .miscellaneous:
        return """
        Switching off your box and TV set-top box: switched on 24 hours a day, an ADSL box and the associated TV set-top box consume 150 to 300 kWh a year, equivalent to the annual electricity consumption of 5 to 10 15-inch laptops used 8 hours a day! Switching off your box at night saves 65 to 130 kWh, between €8 and €16 and 650 to 1,300 litres of water a year.

        Choose DTT over ADSL: online video accounts for over 60% of Internet traffic. Watching a programme in HD streaming via your ADSL box emits as much greenhouse gas as making, transporting and playing a DVD! So prefer to use DTT to watch live broadcasts.

        Opt for reconditioned rather than new products.

        Give preference to environmental labels (Blue Angel, TCO, EPEAT, etc.) for computer equipment.

        Remove all unnecessary software. They often slow down computers.

        Repair and reuse before throwing away (In most cases, our equipment can be repaired).

        Donate to a recycling organisation. After being cleaned and refurbished, your old smartphone or computer will be donated or resold. This will give it a second life. By choosing a Social and Solidarity Economy (SSE) player, you will be actively contributing to social inclusion and the fight against the digital divide.

        Recycle as a last option: If you have to dispose of your equipment, drop it off at a suitable container or specialist retailer, who will be able to reuse it if it is still working. Your equipment will then either be recycled or donated to a charity.

        Choose your website hosting carefully to limit its impact (\"green\" hosting).

        Favour the use of open source technologies: this software is created and improved by a community of developers who ensure its independence and are very reactive to bugs or security flaws. What's more, they are free.

        Videoconferencing virtually brings people together in the same place, with no loss of transport time and no fuel consumption, so limiting greenhouse gas emissions. The greater the number of participants in a videoconference and the greater the average distance per participant, the more attractive a remote meeting is, especially if there is no public transport. Beware, however, of the proliferation of equipment, the transfer of pollution and consumption (from the office to the home) and the increase in local car journeys.

        Choose a more responsible package and operator.

        Use public wifi access rather than the 4G network.

        Limit the amount of cellular data used by your applications.

        Limit the amount of time you use energy-hungry social networks.

        Adopt more environmentally-friendly devices.

        Use an open operating system (OS).

        Deactivate automatic synchronisation.
        """
    case .smartphone:
        return """
        Activer le mode sombre sur son smartphone.

        Désactiver ses données cellulaires par défaut:

        Garder son smartphone le plus longtemps possible

        Trier régulièrement les médias et fichiers enregistrés sur son smartphone

        Privilégiez l’envoie de SMS plutôt qu’une messagerie instantanée ou un mail

        Activer le mode avion des que l’on utilise pas son téléphone

        Charger sa batterie qu’entre 20% et 80 %

        Supprimer les podcasts et e books écoutés ou lus

        Stocker ses fichiers, notes et images sur son téléphone et non le cloud

        Télécharger sa musique sur son tel pour l’écouter hors connexion
        """
    case .video:
        return """
        Reducing the quality of videos watched online.
        """
    case .reconditioning:
        return """
        Buying reconditioned or second-hand equipment.

        Recycle your electronic devices.

        Repairing electronic devices instead of throwing them away.

        Donate old electronics instead of throwing them away.

        Sell your electronics instead of throwing them away.
        """
    default:
        return """
        Use messaging applications that respect privacy.

        Disable background updates for unnecessary applications.

        Uninstalling applications you don't use.

        Block unnecessary applications from being backed up to the cloud.
        """
    }
}

class all_tips : Identifiable {
    
let id = UUID()
    
static let singleton = all_tips()

private init() {}

let ar_of_all : [tip] = [
    tip(label_of_vignette: "Energy consumption", label_of_tip: "Reducing the energy consumption of computers, tablets and mobile phones", text: Text_for_tip(.energy), source: "ADEME"),
    tip(label_of_vignette: "Extend the life of equipment", label_of_tip: "Extend the life of equipment", text : Text_for_tip(.equipment), source : "ADEME"),
    tip(label_of_vignette: "Use sobre equipment", label_of_tip: "Use sobre equipment", text : Text_for_tip(.sobre), source : "ADEME"),
    tip(label_of_vignette: "Mails", label_of_tip: "Mails: optimising reception and dispatch", text : Text_for_tip(.mails), source: "ADEME"),
    tip(label_of_vignette: "Web queries", label_of_tip: "Web queries: keep it short and simple", text : Text_for_tip(.queries), source : "ADEME"),
    tip(label_of_vignette: "Browsers", label_of_tip: "Browsers: Varying energy consumption", text : Text_for_tip(.browsers), source: "ADEME"),
    tip(label_of_vignette: "Data storage", label_of_tip: "Data storage", text : Text_for_tip(.dataStorage), source: "ADEME"),
    tip(label_of_vignette: "Eco-communication", label_of_tip: "Opting for eco-communication", text : Text_for_tip(.communication), source: "ADEME"),
    tip(label_of_vignette: "Accesibility", label_of_tip: "Acessibility", text: Text_for_tip(.accesibility), source: "ADEME"),
    tip(label_of_vignette: "Extend the life of appliances", label_of_tip: "Extending the life of appliances", text: Text_for_tip(.appliances), source: "ADEME"),
    tip(label_of_vignette: "Miscellaneous", label_of_tip: "Miscellaneous", text: Text_for_tip(.miscellaneous), source: "ADEME"),
    tip(label_of_vignette: "Smartphone", label_of_tip: "Smartphone", text: Text_for_tip(.smartphone), source: "Fruggr"),
    tip(label_of_vignette: "Video", label_of_tip: "Video", text: Text_for_tip(.video), source: "Fruggr"),
    tip(label_of_vignette: "Reconditioning", label_of_tip: "Reconditioning/recycling/repair", text : Text_for_tip(.reconditioning), source: "ADEME"),
    tip(label_of_vignette: "Applications", label_of_tip: "Applications", text: Text_for_tip(.applications), source: "ADEME")
         ]
}
