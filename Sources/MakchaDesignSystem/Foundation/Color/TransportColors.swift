//
//  File.swift
//
//
//  Created by yuncoffee on 5/11/24.
//
// temp
import Foundation
import SwiftUI

public extension TransportType {
    var color: Color {
        switch self {
        case .subway(let subwayType):
            subwayType.color
        case .bus(let busType):
            busType.color
        }
    }
}

public extension MetropolitanRailway {
    var color: Color {
        switch self {
        case .line1:
            Color(.subwaySeoul1)
        case .line2:
            Color(.subwaySeoul2)
        case .line3:
            Color(.subwaySeoul3)
        case .line4:
            Color(.subwaySeoul4)
        case .line5:
            Color(.subwaySeoul5)
        case .line6:
            Color(.subwaySeoul6)
        case .line7:
            Color(.subwaySeoul7)
        case .line8:
            Color(.subwaySeoul8)
        case .line9:
            Color(.subwaySeoul9)
        case .공항철도:
            Color(.subwaySeoul10)
        case .신분당선:
            Color(.subwaySeoul11)
        case .수인분당선:
            Color(.subwaySeoul12)
        case .경강선:
            Color(.subwaySeoul13)
        case .경의중앙선:
            Color(.subwaySeoul14)
        case .경춘선:
            Color(.subwaySeoul15)
        case .서해선:
            Color(.subwaySeoul16)
        case .인천1호선:
            Color(.subwaySeoul17)
        case .인천2호선:
            Color(.subwaySeoul18)
        case .신림선:
            Color(.subwaySeoul19)
        case .우이신설선:
            Color(.subwaySeoul20)
        case .김포골드라인:
            Color(.subwaySeoul21)
        case .용인에버라인:
            Color(.subwaySeoul22)
        case .의정부경전철:
            Color(.subwaySeoul23)
        case .gtxA:
            Color(.subwaySeoul24)
        }
    }
}

public extension SeoulBusType {
    var color: Color {
        switch self {
        case .공항:
            .purple
        case .광역:
            .purple
        case .간선:
            .purple
        case .지선:
            .purple
        case .맞춤:
            .purple
        case .순환:
            .purple
        case .심야:
            .purple
        case .마을:
            .purple
        case .투어:
            .purple
        }
    }
}

public extension GyeonggiBusType {
    var color: Color {
        switch self {
        case .프리미엄:
            .purple
        case .경기순환:
            .purple
        case .직행좌석:
            .purple
        case .좌석:
            .purple
        case .일반:
            .purple
        case .마을:
            .purple
        }
    }
}

public extension Color {
    static func transport(_ type: TransportType) -> Color {
        type.color
    }
}
