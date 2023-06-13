//
//  PrivacyPolicyView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 14/06/23.
//

import SwiftUI

struct PrivacyPolicyView: View {
    var body: some View {
        ScrollView {
            Text("""
     Privacy Policy
     
     ***User data collection***
     ***THE PURPOSES OF PROCESSING YOUR PERSONAL DATA***
     Our mission is to constantly improve our App and provide you with new experiences. As part of this mission, we use your information for the following purposes:
      1 To make our service available. We use the information that you submit and information that is processed automatically to provide you with all requested services.
      2 To improve, test and monitor the effectiveness of our App. We use the information that is processed automatically to better understand user behavior and trends, detect potential outages and technical issues, to operate, protect, improve, and optimize our App.
      3 To provide you with interest-based (behavioral) advertising or other targeted content. We may use information that is processed automatically for marketing purposes (to show ads that may be of interest to you based on your preferences). We provide personalized content and information to you, which can include online ads or other forms of marketing.
      4 To communicate with you. We use the information we have to communicate with you through newsletters, i.e. to send you marketing notifications, receive your feedback about our App experience, and let you know about our policies and terms. We also use your information to respond to you when you contact us.
      5 To prevent fraud and spam, to enforce the law. We really want our App to be free of spam and fraudulent content so that you feel safe and free. We may use your information to prevent, detect, and investigate fraud, security breaches, potentially prohibited or illegal activities, protect our trademarks and enforce our Terms of Use.
     If any new purposes for processing your personal data arise we will let you know we start to process information on that other purpose by introducing the corresponding changes to this Privacy policy.
     
     We ask users to provide us with an email address or public information from Facebook, Twitter and Google+ profiles. This is not an obligatory requirement. We do not share any personal information gathered by us with any 3rd parties. This personal information allows us to keep users updated with the latest news and product announcements. It also helps us develop, deliver, and improve our products, services and content. We may use personal information for internal purposes such as auditing, data analysis and research in order to improve products and meet customers' expectations.
     
     ***3rd party services***
     We use 3rd party services in our apps. These services collect usage data in compliance with their Privacy Policies. The services are described below.
     
     ***3rd party advertising***
     3rd party ad serving systems allow user data to be utilized for advertising communication purposes displayed in the form of banners and other advertisements on apps, possibly based on user interests.
     
     ***Cross-app advertising***
     We collect data of installed apps on your device to deliver tailored ads, content or offers, and do not show ads that are considered irrelevant or no longer relevant. We deliver advertising through mobile applications based on data associated with user's mobile device and personal interests. We also take into account applications usage and general location inferred from IP address.
     
     ***How you can exercise your rights***
     To be in control of your personal data, you have the following rights:
     - Accessing / reviewing / updating / correcting your personal data. You may request a copy of, as well as updating and correcting your personal data collected during your use of the Service at email@email.it.
     - Deleting your personal data. You can request erasure of your personal data by sending us an email at email@email.it.
     - When you request deletion of your personal data, we will use reasonable efforts to honor your request. In some cases we may be legally required to keep some of the data for a certain time; in such event, we will fulfill your request after we have complied with our obligations.
     
     ***Admob***
     We use Admob by Google as the main ad server. Please see Admob Privacy Policy:
     https://www.google.com/intl/en/policies/privacy
     
     ***Analytics***
     3rd party analytics services allow us to monitor and analyze app usage, better understand our audience and user behavior.
     
     ***Google Analytics***
     Google Analytics is an analysis service provided by Google Inc. Google utilizes the collected data to track and examine the use of Apps, to prepare reports on user activities and share them with other Google services. Google may use the data to contextualize and personalize the ads of its own advertising network.
     http://www.google.com/intl/en/policies/privacy
     
     ***Facebook Analytics is analysis tool provided by Facebook Inc.***
     Learn more on how they do collect and process information here:
     https://www.facebook.com/full_data_use_policy
     
     ***Children's Online Privacy Protection Act Compliance***
     We are in compliance with the requirements of COPPA, we do not collect any personal information from anyone under 13 years of age. Our products and services are all directed to people who are at least 13 years old or older.
     
     ***Changes to our Privacy Policy***
     The current Privacy Policy may be changed. We will keep this document up to date. Last updated: 14 Jun, 2023.
     
     ***Your consent***
     By using apps you consent to this Privacy Policy as well as all the 3rd party Privacy Policies mentioned above.
     
     ***Contacting us***
     If there are any questions regarding this privacy policy you may contact us using the information below.
     email@email.it
     """)
        }
    }
}

struct PrivacyPolicyView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyPolicyView()
    }
}
