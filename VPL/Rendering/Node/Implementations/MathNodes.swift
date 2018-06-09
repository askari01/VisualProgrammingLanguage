//
//  MathNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit
public class MathNode: DisplayableNode {
    public static let shortcutCharacter: String? = "M"
    
    public class var id: String { fatalError("Unimplemented.") }
    public class var name: String { fatalError("Unimplemented.") }
    public let inputValues: [InputValue] = [InputValue(id: "a", name: "A", type: .int), InputValue(id: "b", name: "B", type: .int)]
    public let output: NodeOutput = .value(OutputValue(type: .int))
    
    var inputA: InputValue { return inputValues[0] }
    
    var inputB: InputValue { return inputValues[1] }
    
    public required init() {
        self.setupConnections()
    }
}
public class AddNode: MathNode {
    public override class var id: String { return "add" }
    public override class var name: String { return "Add" }
}
public class SubtractNode: MathNode {
    public override class var id: String { return "subtract" }
    public override class var name: String { return "Subtract" }
}
public class MultiplyNode: MathNode {
    public override class var id: String { return "multiply" }
    public override class var name: String { return "Multiply" }
}
public class DivideNode: MathNode {
    public override class var id: String { return "divide" }
    public override class var name: String { return "Divide" }
}
public class ModuloNode: MathNode {
    public override class var id: String { return "modulo" }
    public override class var name: String { return "Modulo" }
}

public class RandomIntNode: DisplayableNode {
    public static let shortcutCharacter: String? = "M"
    
    public static let id: String = "random-in"
    public static let name: String = "Random Integer"
    public let output: NodeOutput = .value(OutputValue(type: .int))
    
    public required init() {
        self.setupConnections()
    }
}

public class RandomFloatNode: DisplayableNode {
    public static let shortcutCharacter: String? = "M"
    
    public static let id: String = "random-float"
    public static let name: String = "Random Float"
    public let output: NodeOutput = .value(OutputValue(type: .float))
    
    public required init() {
        self.setupConnections()
    }
}

public class EqualsNode: DisplayableNode {
    public static let shortcutCharacter: String? = "E"
    
    public static let id: String = "equals"
    public static let name: String = "Equals"
    public let inputValues: [InputValue] = [InputValue(id: "a", name: "A", type: .int), InputValue(id: "b", name: "B", type: .int)]
    public let output: NodeOutput = .value(OutputValue(type: .bool))
    
    public required init() {
        self.setupConnections()
    }
}
