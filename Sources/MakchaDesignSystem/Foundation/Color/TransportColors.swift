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
            Color("subwaySeoul1", bundle: Bundle.module)
        case .line2:
            Color("subwaySeoul2", bundle: Bundle.module)
        case .line3:
            Color("subwaySeoul3", bundle: Bundle.module)
        case .line4:
            Color("subwaySeoul4", bundle: Bundle.module)
        case .line5:
            Color("subwaySeoul5", bundle: Bundle.module)
        case .line6:
            Color("subwaySeoul6", bundle: Bundle.module)
        case .line7:
            Color("subwaySeoul7", bundle: Bundle.module)
        case .line8:
            Color("subwaySeoul8", bundle: Bundle.module)
        case .line9:
            Color("subwaySeoul9", bundle: Bundle.module)
        case .공항철도:
            Color("subwaySeoul10", bundle: Bundle.module)
        case .신분당선:
            Color("subwaySeoul11", bundle: Bundle.module)
        case .수인분당선:
            Color("subwaySeoul12", bundle: Bundle.module)
        case .경강선:
            Color("subwaySeoul13", bundle: Bundle.module)
        case .경의중앙선:
            Color("subwaySeoul14", bundle: Bundle.module)
        case .경춘선:
            Color("subwaySeoul15", bundle: Bundle.module)
        case .서해선:
            Color("subwaySeoul16", bundle: Bundle.module)
        case .인천1호선:
            Color("subwaySeoul17", bundle: Bundle.module)
        case .인천2호선:
            Color("subwaySeoul18", bundle: Bundle.module)
        case .신림선:
            Color("subwaySeoul19", bundle: Bundle.module)
        case .우이신설선:
            Color("subwaySeoul20", bundle: Bundle.module)
        case .김포골드라인:
            Color("subwaySeoul21", bundle: Bundle.module)
        case .용인에버라인:
            Color("subwaySeoul22", bundle: Bundle.module)
        case .의정부경전철:
            Color("subwaySeoul23", bundle: Bundle.module)
        case .gtxA:
            Color("subwaySeoul24", bundle: Bundle.module)
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
