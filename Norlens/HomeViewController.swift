

import UIKit
import AVFoundation

class HomeViewController: UIViewController {

    @IBOutlet weak var blurbTV: UITextView!
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var audioProgressIndicator: KDCircularProgress!
    var blurbPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        DispatchQueue.global(qos: .userInitiated).async {
            Manager.shared
        }
        
        //Create an audioplayer for the blurb to be spoken aloud
        
        let url = Bundle.main.url(forResource: "WelcomeBlurb", withExtension: "mp4")
        do {
            blurbPlayer = try AVAudioPlayer(contentsOf: url!)
        } catch {
            print("can't load the blurb audio")
        }
        //
        
        audioProgressIndicator.set(colors: UIColor.white)
        audioProgressIndicator.angle = 0
        
    }
    
    @IBAction func audioPlay(sender: UIButton) {
        if !blurbPlayer.isPlaying {
            blurbPlayer.play()
            playButton.setImage(#imageLiteral(resourceName: "Pause_000000_100"), for: UIControlState.normal)
            audioProgressIndicator.animate(fromAngle: audioProgressIndicator.angle, toAngle: 360, duration: (blurbPlayer.duration - blurbPlayer.currentTime), completion: { done in self.audioProgressIndicator.stopAnimation()})
        } else {
            blurbPlayer.stop()
            playButton.setImage(#imageLiteral(resourceName: "Play_000000_100"), for: UIControlState.normal)
            audioProgressIndicator.pauseAnimation()
        }
        //blurbPlayer.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidLayoutSubviews() {
        self.blurbTV.setContentOffset(CGPoint.zero, animated: false)
    }
    
}

