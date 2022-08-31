import Foundation

class InputChecker {
    var rule: String = "^\\s*|\\s*$"
    
    init(rule: String) {
        self.rule = rule
    }
    
    init(){
    }
    
    func check(input: inout String) -> String? {
        let regex = try! NSRegularExpression(pattern: rule)
        input = regex.stringByReplacingMatches(in: input, options: [], range: NSRange(0..<input.utf16.count), withTemplate: "")
        return input.count == 0 ? nil : "success"
    }
}
