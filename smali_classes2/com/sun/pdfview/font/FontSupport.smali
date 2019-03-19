.class public Lcom/sun/pdfview/font/FontSupport;
.super Ljava/lang/Object;


# static fields
.field public static final isoLatin1Encoding:[I

.field public static final macExtras:[Ljava/lang/String;

.field public static final macRomanEncoding:[I

.field public static final standardEncoding:[I

.field public static final stdNames:[Ljava/lang/String;

.field static final stdValues:[Ljava/lang/String;

.field public static final type1CExpertCharset:[I

.field public static final type1CExpertSubCharset:[I

.field public static final winAnsiEncoding:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x8

    const/16 v6, 0x56

    const/16 v5, 0x41

    const/4 v4, 0x1

    const/16 v3, 0x7d

    const/16 v0, 0x187

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".notdef"

    aput-object v2, v0, v1

    const-string v1, "space"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "exclam"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "quotedbl"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "numbersign"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "dollar"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "percent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ampersand"

    aput-object v2, v0, v1

    const-string v1, "quoteright"

    aput-object v1, v0, v7

    const/16 v1, 0x9

    const-string v2, "parenleft"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "parenright"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "asterisk"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "plus"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "comma"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hyphen"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "period"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "slash"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "zero"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "one"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "two"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "three"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "four"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "five"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "six"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "seven"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "eight"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "nine"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "colon"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "semicolon"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "less"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "equal"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "greater"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "question"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "at"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "bracketleft"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "backslash"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "bracketright"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "asciicircum"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "underscore"

    aput-object v2, v0, v1

    const-string v1, "quoteleft"

    aput-object v1, v0, v5

    const/16 v1, 0x42

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "t"

    aput-object v2, v0, v1

    const-string v1, "u"

    aput-object v1, v0, v6

    const/16 v1, 0x57

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "braceleft"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "bar"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "braceright"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "asciitilde"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "exclamdown"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "cent"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "sterling"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "fraction"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "yen"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "florin"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "section"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "currency"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "quotesingle"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "quotedblleft"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "guillemotleft"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "guilsinglleft"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "guilsinglright"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "fl"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "endash"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "dagger"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "daggerdbl"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "periodcentered"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "paragraph"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "bullet"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "quotesinglbase"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "quotedblbase"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "quotedblright"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "guillemotright"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "ellipsis"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "perthousand"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "questiondown"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "grave"

    aput-object v2, v0, v1

    const-string v1, "acute"

    aput-object v1, v0, v3

    const/16 v1, 0x7e

    const-string v2, "circumflex"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "tilde"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "macron"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "breve"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "dotaccent"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "dieresis"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "ring"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "cedilla"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "hungarumlaut"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "ogonek"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "caron"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "emdash"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "AE"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "ordfeminine"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Lslash"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Oslash"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "OE"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "ordmasculine"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "ae"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "dotlessi"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "lslash"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "oslash"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "oe"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "germandbls"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "onesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "logicalnot"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "mu"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "trademark"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "Eth"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "onehalf"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "plusminus"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "Thorn"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "onequarter"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "divide"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "brokenbar"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "degree"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "thorn"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "threequarters"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "twosuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "registered"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "minus"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "eth"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "multiply"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "threesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "copyright"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "Aacute"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "Acircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "Adieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "Agrave"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "Aring"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "Atilde"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "Ccedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "Eacute"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "Ecircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "Edieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "Egrave"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "Iacute"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "Icircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "Idieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "Igrave"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "Ntilde"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "Oacute"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "Ocircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "Odieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "Ograve"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "Otilde"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "Scaron"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "Uacute"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "Ucircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "Udieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "Ugrave"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "Yacute"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "Ydieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "Zcaron"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "aacute"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "acircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "adieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "agrave"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "aring"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "atilde"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "ccedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "eacute"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "ecircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "edieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "egrave"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "iacute"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "icircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "idieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "igrave"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "ntilde"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "oacute"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "ocircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "odieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "ograve"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "otilde"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "scaron"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "uacute"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "ucircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "udieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "ugrave"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "yacute"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "ydieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "zcaron"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "exclamsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "Hungarumlautsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "dollaroldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "dollarsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "ampersandsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "Acutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "parenleftsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "parenrightsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "twodotenleader"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "onedotenleader"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "zerooldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "oneoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "twooldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "threeoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "fouroldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "fiveoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "sixoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "sevenoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "eightoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "nineoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "commasuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "threequartersemdash"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "periodsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "questionsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "asuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "bsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "centsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "dsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "esuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "isuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "lsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "msuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "nsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "osuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "rsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "ssuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "tsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "ff"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "ffi"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "ffl"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "parenleftinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "parenrightinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "Circumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "hyphensuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "Gravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "Asmall"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "Bsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "Csmall"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "Dsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "Esmall"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "Fsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "Gsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "Hsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "Ismall"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "Jsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "Ksmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "Lsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "Msmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "Nsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "Osmall"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "Psmall"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "Qsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "Rsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "Ssmall"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "Tsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "Usmall"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "Vsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "Wsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "Xsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "Ysmall"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "Zsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "colonmonetary"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "onefitted"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "rupiah"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "Tildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "exclamdownsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "centoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "Lslashsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "Scaronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "Zcaronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "Dieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "Brevesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "Caronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "Dotaccentsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "Macronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "figuredash"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "hypheninferior"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "Ogoneksmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "Ringsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "Cedillasmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "questiondownsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "oneeighth"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "threeeighths"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "fiveeighths"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "seveneighths"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "onethird"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "twothirds"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "zerosuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "foursuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "fivesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "sixsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "sevensuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "eightsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "ninesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "zeroinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "oneinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "twoinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "threeinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "fourinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "fiveinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "sixinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "seveninferior"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "eightinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "nineinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "centinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "dollarinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "periodinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "commainferior"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "Agravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "Aacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "Acircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "Atildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "Adieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "Aringsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "AEsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "Ccedillasmall"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "Egravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "Eacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "Ecircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "Edieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "Igravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "Iacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "Icircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "Idieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "Ethsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "Ntildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "Ogravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string v2, "Oacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v2, "Ocircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "Otildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v2, "Odieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string v2, "OEsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string v2, "Oslashsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "Ugravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "Uacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string v2, "Ucircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "Udieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string v2, "Yacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "Thornsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string v2, "Ydieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v2, "001.000"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string v2, "001.001"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v2, "001.002"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "001.003"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, "Black"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, "Bold"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v2, "Book"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string v2, "Light"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v2, "Medium"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "Regular"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v2, "Roman"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, "Semibold"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/pdfview/font/FontSupport;->stdNames:[Ljava/lang/String;

    const/16 v0, 0x1a3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v1, " "

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "!"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "$"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "%"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "&"

    aput-object v2, v0, v1

    const-string v1, "\'"

    aput-object v1, v0, v7

    const/16 v1, 0x9

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "3"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "_"

    aput-object v2, v0, v1

    const-string v1, "`"

    aput-object v1, v0, v5

    const/16 v1, 0x42

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "t"

    aput-object v2, v0, v1

    const-string v1, "u"

    aput-object v1, v0, v6

    const/16 v1, 0x57

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "\u00a1"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "\u00a2"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "\u00a3"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "/fraction"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "\u00a5"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Fflorin"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "\u00a7"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "\u00a4"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "\u00b4quotesingle"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "\u201c"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "?guillemotleft"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "\u2039"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "\u203a"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "fl"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "--"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "\u2020"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "\u2021"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "\u00b7"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "\u00b6"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "\'quotesinglbase"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "\"quotedblbase"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "\"quotedblright"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "?guillemotright"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "...ellipsis"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "%perthousand"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "?questiondown"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "`grave"

    aput-object v2, v0, v1

    const-string v1, "\'acute"

    aput-object v1, v0, v3

    const/16 v1, 0x7e

    const-string v2, "^circumflex"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "~tilde"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "-macron"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "?breve"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "?dotaccent"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "?dieresis"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "oring"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "ccedilla"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, ":hungarumlaut"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "?ogonek"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, ",caron"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "---emdash"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "AE"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "aordfeminine"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "LLslash"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "OOslash"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "OE"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "oordmasculine"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "ae"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "idotlessi"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "llslash"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "ooslash"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "oe"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "Bgermandbls"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "1onesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "~logicalnot"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "?mu"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "(TM)trademark"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "?Eth"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "1/2"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "+/-"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "?Thorn"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "1/4"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "/divide"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "|brokenbar"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "*degree"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "?thorn"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "3/4"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "2twosuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "(R)"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "-minus"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "?eth"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "*multiply"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "3threesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "(C)"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "AAacute"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "AAcircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "AAdieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "AAgrave"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "AAring"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "AAtilde"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "CCcedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "EEacute"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "EEcircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "EEdieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "EEgrave"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "IIacute"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "IIcircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "IIdieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "IIgrave"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "NNtilde"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "OOacute"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "OOcircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "OOdieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "OOgrave"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "OOtilde"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "SScaron"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "UUacute"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "UUcircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "UUdieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "UUgrave"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "YYacute"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "YYdieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "ZZcaron"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "aaacute"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "aacircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "aadieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "aagrave"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "aaring"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "aatilde"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "cccedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "eeacute"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "eecircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "eedieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "eegrave"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "iiacute"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "iicircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "iidieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "iigrave"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "nntilde"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "ooacute"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "oocircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "oodieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "oograve"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "ootilde"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "sscaron"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "uuacute"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "uucircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "uudieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "uugrave"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "yyacute"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "yydieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "zzcaron"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "!exclamsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "?Hungarumlautsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "$dollaroldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "$dollarsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "&ampersandsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "\'Acutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "/parenleftsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "\\parenrightsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "?twodotenleader"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "?onedotenleader"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "0zerooldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "1oneoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "2twooldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "3threeoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "4fouroldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "5fiveoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "6sixoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "7sevenoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "8eightoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "9nineoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "\'commasuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "--threequartersemdash"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, ".periodsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "?questionsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "aasuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "bbsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "ccentsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "ddsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "eesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "iisuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "llsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "mmsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "nnsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "oosuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "rrsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "sssuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "ttsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "ff"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "ffi"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "ffl"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "\\parenleftinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "/parenrightinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "^Circumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "-hyphensuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "`Gravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "AAsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "BBsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "CCsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "DDsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "EEsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "FFsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "GGsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "HHsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "IIsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "JJsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "KKsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "LLsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "MMsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "NNsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "OOsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "PPsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "QQsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "RRsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "SSsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "TTsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "UUsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "VVsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "WWsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "XXsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "YYsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "ZZsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, ":colonmonetary"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "1onefitted"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "?rupiah"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "~Tildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "!exclamdownsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "ccentoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "LLslashsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "SScaronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "ZZcaronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "?Dieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "?Brevesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "^Caronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "?Dotaccentsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "?Macronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "--figuredash"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "-hypheninferior"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "?Ogoneksmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "oRingsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, ",Cedillasmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "?questiondownsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "1/8oneeighth"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "3/8threeeighths"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "5/8fiveeighths"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "7/8seveneighths"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "1/3onethird"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "2/3twothirds"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "0zerosuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "4foursuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "5fivesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "6sixsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "7sevensuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "8eightsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "9ninesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "0zeroinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "1oneinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "2twoinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "3threeinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "4fourinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "5fiveinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "6sixinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "7seveninferior"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "8eightinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "9nineinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "ccentinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "$dollarinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, ".periodinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, ",commainferior"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "AAgravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "AAacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "AAcircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "AAtildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "AAdieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "AAringsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "AEAEsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "CCcedillasmall"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "EEgravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "EEacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "EEcircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "EEdieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "IIgravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "IIacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "IIcircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "IIdieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "EthEthsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "NNtildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "OOgravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string v2, "OOacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v2, "OOcircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "OOtildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v2, "OOdieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string v2, "OEOEsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string v2, "OOslashsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "UUgravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "UUacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string v2, "UUcircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "UUdieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string v2, "YYacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "?Thornsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string v2, "YYdieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v2, "?001.000"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string v2, "?001.001"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v2, "?001.002"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "?001.003"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, " Black"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, " Bold"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v2, " Book"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string v2, " Light"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v2, " Medium"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, " Regular"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v2, " Roman"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, " Semibold"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const-string v2, "?NUL"

    aput-object v2, v0, v1

    const/16 v1, 0x188

    const-string v2, "?HT"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string v2, " LF"

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    const-string v2, " CR"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string v2, "?DLE"

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    const-string v2, "?DC1"

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    const-string v2, "?DC2"

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    const-string v2, "?DC3"

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    const-string v2, "?DC4"

    aput-object v2, v0, v1

    const/16 v1, 0x190

    const-string v2, "?RS"

    aput-object v2, v0, v1

    const/16 v1, 0x191

    const-string v2, "?US"

    aput-object v2, v0, v1

    const/16 v1, 0x192

    const-string v2, "!="

    aput-object v2, v0, v1

    const/16 v1, 0x193

    const-string v2, "?DEL"

    aput-object v2, v0, v1

    const/16 v1, 0x194

    const-string v2, "?infinity"

    aput-object v2, v0, v1

    const/16 v1, 0x195

    const-string v2, "<="

    aput-object v2, v0, v1

    const/16 v1, 0x196

    const-string v2, ">="

    aput-object v2, v0, v1

    const/16 v1, 0x197

    const-string v2, "?partialdiff"

    aput-object v2, v0, v1

    const/16 v1, 0x198

    const-string v2, "?summation"

    aput-object v2, v0, v1

    const/16 v1, 0x199

    const-string v2, "xproduct"

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    const-string v2, "?pi"

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    const-string v2, "?integral"

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    const-string v2, "?Omega"

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    const-string v2, "?radical"

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    const-string v2, "~="

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    const-string v2, "?Delta"

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    const-string v2, " nbspace"

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    const-string v2, "?lozenge"

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    const-string v2, "?apple"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/pdfview/font/FontSupport;->stdValues:[Ljava/lang/String;

    const/16 v0, 0xa5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/pdfview/font/FontSupport;->type1CExpertCharset:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/pdfview/font/FontSupport;->type1CExpertSubCharset:[I

    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NUL"

    aput-object v2, v0, v1

    const-string v1, "HT"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "LF"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CR"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DLE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DC1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DC2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DC3"

    aput-object v2, v0, v1

    const-string v1, "DC4"

    aput-object v1, v0, v7

    const/16 v1, 0x9

    const-string v2, "RS"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "US"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "notequal"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "DEL"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "infinity"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "lessequal"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "greaterequal"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "partialdiff"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "summation"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "product"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "pi"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "integral"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Omega"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "radical"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "approxequal"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Delta"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "nbspace"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "lozenge"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "apple"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/pdfview/font/FontSupport;->macExtras:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sun/pdfview/font/FontSupport;->macRomanEncoding:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const/16 v1, 0x20

    aput v4, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x27

    aput v7, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x22

    aput v1, v0, v5

    const/16 v1, 0x42

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x32

    aput v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x34

    aput v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0x37

    aput v1, v0, v6

    const/16 v1, 0x57

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x39

    aput v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x3b

    aput v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x3c

    aput v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x3d

    aput v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x3e

    aput v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x3f

    aput v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x60

    aput v5, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x42

    aput v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x43

    aput v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x44

    aput v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x45

    aput v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x46

    aput v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x47

    aput v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x48

    aput v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x49

    aput v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x4a

    aput v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x4b

    aput v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x4c

    aput v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x4d

    aput v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x4e

    aput v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x4f

    aput v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x50

    aput v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x53

    aput v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x55

    aput v2, v0, v1

    const/16 v1, 0x75

    aput v6, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x57

    aput v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x58

    aput v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x59

    aput v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x5a

    aput v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x5b

    aput v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x5c

    aput v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x5d

    aput v2, v0, v1

    const/16 v1, 0x5e

    aput v1, v0, v3

    const/16 v1, 0x7e

    const/16 v2, 0x5f

    aput v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x91

    aput v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0x7c

    aput v2, v0, v1

    const/16 v1, 0x92

    aput v3, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x7e

    aput v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x7f

    aput v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, 0x82

    aput v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x83

    aput v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x84

    aput v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x85

    aput v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x87

    aput v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x88

    aput v2, v0, v1

    const/16 v1, 0xa0

    aput v4, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x60

    aput v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x61

    aput v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x62

    aput v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x67

    aput v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x64

    aput v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0xa0

    aput v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x66

    aput v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x83

    aput v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0xaa

    aput v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x8b

    aput v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x6a

    aput v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0xa5

    aput v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0xa1

    aput v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x9c

    aput v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0xa4

    aput v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0xa9

    aput v2, v0, v1

    const/16 v1, 0xb4

    aput v3, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0x98

    aput v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x73

    aput v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x72

    aput v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x85

    aput v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x96

    aput v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x8f

    aput v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x78

    aput v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x9e

    aput v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x9b

    aput v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0xa3

    aput v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x7b

    aput v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0xae

    aput v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0xab

    aput v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0xac

    aput v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0xb0

    aput v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0xad

    aput v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0xaf

    aput v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x8a

    aput v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0xb1

    aput v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0xb2

    aput v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0xb9

    aput v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0xb6

    aput v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0xb7

    aput v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0xb8

    aput v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x9a

    aput v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0xba

    aput v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0xbe

    aput v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0xbb

    aput v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0xbc

    aput v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0xbf

    aput v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0xbd

    aput v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0xa8

    aput v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x8d

    aput v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0xc4

    aput v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0xc1

    aput v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0xc2

    aput v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0xc5

    aput v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x9d

    aput v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0xcb

    aput v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0xc8

    aput v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0xc9

    aput v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0xcd

    aput v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0xca

    aput v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0xcc

    aput v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x90

    aput v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0xce

    aput v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0xd2

    aput v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0xcf

    aput v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0xd0

    aput v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0xd1

    aput v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0xd6

    aput v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0xd3

    aput v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0xd4

    aput v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0xd5

    aput v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0xa7

    aput v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0xd7

    aput v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0xdb

    aput v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0xd8

    aput v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0xd9

    aput v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0xdc

    aput v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0xda

    aput v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x9f

    aput v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x93

    aput v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0xe1

    aput v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0xde

    aput v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0xdf

    aput v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0xe0

    aput v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0xe2

    aput v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0xa2

    aput v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0xe3

    aput v2, v0, v1

    sput-object v0, Lcom/sun/pdfview/font/FontSupport;->isoLatin1Encoding:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x7c

    aput v2, v0, v1

    aput v3, v0, v4

    const/4 v1, 0x2

    const/16 v2, 0x7e

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x7f

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x80

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x81

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x82

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x83

    aput v2, v0, v1

    const/16 v1, 0x84

    aput v1, v0, v7

    const/16 v1, 0x9

    const/16 v2, 0x85

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x87

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x88

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x91

    aput v2, v0, v1

    const/16 v1, 0x20

    aput v4, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x27

    aput v7, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x22

    aput v1, v0, v5

    const/16 v1, 0x42

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x32

    aput v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x34

    aput v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0x37

    aput v1, v0, v6

    const/16 v1, 0x57

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x39

    aput v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x3b

    aput v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x3c

    aput v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x3d

    aput v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x3e

    aput v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x3f

    aput v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x60

    aput v5, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x42

    aput v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x43

    aput v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x44

    aput v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x45

    aput v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x46

    aput v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x47

    aput v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x48

    aput v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x49

    aput v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x4a

    aput v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x4b

    aput v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x4c

    aput v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x4d

    aput v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x4e

    aput v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x4f

    aput v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x50

    aput v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x53

    aput v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x55

    aput v2, v0, v1

    const/16 v1, 0x75

    aput v6, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x57

    aput v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x58

    aput v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x59

    aput v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x5a

    aput v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x5b

    aput v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x5c

    aput v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x5d

    aput v2, v0, v1

    const/16 v1, 0x5e

    aput v1, v0, v3

    const/16 v1, 0x7e

    const/16 v2, 0x5f

    aput v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x75

    aput v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x65

    aput v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x76

    aput v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x70

    aput v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x71

    aput v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x7a

    aput v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0xc0

    aput v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x6b

    aput v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x8e

    aput v2, v0, v1

    const/16 v1, 0x91

    aput v5, v0, v1

    const/16 v1, 0x92

    aput v7, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x77

    aput v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x74

    aput v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x6f

    aput v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, 0x89

    aput v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x99

    aput v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0xdd

    aput v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x6c

    aput v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x94

    aput v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0xc6

    aput v2, v0, v1

    const/16 v1, 0xa0

    aput v4, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x60

    aput v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x61

    aput v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x62

    aput v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x67

    aput v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x64

    aput v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0xa0

    aput v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x66

    aput v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x83

    aput v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0xaa

    aput v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x8b

    aput v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x6a

    aput v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0xa5

    aput v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0xa1

    aput v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x9c

    aput v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0xa4

    aput v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0xa9

    aput v2, v0, v1

    const/16 v1, 0xb4

    aput v3, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0x98

    aput v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x73

    aput v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x72

    aput v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x85

    aput v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x96

    aput v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x8f

    aput v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x78

    aput v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x9e

    aput v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x9b

    aput v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0xa3

    aput v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x7b

    aput v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0xae

    aput v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0xab

    aput v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0xac

    aput v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0xb0

    aput v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0xad

    aput v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0xaf

    aput v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x8a

    aput v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0xb1

    aput v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0xb2

    aput v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0xb9

    aput v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0xb6

    aput v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0xb7

    aput v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0xb8

    aput v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x9a

    aput v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0xba

    aput v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0xbe

    aput v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0xbb

    aput v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0xbc

    aput v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0xbf

    aput v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0xbd

    aput v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0xa8

    aput v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x8d

    aput v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0xc4

    aput v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0xc1

    aput v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0xc2

    aput v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0xc5

    aput v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x9d

    aput v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0xcb

    aput v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0xc8

    aput v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0xc9

    aput v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0xcd

    aput v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0xca

    aput v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0xcc

    aput v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x90

    aput v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0xce

    aput v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0xd2

    aput v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0xcf

    aput v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0xd0

    aput v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0xd1

    aput v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0xd6

    aput v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0xd3

    aput v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0xd4

    aput v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0xd5

    aput v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0xa7

    aput v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0xd7

    aput v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0xdb

    aput v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0xd8

    aput v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0xd9

    aput v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0xdc

    aput v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0xda

    aput v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x9f

    aput v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x93

    aput v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0xe1

    aput v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0xde

    aput v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0xdf

    aput v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0xe0

    aput v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0xe2

    aput v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0xa2

    aput v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0xe3

    aput v2, v0, v1

    sput-object v0, Lcom/sun/pdfview/font/FontSupport;->winAnsiEncoding:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const/16 v1, 0x20

    aput v4, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x27

    aput v7, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x22

    aput v1, v0, v5

    const/16 v1, 0x42

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x32

    aput v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x34

    aput v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0x37

    aput v1, v0, v6

    const/16 v1, 0x57

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x39

    aput v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x3b

    aput v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x3c

    aput v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x3d

    aput v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x3e

    aput v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x3f

    aput v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x60

    aput v5, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x42

    aput v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x43

    aput v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x44

    aput v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x45

    aput v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x46

    aput v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x47

    aput v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x48

    aput v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x49

    aput v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x4a

    aput v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x4b

    aput v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x4c

    aput v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x4d

    aput v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x4e

    aput v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x4f

    aput v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x50

    aput v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x53

    aput v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x55

    aput v2, v0, v1

    const/16 v1, 0x75

    aput v6, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x57

    aput v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x58

    aput v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x59

    aput v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x5a

    aput v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x5b

    aput v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x5c

    aput v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x5d

    aput v2, v0, v1

    const/16 v1, 0x5e

    aput v1, v0, v3

    const/16 v1, 0x7e

    const/16 v2, 0x5f

    aput v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x60

    aput v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x61

    aput v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x62

    aput v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x63

    aput v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x64

    aput v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x65

    aput v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x66

    aput v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x67

    aput v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x68

    aput v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x6a

    aput v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x6b

    aput v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x6c

    aput v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x6d

    aput v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x6e

    aput v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x6f

    aput v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x70

    aput v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x71

    aput v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0x72

    aput v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x73

    aput v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x74

    aput v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x75

    aput v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x76

    aput v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x77

    aput v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x78

    aput v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x7a

    aput v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x7b

    aput v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x7c

    aput v2, v0, v1

    const/16 v1, 0xc2

    aput v3, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x7e

    aput v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x7f

    aput v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0x82

    aput v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x83

    aput v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x84

    aput v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x85

    aput v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x87

    aput v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x88

    aput v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x89

    aput v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x8a

    aput v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x8b

    aput v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x8c

    aput v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x8d

    aput v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0x8e

    aput v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x8f

    aput v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x90

    aput v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x91

    aput v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x92

    aput v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x93

    aput v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x94

    aput v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x95

    aput v2, v0, v1

    sput-object v0, Lcom/sun/pdfview/font/FontSupport;->standardEncoding:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0xe5
        0xe6
        0xe7
        0xe8
        0xe9
        0xea
        0xeb
        0xec
        0xed
        0xee
        0xd
        0xe
        0xf
        0x63
        0xef
        0xf0
        0xf1
        0xf2
        0xf3
        0xf4
        0xf5
        0xf6
        0xf7
        0xf8
        0x1b
        0x1c
        0xf9
        0xfa
        0xfb
        0xfc
        0xfd
        0xfe
        0xff
        0x100
        0x101
        0x102
        0x103
        0x104
        0x105
        0x106
        0x107
        0x108
        0x109
        0x10a
        0x6d
        0x6e
        0x10b
        0x10c
        0x10d
        0x10e
        0x10f
        0x110
        0x111
        0x112
        0x113
        0x114
        0x115
        0x116
        0x117
        0x118
        0x119
        0x11a
        0x11b
        0x11c
        0x11d
        0x11e
        0x11f
        0x120
        0x121
        0x122
        0x123
        0x124
        0x125
        0x126
        0x127
        0x128
        0x129
        0x12a
        0x12b
        0x12c
        0x12d
        0x12e
        0x12f
        0x130
        0x131
        0x132
        0x133
        0x134
        0x135
        0x136
        0x137
        0x138
        0x139
        0x13a
        0x13b
        0x13c
        0x13d
        0x13e
        0x9e
        0x9b
        0xa3
        0x13f
        0x140
        0x141
        0x142
        0x143
        0x144
        0x145
        0x146
        0x96
        0xa4
        0xa9
        0x147
        0x148
        0x149
        0x14a
        0x14b
        0x14c
        0x14d
        0x14e
        0x14f
        0x150
        0x151
        0x152
        0x153
        0x154
        0x155
        0x156
        0x157
        0x158
        0x159
        0x15a
        0x15b
        0x15c
        0x15d
        0x15e
        0x15f
        0x160
        0x161
        0x162
        0x163
        0x164
        0x165
        0x166
        0x167
        0x168
        0x169
        0x16a
        0x16b
        0x16c
        0x16d
        0x16e
        0x16f
        0x170
        0x171
        0x172
        0x173
        0x174
        0x175
        0x176
        0x177
        0x178
        0x179
        0x17a
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xe7
        0xe8
        0xeb
        0xec
        0xed
        0xee
        0xd
        0xe
        0xf
        0x63
        0xef
        0xf0
        0xf1
        0xf2
        0xf3
        0xf4
        0xf5
        0xf6
        0xf7
        0xf8
        0x1b
        0x1c
        0xf9
        0xfa
        0xfb
        0xfd
        0xfe
        0xff
        0x100
        0x101
        0x102
        0x103
        0x104
        0x105
        0x106
        0x107
        0x108
        0x109
        0x10a
        0x6d
        0x6e
        0x10b
        0x10c
        0x10d
        0x10e
        0x110
        0x12c
        0x12d
        0x12e
        0x131
        0x13a
        0x13b
        0x9e
        0x9b
        0xa3
        0x140
        0x141
        0x142
        0x143
        0x144
        0x145
        0x146
        0x96
        0xa4
        0xa9
        0x147
        0x148
        0x149
        0x14a
        0x14b
        0x14c
        0x14d
        0x14e
        0x14f
        0x150
        0x151
        0x152
        0x153
        0x154
        0x155
        0x156
        0x157
        0x158
        0x159
        0x15a
    .end array-data

    :array_2
    .array-data 4
        0x187
        0x9a
        0xa7
        0x8c
        0x92
        0xc0
        0xdd
        0xc5
        0xe2
        0x188
        0x189
        0x9d
        0xa2
        0x18a
        0xc7
        0xe4
        0x18b
        0x18c
        0x18d
        0x18e
        0x18f
        0x9b
        0x9e
        0x96
        0xa3
        0xa9
        0xa4
        0xa0
        0xa6
        0xa8
        0x190
        0x191
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x68
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x7c
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0x5c
        0x5d
        0x5e
        0x5f
        0x193
        0xad
        0xaf
        0xb1
        0xb2
        0xba
        0xbd
        0xc3
        0xc8
        0xcb
        0xc9
        0xca
        0xcd
        0xcc
        0xce
        0xcf
        0xd2
        0xd0
        0xd1
        0xd3
        0xd6
        0xd4
        0xd5
        0xd7
        0xd8
        0xdb
        0xd9
        0xda
        0xdc
        0xde
        0xe1
        0xdf
        0xe0
        0x70
        0xa1
        0x61
        0x62
        0x66
        0x74
        0x73
        0x95
        0xa5
        0xaa
        0x99
        0x7d
        0x83
        0x192
        0x8a
        0x8d
        0x194
        0x9c
        0x195
        0x196
        0x64
        0x98
        0x197
        0x198
        0x199
        0x19a
        0x19b
        0x8b
        0x8f
        0x19c
        0x90
        0x93
        0x7b
        0x60
        0x97
        0x19d
        0x65
        0x19e
        0x19f
        0x6a
        0x78
        0x79
        0x1a0
        0xae
        0xb0
        0xbf
        0x8e
        0x94
        0x6f
        0x89
        0x69
        0x77
        0x41
        0x8
        0x9f
        0x1a1
        0xe3
        0xc6
        0x63
        0x67
        0x6b
        0x6c
        0x6d
        0x6e
        0x71
        0x72
        0x75
        0x76
        0x7a
        0xac
        0xb3
        0xab
        0xb4
        0xb5
        0xb6
        0xb7
        0xb8
        0xb9
        0xbb
        0xbc
        0x1a2
        0xbe
        0xc1
        0xc2
        0xc4
        0x91
        0x7e
        0x7f
        0x80
        0x81
        0x82
        0x84
        0x85
        0x86
        0x87
        0x88
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findName(Ljava/lang/String;[I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    aget v1, p1, v0

    invoke-static {v1}, Lcom/sun/pdfview/font/FontSupport;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static findName(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sun/pdfview/font/FontSupport;->stdNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/sun/pdfview/font/FontSupport;->stdNames:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/pdfview/font/FontSupport;->stdNames:[Ljava/lang/String;

    array-length v0, v0

    sub-int v0, p0, v0

    sget-object v1, Lcom/sun/pdfview/font/FontSupport;->macExtras:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/sun/pdfview/font/FontSupport;->macExtras:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_1
    const-string v0, ".notdef"

    goto :goto_0
.end method

.method public static getStrIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sun/pdfview/font/FontSupport;->stdNames:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    sget-object v1, Lcom/sun/pdfview/font/FontSupport;->stdNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
