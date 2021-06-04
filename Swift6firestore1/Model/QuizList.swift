//
//  SheffQuizList.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/26.
//

import Foundation

class QuizList{
    
    var sheffList = [QuizModel]()
    
    func sheffListFunc(){
        
        sheffList.append(QuizModel(Text: "給食を作るための道具は全部で◯個", A: "10個", B: "15個", Answer: "A", Explanation: "全部で10個の道具を使って給食を作っているんだって！みんなが家でよく見るお鍋意外にも、食事を取り分けるための道具もあるみたい！", Interest: "道具"))
        sheffList.append(QuizModel(Text: "給食を作るためには、◯年間修行をしなければいけない", A: "10", B: "100", Answer: "B", Explanation: "まずは100年生きることが大切なんだね！", Interest: "キャリアプラン"))
    }
    
    var teacherList = [QuizModel]()

    func teacherListFunc(){

        teacherList.append(QuizModel(Text: "先生のやりがい第一位は、◯◯です。", A: "子どもの成長", B: "とにかく子どもが好き", Answer: "A", Explanation: "子どもが好きな人が多いかと思いきや実はそうじゃない！子どもの成長が見れることにやりがいを感じているみたい！", Interest: "教育"))
        teacherList.append(QuizModel(Text: "塾の先生の一番の仕事は◯◯です", A: "子どもに勉強を教える！", B: "面談！", Answer: "B", Explanation: "面談で子どもの学習進捗状況についてヒアリングをして、こうすればどうですか？と提案することが、一番の仕事見たい！", Interest: "コンサル"))
    }
    
    var medicalList = [QuizModel]()

    func medicalListFunc(){

        medicalList.append(QuizModel(Text: "医者のやりがい第一位は、◯◯です。", A: "人が健康でいること", B: "人のためになれていること", Answer: "A", Explanation: "やっぱり、人が健康でいて欲しい！という気持ちでお医者さんは働いているんだね！人のためになれていること！というのは、第3位でした！", Interest: "医療"))
        medicalList.append(QuizModel(Text: "医者が1日の仕事の中で一番時間をかけている仕事は○◯です！", A: "診察", B: "手術", Answer: "B", Explanation: "たくさん手術をすることで、多くの人を救っているんだね！", Interest: "医療"))
    }
    
    var gardenList = [QuizModel]()

    func gardenListFunc(){

        gardenList.append(QuizModel(Text: "庭にいる虫が夜になると家の灯りなどに集まってくるのは、灯りを◯◯と勘違いしているから", A: "月", B: "白や黄色の花", Answer: "A", Explanation: "虫は、月の位置を頼りにして飛ぶ方向や高さのバランスをとっていると考えられています。月の光と勘違いして近づいている見たい", Interest: "生き物"))
        gardenList.append(QuizModel(Text: "家の庭は地下何メートルまで自分のもの？", A: "150m", B: "制限なし！", Answer: "B", Explanation: "法律上は、制限がない見たい！けど、例えばみんなのためのもの（地下鉄とか）がある場合は、これが優先される見たい！", Interest: "法律"))
    }
    
    var carpenterList = [QuizModel]()

    func carpenterListFunc(){

        carpenterList.append(QuizModel(Text: "昔の大工さんは、釘を打つ前、釘を口で咥えていたようです！何故でしょうか？", A: "釘にさびを作り、凹凸をつけることで抜けにくくするため", B: "鉄の味が、美味しいから！", Answer: "A", Explanation: "昔は、釘にさびを作って抜けにくくするために加えていたんだね！今は、釘打ち機で打ち込んでいる見たい！", Interest: "建築"))
        carpenterList.append(QuizModel(Text: "法隆寺五重塔という建物は、1400年以上前に建築されたが、地震などで倒れたことは、ある？ない？", A: "ある", B: "ない", Answer: "B", Explanation: "今まで地震などで倒れたことはないんだって！これは、揺れを受け入れる構造に秘密がある見たい！", Interest: "建築"))
    }
    
    
    var furnitureList = [QuizModel]()

    func furnitureListFunc(){

        furnitureList.append(QuizModel(Text: "日本人の部屋は、海外に比べて明るい！と言われています。何故でしょうか？", A: "暗いことは、貧乏という印象があるから", B: "暗いことで、おばけが出るのを防ぐため", Answer: "A", Explanation: "戦前から戦後にかけて、灯り1つで生活している家庭がほとんどで、貧乏というイメージがついているからなんだって！", Interest: "インテリア"))
        furnitureList.append(QuizModel(Text: "部屋を広く見せるためには◯色の家具を使うとよい！", A: "黒", B: "白", Answer: "B", Explanation: "黒は、膨張色といい、大きく見える性質があるみたい！。白は逆に、小さく見える性質があるみたい！家具を小さく見せて部屋を大きく見せるんだね！", Interest: "インテリア"))
    }
    
    var athleteList = [QuizModel]()

    func athleteListFunc(){

        athleteList.append(QuizModel(Text: "アスリートにとって絶対必要な素質は？", A: "負けず嫌い", B: "マイペースさ", Answer: "A", Explanation: "悔しさを糧になぜ負けたのかを考えることが大切見たい！", Interest: "アスリート"))
        athleteList.append(QuizModel(Text: "アスリートが筋トレをする理由は？", A: "体を鍛えて強そうに見せるため", B: "怪我の予防", Answer: "B", Explanation: "怪我予防なんだね！スポーツは、決まった動きをメインで使うことが多いんだって。結果、筋力のバランスが悪くなってしまって、怪我に繋がりやすくなるみたい！", Interest: "アスリート"))
    }
    
    var toolList = [QuizModel]()

    func toolListFunc(){

        toolList.append(QuizModel(Text: "ゴルフボールの表面がボコボコなのはなぜ？", A: "ボールの飛距離を伸ばすため", B: "ボールが転がりすぎるのを防ぐため", Answer: "A", Explanation: "ゴルフボールの表面にある小さなくぼみはディンプルと呼ばれるもので、あのくぼみが空気抵抗をうまくコントロールして飛距離を伸ばすことができるんだって。", Interest: "道具"))
        toolList.append(QuizModel(Text: "水泳選手が着用している水着は、ある生き物からヒントを得て開発されています。何でしょう？", A: "クジラ", B: "カジキマグロ", Answer: "B", Explanation: "カジキマグロやサメの肌からもヒントを得て改良が重ねられているようです。水着以外にも、ランニングシューズなども軽量化など進化が盛ん見たいです！", Interest: "道具"))
    }
    
    var refreeList = [QuizModel]()

    func refreeListFunc(){

        refreeList.append(QuizModel(Text: "野球の試合で打順が違うことに審判が気づいた場合反則？反則じゃない？", A: "反則じゃない", B: "反則", Answer: "A", Explanation: "反則じゃないんだね！ただ、相手チームが打順が違うことに気づいて審判に申告した場合は、反則になるみたい！", Interest: "審判"))
        refreeList.append(QuizModel(Text: "サッカーの試合で1チームで何人が退場したら試合終了になるの？", A: "5人", B: "無制限", Answer: "A", Explanation: "サッカーでは、退場になった場合、別の選手を代わりに入れることはできないんだって！基底では、5人目が退場になった時点で負けになる見たい！", Interest: "審判"))
    }
    
    var bookList = [QuizModel]()

    func bookListFunc(){

        bookList.append(QuizModel(Text: "本に間違えた文字や、内容がないかどうかチェックをする職業がある。ほんと？うそ？", A: "ほんと", B: "うそ", Answer: "A", Explanation: "ほんとなんだね！校正者という職業なんだって！間違えた文字は勿論、読み手にとって不快感な印象を与える表現がないかなど細かくチェックしているんだって！", Interest: "本"))
        bookList.append(QuizModel(Text: "小説家の中には自分の作品を自分のお金で売っている人がいる。ほんと？うそ？", A: "ほんと", B: "うそ", Answer: "B", Explanation: "新人小説家の中には自分のお金で本を売る人もいるみたい！他には、コンテストでの入賞や出版社への作品の持ち込みなどが多いみたい！。", Interest: "本"))
    }
    
    
    var apparellList = [QuizModel]()

    func apparellListFunc(){

        apparellList.append(QuizModel(Text: "ジーパンに青色が多い理由は？", A: "虫除けのため", B: "おしゃれだから", Answer: "A", Explanation: "ジーパンは元々山などで働く人が着ていた服なんだって！山には虫が多く、虫除けの成分が入っている青色のインディゴという液でジーパンを染めたことがジーパンが青い理由なんだって！", Interest: "ファッション"))
        apparellList.append(QuizModel(Text: "ファッションの流行りはどこからやってくる？", A: "イギリス", B: "ファッション業界の人が決めている", Answer: "B", Explanation: "ファッション業界には国際流行色委員会という国際的な組織があるんだって！ここが流行を決めているらしいよ！この組織には15の国が参加していて、日本もメンバーなんだって！", Interest: "ファッション"))
    }
    
    var toyList = [QuizModel]()

    func toyListFunc(){

        toyList.append(QuizModel(Text: "プラレールの部品の種類は全部で何種類？", A: "28種類", B: "35種類", Answer: "A", Explanation: "28種類あるレールパーツを組み合わせることでいろんなことができる見たい！ちなみに一番小さい丸のコースは、直径46.5cmと小さいテーブルに乗るくらい見たい！", Interest: "おもちゃ"))
        toyList.append(QuizModel(Text: "ゲームを作るのにかかる時間は長くてどれくらい？", A: "3ヶ月", B: "7年", Answer: "B", Explanation: "7年って長いね！3ヶ月は、相当早い方みたい！どんなゲームにするか考えるのに5年かかる場合もあるんだって！", Interest: "おもちゃ"))
    }
    
}
