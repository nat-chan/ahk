# HHKB(JIS配列)でMac風かな/英数、親指シフト

## 進捗

☑ ᔓ   -> 英数(IME off)  
☑ ⟳   -> かな(IME on)  
☐ NICOLA配列  
☐ [親指シフト用キーキャップ](http://shiology.com/shiology/2012/06/2778-120620-b56.html)

<!-- {{{TABLE -->
<table> <tr>
<td colspan=1>Tab</td>
<td colspan=2>Q</td>
<td colspan=2>W</td>
<td colspan=2>E</td>
<td colspan=2>R</td>
<td colspan=2>T</td>
<td colspan=2>Y</td>
<td colspan=2>U</td>
<td colspan=2>I</td>
<td colspan=2>O</td>
<td colspan=2>P</td>
<td colspan=1>@</td>
<td colspan=1>[</td>
<td colspan=1> </td>
<td rowspan=2>⏎ </td>

</tr><tr>
<td colspan=2>Ctrl</td>
<td colspan=2>A</td>
<td colspan=2>S</td>
<td colspan=2>D</td>
<td colspan=2>F</td>
<td colspan=2>G</td>
<td colspan=2>H</td>
<td colspan=2>J</td>
<td colspan=2>K</td>
<td colspan=2>L</td>
<td colspan=2>;</td>
<td colspan=1>:</td>
<td colspan=1>]</td>

</tr><tr>
<td colspan=3>Shift</td>
<td colspan=2>Z</td>
<td colspan=2>X</td>
<td colspan=2>C</td>
<td colspan=2>V</td>
<td colspan=2>B</td>
<td colspan=2>N</td>
<td colspan=2>M</td>
<td colspan=2>,</td>
<td colspan=2>.</td>
<td colspan=1>/</td>
<td colspan=1>\</td>
<td colspan=1>↑</td>
<td colspan=1>⇧</td>
</tr><tr>
<td colspan=2>Fn</td>
<td colspan=2>H</td>
<td colspan=2>◊</td>
<td colspan=2>Alt</td>
<td colspan=2>ᔓ</td>
<td colspan=4> </td>
<td colspan=2>⟳</td>
<td colspan=2>Kana</td>
<td colspan=2>Alt</td>
<td colspan=2>Fn</td>
<td colspan=1>←</td>
<td colspan=1>↓</td>
<td colspan=1>→</td>
</tr></table>
<!-- }}} -->

## 前提

* インストール不要
* 管理者権限必要なし

## 雑記

CapLockはRemapできないのでハードでなんとかする。
>CapsLockやかな(カナロック)などのLock系のキーへのキー割り当ては上手く行かない。
>これはOSのローカライズ段階で発生してる問題であり、
>フック系のキーカスタマイズユー ティリティ全般で発生する。
>AutoHotkeyがキーを認識する前の段階で、
>OS側がキー Up/Down情報を変更してしまっているためである。
>(※ちなみに日本語キーボードには単独のCapsLockキーは無い)これを解決するには、
>AutoHotkeyよりも上流でキー信号を捕らえて何らかの加工をする必要がある。
>具体的には、以下のいずれかの方法を行う。
>レジストリに手を加えキー信号のリマップを行う。
>AutoHotkeyよりも上流(ドライバレベル)でのキーアサインが可能なユーティリティ
>(窓使いの憂鬱,のどか等)を利用する。
[引用元](https://sites.google.com/site/autohotkeyjp/reference/misc/Trouble)

[AutoHotkeyJP](http://ahkwiki.net/Top)

あいうえお  　　 ヴ  
かきくけこ  がぎぐげご  
さしすせそ  ざじずぜぞ  
たちつてと  だぢづでど  
なにぬねの              
はひふへほ  ばびぶべぼ  ぱぴぷぺぽ  
まみむめも              
や　ゆ　よ  ゃ　ゅ　ょ  
わ　ん　を  ゎ          

単　　　　  同　　　　  逆  
あいうえお  ぁぃぅぇぉ  　　ヴ　　  
かきくけこ  がぎぐげご  なにぬねの  
さしすせそ  ざじずぜぞ  まみむめも  
たちつてと  だぢづでど  ← ↓ ↑ → っ  
はひふへほ  ばびぶべぼ  ぱぴぷぺぽ  
やゆよ、。  ゃゅょ　　  わをん　　  

あ行 か行  
さ行 た行  
は行 や行  

飛鳥カナ
新下駄 中指シフト
月
