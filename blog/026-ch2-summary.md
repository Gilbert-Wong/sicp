SICP 読書ノート - #26 第2章 データによる抽象の構築 - まとめ
======================================

最後は端折ってしまいましたが、長い長い2章がようやく終わりましたので、
自分なりにまとめたいと思います。(1章でもまとめておけばよかったorz)


ところで、この章で学ぶべきものは何でしょうか？

そこで「§2.1.3 データとは何か」に立ち戻りたいと思います。

> ... ところでデータ(data)とは正しくは何なのか. 「与えられた選択子と構成子で実装されているもの」というのでは不十分だ.
> (中略)
>  一般に, データは選択子と構成子と, これらの手続きを有効な表現とするために満たすべき条件とで定義されると思ってよい.


さらに注釈にはデータの形式化として2つの方法が述べてあります。

>  驚くべきことにこの考えを厳密に形式化するのは非常に難しい. 形式化に二つの方法がある.一つは.... 抽象モデル(abstract model)の方法として知られている.
> (中略)
> 一般に, 抽象モデルは新しい種類のデータオブジェクトを, 前もって定義されたデータオブジェクトの型を使って定義する.
> (中略)
> もう一つの方法は... 代数的仕様(algebraic specification)という. これはわれわれの「条件」に対応する公理でシステムの行動を規定する抽象代数システムの要素として「手続き」を見, データオブジェクトに対する表明を検査するのに抽象代数の手法を使う.


データとは、単なる数字や文字列のような値や配列を指すのではなく、
何らかのモデルを選択子と構成子というインターフェースで抽象化したものと言えます。
いわばオブジェクト指向言語のオブジェクト(クラス/インスタンス)の方が
イメージとしては近いかと思います。

データの内部を構築する手段としてconsやlistおよび閉包性を学びましたし、
抽象化のためのデータと外界とのインタフェースとして、
データ主導やメッセージパッシングを学びました。
しかも、データを抽象化する手段として一般的にそれらが有用であると同時に、
決して銀の弾丸ではないという素晴らしいオマケつきです。これは嬉しかった。

もちろん公認インターフェースで学んだ map、filter、accumulate のように
データをパイプライン処理のように扱う技法も重要だと思います。
（これを使いこなせないと、いたずらにループを入れ子で回して数え上げる手法に
頼らざるをえないので）

SICPを読むまで関数プログラミングを全く知らなかったのですが、
一言でいえばデータストリーミングですね。
(というか知らなかったというより、これが関数プログラミングという
認識がなかったという方が正しいかも)

しかし、選択子といっても2章ではgetterメソッドしか扱ってきませんでした。
すなわちこれまで扱ったオブジェクトは基本的にmutableでした。

3章では早々にsetterメソッドを扱うようです。
setterメソッドを扱うということはオブジェクトはimmutableであり、
その局所状態を考える必要があります。局所状態が絡みあうとプログラムは
急激に複雑になりますが、それに対してどのような技法が用意されているのか
楽しみでワクワクしています。

3章がいまからとても楽しみです。

--------------------------------

※「SICP読書ノート」の目次は[こちら](/entry/sicp/index)