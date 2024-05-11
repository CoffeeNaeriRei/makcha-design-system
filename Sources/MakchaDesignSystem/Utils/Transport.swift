//
//  File.swift
//  
//
//  Created by yuncoffee on 5/11/24.
//

import Foundation
import SwiftUI

public protocol Transportable {}
extension Transportable {
    var color: Color { .blue }
}
public enum SubwayType: Transportable {
    case metropolitanRailway(MetropolitanRailway)
}

public enum BusType: Transportable {
    case seoulBusType(SeoulBusType)
    case gyeonggiBusType(GyeonggiBusType)
}

public enum TransportType {
    case subway(SubwayType)
    case bus(BusType)
}

// MARK: 지하철 구분에 대한 고민이 필요해보임.
public enum MetropolitanRailway {
    // --- --- //
    case line1
    case line2
    case line3
    case line4
    case line5
    case line6
    case line7
    case line8
    case line9
    // ---  --- //
    case 공항철도
    case 신분당선
    case 수인분당선
    case 경강선
    case 경의중앙선
    case 경춘선
    case 서해선
    case 인천1호선
    case 인천2호선
    case 신림선
    case 우이신설선
    case 김포골드라인
    case 용인에버라인
    case 의정부경전철
    case gtxA
}

public enum SeoulBusType {
    case 공항
    case 광역
    case 간선
    case 지선
    case 맞춤
    case 순환
    case 심야
    case 마을
    case 투어
}

public enum GyeonggiBusType {
    case 프리미엄
    case 경기순환
    case 직행좌석
    case 좌석
    case 일반
    case 마을
}
