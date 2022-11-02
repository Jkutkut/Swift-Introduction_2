//
//  exercises.swift
//  Swift-Introduction_2
//
//  Created by Jkutkut on 26/10/22.
//  Revised by kiol12
//

import Foundation

func ej1() {
    print("All games except the ones with Mario on it:")
    let DATA_ARR = [
        "game 1",
        "game 2",
        "game 3 with mario",
        "game 4 Mario",
        "game Mario 5",
        "game 6",
    ]
    let MARIO_REGEX = try! NSRegularExpression(pattern: "[Mm]ario")
    
    for s in DATA_ARR {
        if MARIO_REGEX.firstMatch(in: s, options: [], range: NSRange(location: 0, length: s.count)) == nil {
            print(s)
        }
    }
}

func ej2() {
    let INMUTABLE = ["value"]
    // INMUTABLE.removeAll();
}

func ej3() {
    let AMOUNT = 1000
    let VALUE = 5
    print("Creating an array filled with \(VALUE) of size \(AMOUNT)")
    var aTonOfFives: [Int] = []
    for _ in 0..<AMOUNT {
        aTonOfFives.append(VALUE)
    }
    
    // Also works:
    let aTonOfFives2 : [Int] = Array(repeating: VALUE, count: AMOUNT)
    print("Elements:", aTonOfFives.count)
    print("Elements:", aTonOfFives2.count)
}

func ej4() {
    print("Removing duplicated elements:")
    let DATA_ARR = [
        "ele 1",
        "ele 2",
        "ele 2",
        "ele 3",
        "ele 3",
        "ele 1",
        "ele 4"
    ]
    
    let UNIQUE = Set(DATA_ARR)
    for ele in UNIQUE {
        print(ele)
    }
}

func ej5() {
    print("Sort set of numbers and store them in an array")
    let DATA_SET = Set([10, 6, 2, 1, 4, 5, 3, 8, 9, 7])
    
    let ARRAY_SORTED = DATA_SET.sorted()
    for nbr in ARRAY_SORTED {
        print(nbr)
    }
}

func ej6() {
    print("Football team as dict:")
    var team = [Int: String]()
    team[7] = "Player 1"
    team[12] = "Player 2"
    team[32] = "Player 3"
    team[45] = "Player 4"
    team[21] = "Player 5"
    team[3] = "Player 6"
    
    for (dorsal, playerName) in team {
        print("Player: {dorsal: \(dorsal), name: \(playerName)}")
    }
}

func ej7() {
    print("Football team as array:")
    var team = [Int: String]()
    team[7] = "Player 1"
    team[12] = "Player 2"
    team[32] = "Player 3"
    team[45] = "Player 4"
    team[21] = "Player 5"
    team[3] = "Player 6"
    
    var team_array = [String]();
    for (dorsal, playerName) in team {
        team_array.append("\(playerName) -> \(dorsal)")
    }
    
    for player in team_array {
        print(player)
    }
}

func ej8() {
    print("Football team dorsals as array:")
    var team = [Int: String]()
    team[7] = "Player 1"
    team[12] = "Player 2"
    team[32] = "Player 3"
    team[45] = "Player 4"
    team[21] = "Player 5"
    team[3] = "Player 6"
    
    var team_array = [Int]();
    for (dorsal, _) in team {
        team_array.append(dorsal)
    }
    
    for dorsal in team_array {
        print(dorsal)
    }
}

func ej9() {
    print("All teams:")
    var teams = [String: [Int: String]]()
    
    let team1 = [7: "player 1", 8: "player 2", 3: "player 3", 1: "player 4"]
    teams["team 1"] = team1
    let team2 = [7: "player 1", 8: "player 2", 3: "player 3", 1: "player 4"]
    teams["team 2"] = team2
    let team3 = [7: "player 1", 8: "player 2", 3: "player 3", 1: "player 4"]
    teams["team 3"] = team3
    
    for (teamName, fullTeam) in teams {
        print("\n", teamName)
        for (dorsal, playerName) in fullTeam {
            print("  \(playerName) with dorsal \(dorsal)")
        }
    }
}

func ej10() {
    ej9()
}
