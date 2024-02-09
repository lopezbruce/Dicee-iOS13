import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // Define an array of dice image names for easier management
    let diceImages = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollButtonPressed(nil) // Optionally start with random dice
    }

    @IBAction func rollButtonPressed(_ sender: UIButton?) {
        // Directly use array's randomElement() to get a random dice name
        diceImageView1.image = UIImage(named: diceImages.randomElement()!)
        diceImageView2.image = UIImage(named: diceImages.randomElement()!)
    }
}
