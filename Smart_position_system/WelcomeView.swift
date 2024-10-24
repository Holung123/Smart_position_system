

import SwiftUI


struct WelcomeView: View {
    
    @ObservedObject var viewmodel = FirestoreManager()
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    var body: some View {
        HStack{
            Text("SmartLiving".uppercased())
                .font(.system(.headline, design: .serif, weight: .bold))
                .foregroundColor(.mint.opacity(0.75))
            
        }
        VStack{
            //DisplayView
//            ZStack {
//                
//                Image("Floor-Plan")
//                    .resizable()
//                
//                //Firestore Call coordinate real time display
//                ForEach(viewmodel.anchor) { Anchors in
//                    
//                    VStack(alignment: .leading) {
//                        Image(systemName: "")
//                            .frame(width: 10, height: 10)
//                            .background(Color.green)
//                            .position( /// here!
//                                x: CGFloat(Anchors.coordinate[0]),
//                                y:  CGFloat(Anchors.coordinate[1])
//                            )
//                    }
//                }
//                
//                ForEach(viewmodel.Tag) { tag in
//                    var A_x = tag.coordinate[0] + Float.random(in: 1..<10)
//                    var A_y = tag.coordinate[1] + Float.random(in: 1..<10)
//                    VStack(alignment: .leading) {
//                        Image(systemName: "")
//                            .frame(width: 10, height: 10)
//                            .background(Color.red)
//                            .position( /// here!
//                                x: CGFloat(A_x),
//                                y:  CGFloat(A_y)
//                            )
//                    }
//                }
                //            List(viewmodel.anchor) { Anchors in
                //                                VStack(alignment: .leading) {
                //                                    Image(systemName: "")
                //                                        .frame(width: 30, height: 30)
                //                                        .background(Color.green)
                //                                        .position( /// here!
                //                                            x: CGFloat(Anchors.coordinate[0]),
                //                                            y:  CGFloat(Anchors.coordinate[1])
                //                                        )
                //                                }
                //                            }
                
                
//            }.onAppear(){self.viewmodel.FetchCoordinate()}
            
            
            
            //        Main Content
            //        ScrollView {
            //            VStack(alignment: .leading) {
            //                Text("Device")
            //                    .font(.system(.largeTitle, weight: .medium))
            //                    .foregroundStyle(
            //                        LinearGradient(
            //                            colors: [.blue, .red],
            //                            startPoint: .leading,
            //                            endPoint: .trailing
            //                        )
            //                    )
            //                Image("")
            //                    .renderingMode(.original)
            //                    .resizable()
            //                    .aspectRatio(contentMode: .fill)
            //                    .frame(width: 300, height: 270)
            //                    .clipped()
            //                    .overlay(alignment: .bottomLeading) {
            //                        HStack {
            //                            Text("Smart Light")
            //                            Spacer()
            //                            Image(systemName: "plus")
            //                        }
            //                        .padding()
            //                        .foregroundColor(.white)
            //                        .font(.system(.title3, weight: .semibold))
            //                    }
            //                    .mask {
            //                        RoundedRectangle(cornerRadius: 14, style: .continuous)
            //                    }
            //                    .padding(3)
            //                    .background(alignment: .bottom) {
            //                        LinearGradient(gradient: Gradient(colors: [.indigo, .cyan]), startPoint: .leading, endPoint: .trailing)
            //                            .mask {
            //                                RoundedRectangle(cornerRadius: 16, style: .continuous)
            //                            }
            //                    }
            //                    .frame(maxWidth: .infinity, alignment: .leading)
            //                    .clipped()
            //                Image("")
            //                    .renderingMode(.original)
            //                    .resizable()
            //                    .aspectRatio(contentMode: .fill)
            //                    .frame(width: 300, height: 270)
            //                    .clipped()
            //                    .overlay(alignment: .bottomLeading) {
            //                        HStack {
            //                            Text("Smart Fan")
            //                            Spacer()
            //                            Image(systemName: "plus")
            //                        }
            //                        .padding()
            //                        .foregroundColor(.white)
            //                        .font(.system(.title3, weight: .semibold))
            //                    }
            //                    .mask {
            //                        RoundedRectangle(cornerRadius: 14, style: .continuous)
            //                    }
            //                    .padding(3)
            //                    .background(alignment: .bottom) {
            //                        LinearGradient(gradient: Gradient(colors: [Color(.systemBrown), Color(.displayP3, red: 183/255, green: 167/255, blue: 149/255)]), startPoint: .leading, endPoint: .trailing)
            //                            .mask {
            //                                RoundedRectangle(cornerRadius: 16, style: .continuous)
            //                            }
            //                    }
            //                    .frame(maxWidth: .infinity, alignment: .trailing)
            //                    .clipped()
            //                Image("")
            //                    .renderingMode(.original)
            //                    .resizable()
            //                    .aspectRatio(contentMode: .fill)
            //                    .frame(width: 300, height: 270)
            //                    .clipped()
            //                    .overlay(alignment: .bottomLeading) {
            //                        HStack {
            //                            Text("Bold Shadows")
            //                            Spacer()
            //                            Image(systemName: "plus")
            //                        }
            //                        .padding()
            //                        .foregroundColor(.pink)
            //                        .font(.system(.title3, weight: .semibold))
            //                    }
            //                    .mask {
            //                        RoundedRectangle(cornerRadius: 14, style: .continuous)
            //                    }
            //                    .padding(3)
            //                    .background(alignment: .bottom) {
            //                        LinearGradient(gradient: Gradient(colors: [.secondary, .secondary.opacity(0.25)]), startPoint: .leading, endPoint: .trailing)
            //                            .mask {
            //                                RoundedRectangle(cornerRadius: 16, style: .continuous)
            //                            }
            //                    }
            //                    .frame(maxWidth: .infinity, alignment: .leading)
            //                    .clipped()
            //                Image("myImage")
            //                    .renderingMode(.original)
            //                    .resizable()
            //                    .aspectRatio(contentMode: .fill)
            //                    .frame(width: 300, height: 270)
            //                    .clipped()
            //                    .overlay(alignment: .bottomLeading) {
            //                        HStack {
            //                            Text("Night Lights")
            //                            Spacer()
            //                            Image(systemName: "plus")
            //                        }
            //                        .padding()
            //                        .foregroundColor(.white)
            //                        .font(.system(.title3, weight: .semibold))
            //                    }
            //                    .mask {
            //                        RoundedRectangle(cornerRadius: 14, style: .continuous)
            //                    }
            //                    .padding(3)
            //                    .background(alignment: .bottom) {
            //                        LinearGradient(gradient: Gradient(colors: [.pink, .black]), startPoint: .leading, endPoint: .trailing)
            //                            .mask {
            //                                RoundedRectangle(cornerRadius: 16, style: .continuous)
            //                            }
            //                    }
            //                    .frame(maxWidth: .infinity, alignment: .trailing)
            //                    .clipped()
            //                Image("myImage")
            //                    .renderingMode(.original)
            //                    .resizable()
            //                    .aspectRatio(contentMode: .fill)
            //                    .frame(width: 300, height: 270)
            //                    .clipped()
            //                    .overlay(alignment: .bottomLeading) {
            //                        HStack {
            //                            Text("Sunset Yellow")
            //                            Spacer()
            //                            Image(systemName: "plus")
            //                        }
            //                        .padding()
            //                        .foregroundColor(.white)
            //                        .font(.system(.title3, weight: .semibold))
            //                    }
            //                    .mask {
            //                        RoundedRectangle(cornerRadius: 14, style: .continuous)
            //                    }
            //                    .padding(3)
            //                    .background(alignment: .bottom) {
            //                        LinearGradient(gradient: Gradient(colors: [Color(.systemGray6), Color(.systemFill)]), startPoint: .trailing, endPoint: .leading)
            //                            .mask {
            //                                RoundedRectangle(cornerRadius: 16, style: .continuous)
            //                            }
            //                    }
            //                    .frame(maxWidth: .infinity, alignment: .leading)
            //                    .clipped()
            //            }
            //            .padding(.top, 40)
            //            .padding()
            //            .padding(.bottom)
            //        }
            //        .background {
            //            RoundedRectangle(cornerRadius: 16, style: .continuous)
            //                .fill(Color(.displayP3, red: 130/255, green: 94/255, blue: 98/255).opacity(0.21))
            //        }
            
            //navigation
            //        .overlay(alignment: .bottom){
            //            NavigationStack{
            //                VStack(spacing: 10) {
            //                    Divider()
            //                    HStack(spacing: 10) {
            //                            VStack(spacing: 4) {
            //                                NavigationLink(destination: DisplayView()){
            //                                    VStack{
            //                                        Image(systemName: "house.fill")
            //                                            .imageScale(.large)
            //                                            .frame(height: 40)
            //                                            .clipped()
            //                                        Text("Home")
            //                                            .font(.caption2)
            //                                    }
            //                            }
            //
            //                            .frame(maxWidth: .infinity)
            //                            .clipped()
            //                            .frame(height: 60)
            //                            .clipped()
            //                            .foregroundColor(.secondary)
            //                        }
            //                        NavigationLink(destination: RoomCaptureScanView()){
            //                            VStack{
            //                                Image(systemName: "map.circle.fill")
            //                                    .resizable()
            //                                    .frame(width:50, height: 50)
            //                                    .clipped()
            //                            }
            //                    }
            //
            //                    .frame(maxWidth: .infinity)
            //                    .clipped()
            //                    .frame(height: 60)
            //                    .clipped()
            //                    .foregroundColor(.secondary)
            //
            //                        NavigationLink(destination: Profile()){
            //                            VStack{
            //                                Image(systemName: "person.fill")
            //                                    .imageScale(.large)
            //                                    .frame(height: 40)
            //                                    .clipped()
            //                                Text("profile")
            //                                    .font(.caption2)
            //                            }
            //                    }
            //
            //                    .frame(maxWidth: .infinity)
            //                    .clipped()
            //                    .frame(height: 60)
            //                    .clipped()
            //                    .foregroundColor(.secondary)
            //                    }
            //                    .padding(.horizontal, 15)
            //                    .padding(.top, 5)
            //                }
            //                .frame(height: 90, alignment: .top)
            //                .clipped()
            //                .background {
            //                    Rectangle()
            //                        .fill(.clear)
            //                        .background(Material.bar)
            //                }
            //            }
            //        }
            
        }
        TabView {
                        HomeView().tabItem {
                            NavigationLink(destination: HomeView()) {
                                Image(systemName: "car")
                                Text("Trips") }.tag(1)
                        }
                        DisplayView().tabItem {
                            NavigationLink(destination: DisplayView()) {
                                Image(systemName: "photo")
                                Text("Places") }.tag(2)
                            
                        }
                        .frame(minWidth: 485, idealWidth: -480, maxWidth:-700,minHeight: 0, idealHeight: 450, maxHeight:-100,alignment: .center)
            AlertView().tabItem {
                NavigationLink(destination: AlertView()) {
                                Image(systemName: "person.circle")
                                Text("Places") }.tag(3)
                            
                
            }
                    }
    }
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            WelcomeView()
        }
    }
}
