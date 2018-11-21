;このファイルの改行コードはLFだが、複文を1行にするためCRを埋め込んである
#Include IME.ahk

sc07B::IME_SET(0)
sc079::IME_SET(1)

#If IME_GET() and !GetKeyState(Ctrl) and !GetKeyState(Alt) and !GetKeyState(Shift)
        q::send .         w::send ka        e::send ta        r::send ko             t::send sa 
sc07B & q::send lasc07B & w::send e sc07B & e::send risc07B & r::send lyasc07B &     t::send re 
sc079 & q::return sc079 & w::send gasc079 & e::send dasc079 & r::send go sc079 &     t::send za 
        y::send ra        u::send ti        i::send ku        o::send tu             p::return              @::send `,        [::return
sc07B & y::send pasc07B & u::send disc07B & i::send gusc07B & o::send du sc07B &     p::send pi sc07B &     @::return sc07B & [::return
sc079 & y::send yosc079 & u::send nisc079 & i::send rusc079 & o::send ma sc079 &     p::send le sc079 &     @::return sc079 & [::return
        a::send u         s::send si        d::send te        f::send ke             g::send se 
sc07B & a::send wosc07B & s::send a sc07B & d::send nasc07B & f::send lyusc07B &     g::send mo 
sc079 & a::send vusc079 & s::send jisc079 & d::send desc079 & f::send ge sc079 &     g::send ze 
        h::send ha        j::send to        k::send ki        l::send i          sc027::send nn         sc028::return         ]::return
sc07B & h::send basc07B & j::send dosc07B & k::send gisc07B & l::send po sc07B & sc027::return  sc07B & sc028::return sc07B & ]::return
sc079 & h::send misc079 & j::send o sc079 & k::send nosc079 & l::send lyosc079 & sc027::send xtusc079 & sc028::return sc079 & ]::return
        z::return         x::send hi        c::send su        v::send fu             b::send he 
sc07B & z::send lusc07B & x::send - sc07B & c::send rosc07B & v::send ya sc07B &     b::send li 
sc079 & z::return sc079 & x::send bisc079 & c::send zusc079 & v::send bu sc079 &     b::send be 
        n::send me        m::send so        ,::send ne        .::send ho             /::send /          sc073::return 
sc07B & n::send pusc07B & m::send zosc07B & ,::send pesc07B & .::send bo sc07B &     /::return  sc07B & sc073::return 
sc079 & n::send nusc079 & m::send yusc079 & ,::send musc079 & .::send wa sc079 &     /::send lo sc079 & sc073::return 
#If
