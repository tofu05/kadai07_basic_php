
import SwiftUI

struct ContentView: View {
    @State private var message: String = "" // 状態を管理する変数
    
    var body: some View {
        VStack {
            Spacer() // 画面上部に空白を確保
            Text(message)
                .font(.headline)
                .foregroundColor(.red)
                .padding()
            ZStack { // 下のメニューバー
                Rectangle()
                    .frame(height: 80) // メニューバーの高さを固定
                    .foregroundColor(Color("BGGray")) // 背景色を設定
                
                HStack { // アイコン
                    Button(action: { message = "ボタン1を押したよ" }) {
                        VStack {
                            Image(systemName: "menucard.fill")
                                .resizable()
                                .scaledToFit() // アスペクト比を保ちながらアイコンのサイズ変更
                                .frame(width: 20, height: 20) // アイコンサイズ
                                .padding(.bottom, 0) // テキストとの間隔を調整
                            Text("単語帳")
                                .font(.system(size: 14))
                        }
                        .frame(width: 60, height: 60) // ボタンのサイズを統一
                        .foregroundColor(Color("BGblue"))
                        .cornerRadius(10) // ボタン全体を丸くする
                    }
                    Button(action: { message = "ボタン2を押したよ" }) {
                        VStack {
                            Image(systemName: "square.and.pencil")
                                .resizable()
                                .scaledToFit() // アスペクト比を保ちながらアイコンのサイズ変更
                                .frame(width: 20, height: 20) // アイコンサイズ
                                .padding(.bottom, 0) // テキストとの間隔を調整
                            Text("編集")
                                .font(.system(size: 14))
                        }
                        .frame(width: 60, height: 60) // ボタンのサイズを統一
                        .foregroundColor(Color("BGblue"))
                        .cornerRadius(10) // ボタン全体を丸くする
                    }
                    Button(action: { message = "ボタン3を押したよ" }) {
                        ZStack {
                            Circle()
                                .fill(Color("BGblue"))
                                .frame(width:50, height: 50)
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFit() // アスペクト比を保ちながらアイコンのサイズ変更
                                .frame(width: 20, height: 20) // アイコンサイズ
                        }
                        .frame(width: 60, height: 60) // ボタンのサイズを統一
                        .foregroundColor(Color("BGGray"))
                        .cornerRadius(10) // ボタン全体を丸くする
                    }
                    Button(action: { message = "ボタン4を押したよ" }) {
                        VStack {
                            Image(systemName: "chart.bar.xaxis")
                                .resizable()
                                .scaledToFit() // アスペクト比を保ちながらアイコンのサイズ変更
                                .frame(width: 20, height: 20) // アイコンサイズ
                                .padding(.bottom, 0) // テキストとの間隔を調整
                            Text("学習状況")
                                .font(.system(size: 14))
                        }
                        .frame(width: 60, height: 60) // ボタンのサイズを統一
                        .foregroundColor(Color("BGblue"))
                        .cornerRadius(10) // ボタン全体を丸くする
                    }
                    Button(action: { message = "ボタン5を押したよ" }) {
                        VStack {
                            Image(systemName: "gear")
                                .resizable()
                                .scaledToFit() // アスペクト比を保ちながらアイコンのサイズ変更
                                .frame(width: 20, height: 20) // アイコンサイズ
                                .padding(.bottom, 0) // テキストとの間隔を調整
                            Text("設定")
                                .font(.system(size: 14))
                        }
                        .frame(width: 60, height: 60) // ボタンのサイズを統一
                        .foregroundColor(Color("BGblue"))
                        .cornerRadius(10) // ボタン全体を丸くする
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom) // 安全領域を無視して背景を画面下部に固定
    }
}

#Preview {
    ContentView()
}
