import UIKit

class TVRemoteControl {
    // Private static instance to hold the single instance of the class
    private static var sharedRemoteControl: TVRemoteControl?
    
    // Private initializer to prevent external instantiation
    private init() {}
    
    // Static method to get the shared instance of the remote control
    static func shared() -> TVRemoteControl {
        if sharedRemoteControl == nil {
            sharedRemoteControl = TVRemoteControl()
        }
        return sharedRemoteControl!
    }
    
    // Methods to control the TV
    func turnOn() {
        print("TV is ON")
    }
    
    func turnOff() {
        print("TV is OFF")
    }
    
    func changeChannel(to channel: Int) {
        print("Changed channel to \(channel)")
    }
}

// Example
let remote1 = TVRemoteControl.shared()
remote1.turnOn()
remote1.changeChannel(to: 5)

let remote2 = TVRemoteControl.shared()
remote2.turnOff()

print(remote1 === remote2)
