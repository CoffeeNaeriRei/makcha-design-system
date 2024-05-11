//
//  File.swift
//
//
//  Created by yuncoffee on 5/11/24.
//

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
            Color("line1", bundle: Bundle.module)
        case .line2:
            Color("line2", bundle: Bundle.module)
        case .line3:
            Color(.line3)
        case .line4:
            Color(.line4)
        case .line5:
            Color(.line5)
        case .line6:
            Color(.line6)
        case .line7:
            Color(.line7)
        case .line8:
            Color(.line8)
        case .line9:
            Color(.line9)
        case .공항철도:
            .purple
        case .신분당선:
            .purple
        case .수인분당선:
            .purple
        case .경강선:
            .purple
        case .경의중앙선:
            .purple
        case .경춘선:
            .purple
        case .서해선:
            .purple
        case .인천1호선:
            .purple
        case .인천2호선:
            .purple
        case .신림선:
            .purple
        case .우이신설선:
            .purple
        case .김포골드라인:
            .purple
        case .용인에버라인:
            .purple
        case .의정부경전철:
            .purple
        case .gtxA:
            .purple
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
