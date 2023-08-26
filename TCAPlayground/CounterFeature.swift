//
//  CounterFeature.swift
//  TCAPlayground
//
//  Created by Nazar Prysiazhnyi on 26.08.2023.
//

import ComposableArchitecture

struct CounterFeature: Reducer {
    struct State {
        var count = 0
    }
    
    enum Action {
        case decrementButtonTapped
        case incrementButtonTapped
    }
    
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .decrementButtonTapped:
            state.count -= 1
            return .none
            
        case .incrementButtonTapped:
            state.count += 1
            return .none
        }
    }
}

extension CounterFeature.State: Equatable {
    static func == (lhs: CounterFeature.State, rhs: CounterFeature.State) -> Bool {
        lhs.count == rhs.count
    }
}
