// Kevin Li - 12:42 PM - 6/6/20

import SwiftUI
import AVKit


struct SidePage: View, PagerStateDirectAccess {

    @EnvironmentObject var pagerState: PagerState
    @State var player = AVPlayer()
    
    
    var videoUrl: String = "https://g0.ipcamlive.com/player/player.php?alias=5c0536dec4cf5"
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.yellow
            VStack(spacing: 0) {
                Text("Webcamera")
                if #available(iOS 14.0, *) {
                    VideoPlayer(player: player)
                        .frame(height: 400)
                        .onAppear() {
                            player = AVPlayer(url: URL(string: videoUrl)!)
                            player.play()
                            // not working!!!!!!!!!!!!!!1!!!!!
                            
                            
                            
                                    }
                    
                    
                   // VideoPlayer(player: AVPlayer(url: URL(string: "https://g0.ipcamlive.com/player/player.php?alias=5c0536dec4cf5")!))
                       // .frame(height: 400)
                } else {
                    Text("Version of iOS is too old")
                }
            }
            .font(.title)
        }
        .contentShape(Rectangle())
        .frame(width: pagerWidth)
    }

}
