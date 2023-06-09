//
//  CalculatorAlgorithm.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 08/06/23.
//

import Foundation

func emails_1500_kg (_ x : emailAttachment, _ device: Emails) -> Int {
    switch device {
    case .smartphone:
        switch x {
        case .noAttachment:
            return 9
        case .one_mb_attachment:
            return 86
        default:
            return 841
        }
    case .tablet:
        switch x {
        case .noAttachment:
            return 11
        case .one_mb_attachment:
            return 88
        default:
            return 843
        }
    case .laptop:
        switch x {
        case .noAttachment:
            return 13
        case .one_mb_attachment:
            return 91
        default:
            return 846
        }
    default:
        switch x {
        case .noAttachment:
            return 26
        case .one_mb_attachment:
            return 104
        default:
            return 859
        }
    }
}

func stream_70_h (_ x : streamAttachment, _ device: Stream_e_Visio) -> Int {
    switch device {
    case .smartphone:
        switch x {
        case .lowDef:
            return 25
        case .highDef:
            return 104
        default:
            return 240
        }
    case .tablet:
        switch x {
        case .lowDef:
            return 27
        case .highDef:
            return 106
        default:
            return 242
        }
    case .laptop:
        switch x {
        case .lowDef:
            return 29
        case .highDef:
            return 108
        default:
            return 244
        }
    case .desktop:
        switch x {
        case .lowDef:
            return 41
        case .highDef:
            return 119
        default:
            return 256
        }
    default:
        switch x {
        case .lowDef:
            return 37
        case .highDef:
            return 116
        default:
            return 253
        }
    }
}

func visio_70_h (_ x: visioAttachment, _ device : Stream_e_Visio) -> Int {
    switch device {
    case .smartphone:
        switch x {
        case .lowDef:
            return 16
        case .highDef:
            return 64
        default:
            return 271
        }
    case .tablet:
        switch x {
        case .lowDef:
            return 18
        case .highDef:
            return 66
        default:
            return 273
        }
    case .laptop:
        switch x {
        case .lowDef:
            return 20
        case .highDef:
            return 68
        default:
            return 275
        }
    case .desktop:
        switch x {
        case .lowDef:
            return 31
        case .highDef:
            return 80
        default:
            return 286
        }
    default:
        switch x {
        case .lowDef:
            return 28
        case .highDef:
            return 76
        default:
            return 283
        }
    }
}

func weight_email_device (_ x : Emails) -> Int {
    switch x {
    case .smartphone:
        return 31
    case .tablet:
        return 45
    case .laptop:
        return 135
    default:
        return 417
    }
}

func weight_video_device (_ x : Stream_e_Visio) -> Int {
    switch x {
    case .smartphone:
        return 31
    case .tablet:
        return 45
    case .laptop:
        return 135
    case .desktop:
        return 417
    default:
        return 350
    }
}



func calc_email (_ num : Int, _ attach : emailAttachment, _ device: Emails) -> Double {
    let otn = Double(num) / Double(1500)
    let ans = otn * Double(emails_1500_kg(attach, device))
    return Double(round_calc(ans, 1))!
}

func calc_stream (_ num : Int, _ attach : streamAttachment, _ device: Stream_e_Visio) -> Double {
    let otn = Double(num) / Double(70)
    let ans = otn * Double(stream_70_h(attach, device))
    return Double(round_calc(ans,1))!
}

func calc_visio (_ num : Int, _ attach : visioAttachment, _ device: Stream_e_Visio) -> Double {
    let otn = Double(num) / Double(70)
    let ans = otn * Double(visio_70_h(attach, device))
    return Double(round_calc(ans,1))!
}

func calc_CO2 (_ email : Int, _ streams : Int, _ visios : Int, _ emailDevice : Emails, _ streamDevice : Stream_e_Visio, _ visioDevice : Stream_e_Visio, _ emailAttach : emailAttachment, _ streamAttach : streamAttachment, _ visioAttach : visioAttachment) -> CO2e {
    var ans : CO2e = CO2e(ar_of_all: [], ar_of_types: [], ar_of_strings: [], needed_ar : [])
    if (email != 0) {
        ans.ar_of_types.append(0)
        ans.ar_of_strings.append("1 year of emails")
        ans.ar_of_all.append(calc_email(email, emailAttach, emailDevice))
    }
    if (streams != 0) {
        ans.ar_of_types.append(2)
        ans.ar_of_strings.append("1 year of streaming")
        ans.ar_of_all.append(calc_stream(streams, streamAttach, streamDevice))
    }
    if (visios != 0) {
        ans.ar_of_types.append(4)
        ans.ar_of_strings.append("1 year of videoconferencing")
        ans.ar_of_all.append(calc_visio(visios, visioAttach, visioDevice))
    }
    //smartphone
    if ((emailDevice == .smartphone && email != 0) || (streams != 0 && streamDevice == .smartphone) || (visios != 0 && visioDevice == .smartphone)) {
        ans.ar_of_types.append(1)
        ans.ar_of_strings.append("building a smartphone")
        ans.ar_of_all.append(Double(weight_video_device(.smartphone)))
    }
    //tablet
    if ((emailDevice == .tablet && email != 0) || (streams != 0 && streamDevice == .tablet) || (visios != 0 && visioDevice == .tablet)){
        ans.ar_of_types.append(3)
        ans.ar_of_strings.append("building a tablet")
        ans.ar_of_all.append(Double(weight_video_device(.tablet)))
    }
    //laptop
    if ((emailDevice == .laptop && email != 0) || (streams != 0 && streamDevice == .laptop) || (visios != 0 && visioDevice == .laptop)){
        ans.ar_of_types.append(5)
        ans.ar_of_strings.append("building a laptop")
        ans.ar_of_all.append(Double(weight_video_device(.laptop)))
    }
    //desktop
    if ((emailDevice == .desktop && email != 0) || (streams != 0 && streamDevice == .desktop) || (visios != 0 && visioDevice == .desktop)) {
        ans.ar_of_types.append(7)
        ans.ar_of_strings.append("building a desktop")
        ans.ar_of_all.append(Double(weight_video_device(.desktop)))
    }
    //television
    if ((streams != 0 && streamDevice == .television) || (visios != 0 && visioDevice == .television)){
        ans.ar_of_types.append(9)
        ans.ar_of_strings.append("building a television")
        ans.ar_of_all.append(Double(weight_video_device(.television)))
    }
    ans.bubble_sort()
    return ans
}
