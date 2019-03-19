.class public Lcom/sun/pdfview/decode/CCITTFaxDecoder;
.super Ljava/lang/Object;


# static fields
.field static additionalMakeup:[S

.field static black:[S

.field static flipTable:[B

.field static initBlack:[S

.field static table1:[I

.field static table2:[I

.field static twoBitBlack:[S

.field static twoDCodes:[B

.field static white:[S


# instance fields
.field private align:Z

.field private bitPointer:I

.field private bytePointer:I

.field private changingElemSize:I

.field private currChangingElems:[I

.field private data:[B

.field private fillBits:Z

.field private fillOrder:I

.field private lastChangingElement:I

.field private prevChangingElems:[I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x1c8

    const/16 v6, 0x1a8

    const/16 v5, 0x186

    const/16 v4, 0x166

    const/16 v3, 0x146

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x7

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xf

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3f

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x7f

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xff

    aput v2, v0, v1

    sput-object v0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->table1:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x80

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xc0

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xe0

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xf0

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xf8

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xfc

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xfe

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xff

    aput v2, v0, v1

    sput-object v0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->table2:[I

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x1

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, -0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, -0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, -0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, -0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, -0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, -0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, -0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, -0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, -0x75

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, -0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, -0x59

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    sput-object v0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->flipTable:[B

    const/16 v0, 0x400

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->white:[S

    const/16 v0, 0x10

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->additionalMakeup:[S

    const/16 v0, 0x10

    new-array v0, v0, [S

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->initBlack:[S

    const/4 v0, 0x4

    new-array v0, v0, [S

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->twoBitBlack:[S

    const/16 v0, 0x200

    new-array v0, v0, [S

    const/4 v1, 0x0

    const/16 v2, 0x3e

    aput-short v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x3e

    aput-short v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x1e

    aput-short v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x1e

    aput-short v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0xc99

    aput-short v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x24c

    aput-short v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x24c

    aput-short v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x24c

    aput-short v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x24c

    aput-short v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x24c

    aput-short v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x24c

    aput-short v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x24c

    aput-short v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x24c

    aput-short v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x690

    aput-short v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x690

    aput-short v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x5013

    aput-short v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x5813

    aput-short v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x6013

    aput-short v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x6813

    aput-short v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x6f0

    aput-short v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x6f0

    aput-short v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x710

    aput-short v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x710

    aput-short v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, -0x5fed

    aput-short v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, -0x57ed

    aput-short v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, -0x4fed

    aput-short v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, -0x47ed

    aput-short v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x770

    aput-short v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x770

    aput-short v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x790

    aput-short v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x790

    aput-short v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, -0x3fed

    aput-short v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, -0x37ed

    aput-short v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x30e

    aput-short v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x30e

    aput-short v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x30e

    aput-short v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x30e

    aput-short v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x32e

    aput-short v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x32e

    aput-short v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x32e

    aput-short v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x32e

    aput-short v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, -0x2fed

    aput-short v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, -0x27ed

    aput-short v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x2811

    aput-short v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x2811

    aput-short v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x3011

    aput-short v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x3011

    aput-short v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x3811

    aput-short v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x3811

    aput-short v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x4013

    aput-short v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x4813

    aput-short v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x6b0

    aput-short v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x6b0

    aput-short v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x6d0

    aput-short v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x6d0

    aput-short v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x7013

    aput-short v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x7813

    aput-short v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, -0x7fed

    aput-short v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, -0x77ed

    aput-short v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, -0x6fed

    aput-short v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, -0x67ed

    aput-short v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x80d

    aput-short v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x80d

    aput-short v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x80d

    aput-short v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x80d

    aput-short v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x80d

    aput-short v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x80d

    aput-short v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x80d

    aput-short v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x80d

    aput-short v2, v0, v1

    const/16 v1, 0x80

    aput-short v6, v0, v1

    const/16 v1, 0x81

    aput-short v6, v0, v1

    const/16 v1, 0x82

    aput-short v6, v0, v1

    const/16 v1, 0x83

    aput-short v6, v0, v1

    const/16 v1, 0x84

    aput-short v6, v0, v1

    const/16 v1, 0x85

    aput-short v6, v0, v1

    const/16 v1, 0x86

    aput-short v6, v0, v1

    const/16 v1, 0x87

    aput-short v6, v0, v1

    const/16 v1, 0x88

    aput-short v6, v0, v1

    const/16 v1, 0x89

    aput-short v6, v0, v1

    const/16 v1, 0x8a

    aput-short v6, v0, v1

    const/16 v1, 0x8b

    aput-short v6, v0, v1

    const/16 v1, 0x8c

    aput-short v6, v0, v1

    const/16 v1, 0x8d

    aput-short v6, v0, v1

    const/16 v1, 0x8e

    aput-short v6, v0, v1

    const/16 v1, 0x8f

    aput-short v6, v0, v1

    const/16 v1, 0x90

    aput-short v6, v0, v1

    const/16 v1, 0x91

    aput-short v6, v0, v1

    const/16 v1, 0x92

    aput-short v6, v0, v1

    const/16 v1, 0x93

    aput-short v6, v0, v1

    const/16 v1, 0x94

    aput-short v6, v0, v1

    const/16 v1, 0x95

    aput-short v6, v0, v1

    const/16 v1, 0x96

    aput-short v6, v0, v1

    const/16 v1, 0x97

    aput-short v6, v0, v1

    const/16 v1, 0x98

    aput-short v6, v0, v1

    const/16 v1, 0x99

    aput-short v6, v0, v1

    const/16 v1, 0x9a

    aput-short v6, v0, v1

    const/16 v1, 0x9b

    aput-short v6, v0, v1

    const/16 v1, 0x9c

    aput-short v6, v0, v1

    const/16 v1, 0x9d

    aput-short v6, v0, v1

    const/16 v1, 0x9e

    aput-short v6, v0, v1

    const/16 v1, 0x9f

    aput-short v6, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0x2ee

    aput-short v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x2ee

    aput-short v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x2ee

    aput-short v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x2ee

    aput-short v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x650

    aput-short v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x650

    aput-short v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x670

    aput-short v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x670

    aput-short v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x590

    aput-short v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x590

    aput-short v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x5b0

    aput-short v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x5b0

    aput-short v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x5d0

    aput-short v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x5d0

    aput-short v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x5f0

    aput-short v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x5f0

    aput-short v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0x730

    aput-short v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x730

    aput-short v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x750

    aput-short v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x750

    aput-short v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0x7b0

    aput-short v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0x7b0

    aput-short v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x2011

    aput-short v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x2011

    aput-short v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x20c

    aput-short v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x20c

    aput-short v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x20c

    aput-short v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x20c

    aput-short v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x20c

    aput-short v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x20c

    aput-short v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x20c

    aput-short v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x20c

    aput-short v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x22c

    aput-short v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x22c

    aput-short v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x22c

    aput-short v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x22c

    aput-short v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x22c

    aput-short v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0x22c

    aput-short v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x22c

    aput-short v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0x22c

    aput-short v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x610

    aput-short v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x610

    aput-short v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x630

    aput-short v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x630

    aput-short v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x7d0

    aput-short v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x7d0

    aput-short v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x7f0

    aput-short v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x7f0

    aput-short v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x3d0

    aput-short v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x3d0

    aput-short v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x3f0

    aput-short v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x3f0

    aput-short v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x410

    aput-short v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x410

    aput-short v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x430

    aput-short v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0x430

    aput-short v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x510

    aput-short v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x510

    aput-short v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x530

    aput-short v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0x530

    aput-short v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0x2ce

    aput-short v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x2ce

    aput-short v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x2ce

    aput-short v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0x2ce

    aput-short v2, v0, v1

    const/16 v1, 0xe0

    aput-short v7, v0, v1

    const/16 v1, 0xe1

    aput-short v7, v0, v1

    const/16 v1, 0xe2

    aput-short v7, v0, v1

    const/16 v1, 0xe3

    aput-short v7, v0, v1

    const/16 v1, 0xe4

    aput-short v7, v0, v1

    const/16 v1, 0xe5

    aput-short v7, v0, v1

    const/16 v1, 0xe6

    aput-short v7, v0, v1

    const/16 v1, 0xe7

    aput-short v7, v0, v1

    const/16 v1, 0xe8

    aput-short v7, v0, v1

    const/16 v1, 0xe9

    aput-short v7, v0, v1

    const/16 v1, 0xea

    aput-short v7, v0, v1

    const/16 v1, 0xeb

    aput-short v7, v0, v1

    const/16 v1, 0xec

    aput-short v7, v0, v1

    const/16 v1, 0xed

    aput-short v7, v0, v1

    const/16 v1, 0xee

    aput-short v7, v0, v1

    const/16 v1, 0xef

    aput-short v7, v0, v1

    const/16 v1, 0xf0

    aput-short v7, v0, v1

    const/16 v1, 0xf1

    aput-short v7, v0, v1

    const/16 v1, 0xf2

    aput-short v7, v0, v1

    const/16 v1, 0xf3

    aput-short v7, v0, v1

    const/16 v1, 0xf4

    aput-short v7, v0, v1

    const/16 v1, 0xf5

    aput-short v7, v0, v1

    const/16 v1, 0xf6

    aput-short v7, v0, v1

    const/16 v1, 0xf7

    aput-short v7, v0, v1

    const/16 v1, 0xf8

    aput-short v7, v0, v1

    const/16 v1, 0xf9

    aput-short v7, v0, v1

    const/16 v1, 0xfa

    aput-short v7, v0, v1

    const/16 v1, 0xfb

    aput-short v7, v0, v1

    const/16 v1, 0xfc

    aput-short v7, v0, v1

    const/16 v1, 0xfd

    aput-short v7, v0, v1

    const/16 v1, 0xfe

    aput-short v7, v0, v1

    const/16 v1, 0xff

    aput-short v7, v0, v1

    const/16 v1, 0x100

    aput-short v3, v0, v1

    const/16 v1, 0x101

    aput-short v3, v0, v1

    const/16 v1, 0x102

    aput-short v3, v0, v1

    const/16 v1, 0x103

    aput-short v3, v0, v1

    const/16 v1, 0x104

    aput-short v3, v0, v1

    const/16 v1, 0x105

    aput-short v3, v0, v1

    const/16 v1, 0x106

    aput-short v3, v0, v1

    const/16 v1, 0x107

    aput-short v3, v0, v1

    const/16 v1, 0x108

    aput-short v3, v0, v1

    const/16 v1, 0x109

    aput-short v3, v0, v1

    const/16 v1, 0x10a

    aput-short v3, v0, v1

    const/16 v1, 0x10b

    aput-short v3, v0, v1

    const/16 v1, 0x10c

    aput-short v3, v0, v1

    const/16 v1, 0x10d

    aput-short v3, v0, v1

    const/16 v1, 0x10e

    aput-short v3, v0, v1

    const/16 v1, 0x10f

    aput-short v3, v0, v1

    const/16 v1, 0x110

    aput-short v3, v0, v1

    const/16 v1, 0x111

    aput-short v3, v0, v1

    const/16 v1, 0x112

    aput-short v3, v0, v1

    const/16 v1, 0x113

    aput-short v3, v0, v1

    const/16 v1, 0x114

    aput-short v3, v0, v1

    const/16 v1, 0x115

    aput-short v3, v0, v1

    const/16 v1, 0x116

    aput-short v3, v0, v1

    const/16 v1, 0x117

    aput-short v3, v0, v1

    const/16 v1, 0x118

    aput-short v3, v0, v1

    const/16 v1, 0x119

    aput-short v3, v0, v1

    const/16 v1, 0x11a

    aput-short v3, v0, v1

    const/16 v1, 0x11b

    aput-short v3, v0, v1

    const/16 v1, 0x11c

    aput-short v3, v0, v1

    const/16 v1, 0x11d

    aput-short v3, v0, v1

    const/16 v1, 0x11e

    aput-short v3, v0, v1

    const/16 v1, 0x11f

    aput-short v3, v0, v1

    const/16 v1, 0x120

    aput-short v3, v0, v1

    const/16 v1, 0x121

    aput-short v3, v0, v1

    const/16 v1, 0x122

    aput-short v3, v0, v1

    const/16 v1, 0x123

    aput-short v3, v0, v1

    const/16 v1, 0x124

    aput-short v3, v0, v1

    const/16 v1, 0x125

    aput-short v3, v0, v1

    const/16 v1, 0x126

    aput-short v3, v0, v1

    const/16 v1, 0x127

    aput-short v3, v0, v1

    const/16 v1, 0x128

    aput-short v3, v0, v1

    const/16 v1, 0x129

    aput-short v3, v0, v1

    const/16 v1, 0x12a

    aput-short v3, v0, v1

    const/16 v1, 0x12b

    aput-short v3, v0, v1

    const/16 v1, 0x12c

    aput-short v3, v0, v1

    const/16 v1, 0x12d

    aput-short v3, v0, v1

    const/16 v1, 0x12e

    aput-short v3, v0, v1

    const/16 v1, 0x12f

    aput-short v3, v0, v1

    const/16 v1, 0x130

    aput-short v3, v0, v1

    const/16 v1, 0x131

    aput-short v3, v0, v1

    const/16 v1, 0x132

    aput-short v3, v0, v1

    const/16 v1, 0x133

    aput-short v3, v0, v1

    const/16 v1, 0x134

    aput-short v3, v0, v1

    const/16 v1, 0x135

    aput-short v3, v0, v1

    const/16 v1, 0x136

    aput-short v3, v0, v1

    const/16 v1, 0x137

    aput-short v3, v0, v1

    const/16 v1, 0x138

    aput-short v3, v0, v1

    const/16 v1, 0x139

    aput-short v3, v0, v1

    const/16 v1, 0x13a

    aput-short v3, v0, v1

    const/16 v1, 0x13b

    aput-short v3, v0, v1

    const/16 v1, 0x13c

    aput-short v3, v0, v1

    const/16 v1, 0x13d

    aput-short v3, v0, v1

    const/16 v1, 0x13e

    aput-short v3, v0, v1

    const/16 v1, 0x13f

    aput-short v3, v0, v1

    const/16 v1, 0x140

    aput-short v4, v0, v1

    const/16 v1, 0x141

    aput-short v4, v0, v1

    const/16 v1, 0x142

    aput-short v4, v0, v1

    const/16 v1, 0x143

    aput-short v4, v0, v1

    const/16 v1, 0x144

    aput-short v4, v0, v1

    const/16 v1, 0x145

    aput-short v4, v0, v1

    aput-short v4, v0, v3

    const/16 v1, 0x147

    aput-short v4, v0, v1

    const/16 v1, 0x148

    aput-short v4, v0, v1

    const/16 v1, 0x149

    aput-short v4, v0, v1

    const/16 v1, 0x14a

    aput-short v4, v0, v1

    const/16 v1, 0x14b

    aput-short v4, v0, v1

    const/16 v1, 0x14c

    aput-short v4, v0, v1

    const/16 v1, 0x14d

    aput-short v4, v0, v1

    const/16 v1, 0x14e

    aput-short v4, v0, v1

    const/16 v1, 0x14f

    aput-short v4, v0, v1

    const/16 v1, 0x150

    aput-short v4, v0, v1

    const/16 v1, 0x151

    aput-short v4, v0, v1

    const/16 v1, 0x152

    aput-short v4, v0, v1

    const/16 v1, 0x153

    aput-short v4, v0, v1

    const/16 v1, 0x154

    aput-short v4, v0, v1

    const/16 v1, 0x155

    aput-short v4, v0, v1

    const/16 v1, 0x156

    aput-short v4, v0, v1

    const/16 v1, 0x157

    aput-short v4, v0, v1

    const/16 v1, 0x158

    aput-short v4, v0, v1

    const/16 v1, 0x159

    aput-short v4, v0, v1

    const/16 v1, 0x15a

    aput-short v4, v0, v1

    const/16 v1, 0x15b

    aput-short v4, v0, v1

    const/16 v1, 0x15c

    aput-short v4, v0, v1

    const/16 v1, 0x15d

    aput-short v4, v0, v1

    const/16 v1, 0x15e

    aput-short v4, v0, v1

    const/16 v1, 0x15f

    aput-short v4, v0, v1

    const/16 v1, 0x160

    aput-short v4, v0, v1

    const/16 v1, 0x161

    aput-short v4, v0, v1

    const/16 v1, 0x162

    aput-short v4, v0, v1

    const/16 v1, 0x163

    aput-short v4, v0, v1

    const/16 v1, 0x164

    aput-short v4, v0, v1

    const/16 v1, 0x165

    aput-short v4, v0, v1

    aput-short v4, v0, v4

    const/16 v1, 0x167

    aput-short v4, v0, v1

    const/16 v1, 0x168

    aput-short v4, v0, v1

    const/16 v1, 0x169

    aput-short v4, v0, v1

    const/16 v1, 0x16a

    aput-short v4, v0, v1

    const/16 v1, 0x16b

    aput-short v4, v0, v1

    const/16 v1, 0x16c

    aput-short v4, v0, v1

    const/16 v1, 0x16d

    aput-short v4, v0, v1

    const/16 v1, 0x16e

    aput-short v4, v0, v1

    const/16 v1, 0x16f

    aput-short v4, v0, v1

    const/16 v1, 0x170

    aput-short v4, v0, v1

    const/16 v1, 0x171

    aput-short v4, v0, v1

    const/16 v1, 0x172

    aput-short v4, v0, v1

    const/16 v1, 0x173

    aput-short v4, v0, v1

    const/16 v1, 0x174

    aput-short v4, v0, v1

    const/16 v1, 0x175

    aput-short v4, v0, v1

    const/16 v1, 0x176

    aput-short v4, v0, v1

    const/16 v1, 0x177

    aput-short v4, v0, v1

    const/16 v1, 0x178

    aput-short v4, v0, v1

    const/16 v1, 0x179

    aput-short v4, v0, v1

    const/16 v1, 0x17a

    aput-short v4, v0, v1

    const/16 v1, 0x17b

    aput-short v4, v0, v1

    const/16 v1, 0x17c

    aput-short v4, v0, v1

    const/16 v1, 0x17d

    aput-short v4, v0, v1

    const/16 v1, 0x17e

    aput-short v4, v0, v1

    const/16 v1, 0x17f

    aput-short v4, v0, v1

    const/16 v1, 0x180

    const/16 v2, 0x1ea

    aput-short v2, v0, v1

    const/16 v1, 0x181

    const/16 v2, 0x1ea

    aput-short v2, v0, v1

    const/16 v1, 0x182

    const/16 v2, 0x1ea

    aput-short v2, v0, v1

    const/16 v1, 0x183

    const/16 v2, 0x1ea

    aput-short v2, v0, v1

    const/16 v1, 0x184

    const/16 v2, 0x1ea

    aput-short v2, v0, v1

    const/16 v1, 0x185

    const/16 v2, 0x1ea

    aput-short v2, v0, v1

    const/16 v1, 0x1ea

    aput-short v1, v0, v5

    const/16 v1, 0x187

    const/16 v2, 0x1ea

    aput-short v2, v0, v1

    const/16 v1, 0x188

    const/16 v2, 0x1ea

    aput-short v2, v0, v1

    const/16 v1, 0x189

    const/16 v2, 0x1ea

    aput-short v2, v0, v1

    const/16 v1, 0x18a

    const/16 v2, 0x1ea

    aput-short v2, v0, v1

    const/16 v1, 0x18b

    const/16 v2, 0x1ea

    aput-short v2, v0, v1

    const/16 v1, 0x18c

    const/16 v2, 0x1ea

    aput-short v2, v0, v1

    const/16 v1, 0x18d

    const/16 v2, 0x1ea

    aput-short v2, v0, v1

    const/16 v1, 0x18e

    const/16 v2, 0x1ea

    aput-short v2, v0, v1

    const/16 v1, 0x18f

    const/16 v2, 0x1ea

    aput-short v2, v0, v1

    const/16 v1, 0x190

    const/16 v2, 0x1011

    aput-short v2, v0, v1

    const/16 v1, 0x191

    const/16 v2, 0x1011

    aput-short v2, v0, v1

    const/16 v1, 0x192

    const/16 v2, 0x1811

    aput-short v2, v0, v1

    const/16 v1, 0x193

    const/16 v2, 0x1811

    aput-short v2, v0, v1

    const/16 v1, 0x194

    const/16 v2, 0x350

    aput-short v2, v0, v1

    const/16 v1, 0x195

    const/16 v2, 0x350

    aput-short v2, v0, v1

    const/16 v1, 0x196

    const/16 v2, 0x370

    aput-short v2, v0, v1

    const/16 v1, 0x197

    const/16 v2, 0x370

    aput-short v2, v0, v1

    const/16 v1, 0x198

    const/16 v2, 0x390

    aput-short v2, v0, v1

    const/16 v1, 0x199

    const/16 v2, 0x390

    aput-short v2, v0, v1

    const/16 v1, 0x19a

    const/16 v2, 0x3b0

    aput-short v2, v0, v1

    const/16 v1, 0x19b

    const/16 v2, 0x3b0

    aput-short v2, v0, v1

    const/16 v1, 0x19c

    const/16 v2, 0x26e

    aput-short v2, v0, v1

    const/16 v1, 0x19d

    const/16 v2, 0x26e

    aput-short v2, v0, v1

    const/16 v1, 0x19e

    const/16 v2, 0x26e

    aput-short v2, v0, v1

    const/16 v1, 0x19f

    const/16 v2, 0x26e

    aput-short v2, v0, v1

    const/16 v1, 0x1a0

    const/16 v2, 0x28e

    aput-short v2, v0, v1

    const/16 v1, 0x1a1

    const/16 v2, 0x28e

    aput-short v2, v0, v1

    const/16 v1, 0x1a2

    const/16 v2, 0x28e

    aput-short v2, v0, v1

    const/16 v1, 0x1a3

    const/16 v2, 0x28e

    aput-short v2, v0, v1

    const/16 v1, 0x1a4

    const/16 v2, 0x450

    aput-short v2, v0, v1

    const/16 v1, 0x1a5

    const/16 v2, 0x450

    aput-short v2, v0, v1

    const/16 v1, 0x1a6

    const/16 v2, 0x470

    aput-short v2, v0, v1

    const/16 v1, 0x1a7

    const/16 v2, 0x470

    aput-short v2, v0, v1

    const/16 v1, 0x490

    aput-short v1, v0, v6

    const/16 v1, 0x1a9

    const/16 v2, 0x490

    aput-short v2, v0, v1

    const/16 v1, 0x1aa

    const/16 v2, 0x4b0

    aput-short v2, v0, v1

    const/16 v1, 0x1ab

    const/16 v2, 0x4b0

    aput-short v2, v0, v1

    const/16 v1, 0x1ac

    const/16 v2, 0x4d0

    aput-short v2, v0, v1

    const/16 v1, 0x1ad

    const/16 v2, 0x4d0

    aput-short v2, v0, v1

    const/16 v1, 0x1ae

    const/16 v2, 0x4f0

    aput-short v2, v0, v1

    const/16 v1, 0x1af

    const/16 v2, 0x4f0

    aput-short v2, v0, v1

    const/16 v1, 0x1b0

    const/16 v2, 0x2ae

    aput-short v2, v0, v1

    const/16 v1, 0x1b1

    const/16 v2, 0x2ae

    aput-short v2, v0, v1

    const/16 v1, 0x1b2

    const/16 v2, 0x2ae

    aput-short v2, v0, v1

    const/16 v1, 0x1b3

    const/16 v2, 0x2ae

    aput-short v2, v0, v1

    const/16 v1, 0x1b4

    const/16 v2, 0x550

    aput-short v2, v0, v1

    const/16 v1, 0x1b5

    const/16 v2, 0x550

    aput-short v2, v0, v1

    const/16 v1, 0x1b6

    const/16 v2, 0x570

    aput-short v2, v0, v1

    const/16 v1, 0x1b7

    const/16 v2, 0x570

    aput-short v2, v0, v1

    const/16 v1, 0x1b8

    const/16 v2, 0xc

    aput-short v2, v0, v1

    const/16 v1, 0x1b9

    const/16 v2, 0xc

    aput-short v2, v0, v1

    const/16 v1, 0x1ba

    const/16 v2, 0xc

    aput-short v2, v0, v1

    const/16 v1, 0x1bb

    const/16 v2, 0xc

    aput-short v2, v0, v1

    const/16 v1, 0x1bc

    const/16 v2, 0xc

    aput-short v2, v0, v1

    const/16 v1, 0x1bd

    const/16 v2, 0xc

    aput-short v2, v0, v1

    const/16 v1, 0x1be

    const/16 v2, 0xc

    aput-short v2, v0, v1

    const/16 v1, 0x1bf

    const/16 v2, 0xc

    aput-short v2, v0, v1

    const/16 v1, 0x1c0

    aput-short v5, v0, v1

    const/16 v1, 0x1c1

    aput-short v5, v0, v1

    const/16 v1, 0x1c2

    aput-short v5, v0, v1

    const/16 v1, 0x1c3

    aput-short v5, v0, v1

    const/16 v1, 0x1c4

    aput-short v5, v0, v1

    const/16 v1, 0x1c5

    aput-short v5, v0, v1

    const/16 v1, 0x1c6

    aput-short v5, v0, v1

    const/16 v1, 0x1c7

    aput-short v5, v0, v1

    aput-short v5, v0, v7

    const/16 v1, 0x1c9

    aput-short v5, v0, v1

    const/16 v1, 0x1ca

    aput-short v5, v0, v1

    const/16 v1, 0x1cb

    aput-short v5, v0, v1

    const/16 v1, 0x1cc

    aput-short v5, v0, v1

    const/16 v1, 0x1cd

    aput-short v5, v0, v1

    const/16 v1, 0x1ce

    aput-short v5, v0, v1

    const/16 v1, 0x1cf

    aput-short v5, v0, v1

    const/16 v1, 0x1d0

    aput-short v5, v0, v1

    const/16 v1, 0x1d1

    aput-short v5, v0, v1

    const/16 v1, 0x1d2

    aput-short v5, v0, v1

    const/16 v1, 0x1d3

    aput-short v5, v0, v1

    const/16 v1, 0x1d4

    aput-short v5, v0, v1

    const/16 v1, 0x1d5

    aput-short v5, v0, v1

    const/16 v1, 0x1d6

    aput-short v5, v0, v1

    const/16 v1, 0x1d7

    aput-short v5, v0, v1

    const/16 v1, 0x1d8

    aput-short v5, v0, v1

    const/16 v1, 0x1d9

    aput-short v5, v0, v1

    const/16 v1, 0x1da

    aput-short v5, v0, v1

    const/16 v1, 0x1db

    aput-short v5, v0, v1

    const/16 v1, 0x1dc

    aput-short v5, v0, v1

    const/16 v1, 0x1dd

    aput-short v5, v0, v1

    const/16 v1, 0x1de

    aput-short v5, v0, v1

    const/16 v1, 0x1df

    aput-short v5, v0, v1

    const/16 v1, 0x1e0

    aput-short v5, v0, v1

    const/16 v1, 0x1e1

    aput-short v5, v0, v1

    const/16 v1, 0x1e2

    aput-short v5, v0, v1

    const/16 v1, 0x1e3

    aput-short v5, v0, v1

    const/16 v1, 0x1e4

    aput-short v5, v0, v1

    const/16 v1, 0x1e5

    aput-short v5, v0, v1

    const/16 v1, 0x1e6

    aput-short v5, v0, v1

    const/16 v1, 0x1e7

    aput-short v5, v0, v1

    const/16 v1, 0x1e8

    aput-short v5, v0, v1

    const/16 v1, 0x1e9

    aput-short v5, v0, v1

    const/16 v1, 0x1ea

    aput-short v5, v0, v1

    const/16 v1, 0x1eb

    aput-short v5, v0, v1

    const/16 v1, 0x1ec

    aput-short v5, v0, v1

    const/16 v1, 0x1ed

    aput-short v5, v0, v1

    const/16 v1, 0x1ee

    aput-short v5, v0, v1

    const/16 v1, 0x1ef

    aput-short v5, v0, v1

    const/16 v1, 0x1f0

    aput-short v5, v0, v1

    const/16 v1, 0x1f1

    aput-short v5, v0, v1

    const/16 v1, 0x1f2

    aput-short v5, v0, v1

    const/16 v1, 0x1f3

    aput-short v5, v0, v1

    const/16 v1, 0x1f4

    aput-short v5, v0, v1

    const/16 v1, 0x1f5

    aput-short v5, v0, v1

    const/16 v1, 0x1f6

    aput-short v5, v0, v1

    const/16 v1, 0x1f7

    aput-short v5, v0, v1

    const/16 v1, 0x1f8

    aput-short v5, v0, v1

    const/16 v1, 0x1f9

    aput-short v5, v0, v1

    const/16 v1, 0x1fa

    aput-short v5, v0, v1

    const/16 v1, 0x1fb

    aput-short v5, v0, v1

    const/16 v1, 0x1fc

    aput-short v5, v0, v1

    const/16 v1, 0x1fd

    aput-short v5, v0, v1

    const/16 v1, 0x1fe

    aput-short v5, v0, v1

    const/16 v1, 0x1ff

    aput-short v5, v0, v1

    sput-object v0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->black:[S

    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->twoDCodes:[B

    return-void

    :array_0
    .array-data 2
        0x191es
        0x1900s
        0x1900s
        0x1900s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0x3b0s
        0x3b0s
        0x3b0s
        0x3b0s
        0x3d0s
        0x3d0s
        0x3d0s
        0x3d0s
        0x5b0s
        0x5b0s
        0x5b0s
        0x5b0s
        0x5d0s
        0x5d0s
        0x5d0s
        0x5d0s
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x5f0s
        0x5f0s
        0x5f0s
        0x5f0s
        0x610s
        0x610s
        0x610s
        0x610s
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x430s
        0x430s
        0x430s
        0x430s
        0x450s
        0x450s
        0x450s
        0x450s
        0x470s
        0x470s
        0x470s
        0x470s
        0x490s
        0x490s
        0x490s
        0x490s
        0x4b0s
        0x4b0s
        0x4b0s
        0x4b0s
        0x4d0s
        0x4d0s
        0x4d0s
        0x4d0s
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x3f0s
        0x3f0s
        0x3f0s
        0x3f0s
        0x410s
        0x410s
        0x410s
        0x410s
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x6b0s
        0x6b0s
        0x6b0s
        0x6b0s
        0x6d0s
        0x6d0s
        0x6d0s
        0x6d0s
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x4f0s
        0x4f0s
        0x4f0s
        0x4f0s
        0x510s
        0x510s
        0x510s
        0x510s
        0x530s
        0x530s
        0x530s
        0x530s
        0x550s
        0x550s
        0x550s
        0x550s
        0x570s
        0x570s
        0x570s
        0x570s
        0x590s
        0x590s
        0x590s
        0x590s
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x7b0s
        0x7b0s
        0x7b0s
        0x7b0s
        0x7d0s
        0x7d0s
        0x7d0s
        0x7d0s
        0x7f0s
        0x7f0s
        0x7f0s
        0x7f0s
        0x10s
        0x10s
        0x10s
        0x10s
        0x2811s
        0x2811s
        0x2811s
        0x2811s
        0x3011s
        0x3011s
        0x3011s
        0x3011s
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x770s
        0x770s
        0x770s
        0x770s
        0x790s
        0x790s
        0x790s
        0x790s
        -0x47eds
        -0x47eds
        -0x3feds
        -0x3feds
        -0x37eds
        -0x37eds
        -0x27eds
        -0x27eds
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x630s
        0x630s
        0x630s
        0x630s
        0x650s
        0x650s
        0x650s
        0x650s
        0x670s
        0x670s
        0x670s
        0x670s
        0x690s
        0x690s
        0x690s
        0x690s
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x6f0s
        0x6f0s
        0x6f0s
        0x6f0s
        0x710s
        0x710s
        0x710s
        0x710s
        0x730s
        0x730s
        0x730s
        0x730s
        0x750s
        0x750s
        0x750s
        0x750s
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        0x3811s
        0x3811s
        0x3811s
        0x3811s
        0x4011s
        0x4011s
        0x4011s
        0x4011s
        0x5813s
        0x5813s
        0x6013s
        0x6013s
        0x5011s
        0x5011s
        0x5011s
        0x5011s
        0x4811s
        0x4811s
        0x4811s
        0x4811s
        0x6813s
        0x6813s
        0x7013s
        0x7013s
        0x7813s
        0x7813s
        -0x7feds
        -0x7feds
        -0x77eds
        -0x77eds
        -0x6feds
        -0x6feds
        -0x67eds
        -0x67eds
        -0x5feds
        -0x5feds
        -0x57eds
        -0x57eds
        -0x4feds
        -0x4feds
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
    .end array-data

    :array_1
    .array-data 2
        0x7007s
        0x7007s
        0x7c08s
        -0x7ff7s
        -0x7bf7s
        -0x77f7s
        -0x73f7s
        -0x6ff7s
        0x7407s
        0x7407s
        0x7807s
        0x7807s
        -0x6bf7s
        -0x67f7s
        -0x63f7s
        -0x5ff7s
    .end array-data

    :array_2
    .array-data 2
        0xc9as
        0x190cs
        0xc8s
        0xa8s
        0x26s
        0x26s
        0x86s
        0x86s
        0x64s
        0x64s
        0x64s
        0x64s
        0x44s
        0x44s
        0x44s
        0x44s
    .end array-data

    :array_3
    .array-data 2
        0x124s
        0x104s
        0xe2s
        0xe2s
    .end array-data

    :array_4
    .array-data 1
        0x50t
        0x58t
        0x17t
        0x47t
        0x1et
        0x1et
        0x3et
        0x3et
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->align:Z

    iput v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    iput v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->lastChangingElement:I

    iput-boolean v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->fillBits:Z

    iput p1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->fillOrder:I

    iput p2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    iput v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    iput v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->prevChangingElems:[I

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    return-void
.end method

.method private align()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->align:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    iput v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private decodeBlackCodeWord()I
    .locals 8

    const/4 v7, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, v7}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v3

    sget-object v4, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->initBlack:[S

    aget-short v3, v4, v3

    and-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0xf

    ushr-int/lit8 v3, v3, 0x5

    and-int/lit16 v3, v3, 0x7ff

    const/16 v5, 0x64

    if-ne v3, v5, :cond_4

    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextNBits(I)I

    move-result v3

    sget-object v4, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->black:[S

    aget-short v3, v4, v3

    and-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, v3, 0x1

    and-int/lit8 v5, v5, 0xf

    ushr-int/lit8 v3, v3, 0x5

    and-int/lit16 v3, v3, 0x7ff

    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    invoke-direct {p0, v7}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v3

    sget-object v4, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->additionalMakeup:[S

    aget-short v3, v4, v3

    ushr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xfff

    add-int/2addr v2, v3

    rsub-int/lit8 v3, v4, 0x4

    invoke-direct {p0, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    goto :goto_0

    :cond_2
    const/16 v6, 0xf

    if-ne v5, v6, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EOL code word encountered in Black run."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/2addr v2, v3

    rsub-int/lit8 v3, v5, 0x9

    invoke-direct {p0, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    if-nez v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v0, 0xc8

    if-ne v3, v0, :cond_5

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v0

    sget-object v3, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->twoBitBlack:[S

    aget-short v3, v3, v0

    ushr-int/lit8 v0, v3, 0x5

    and-int/lit16 v0, v0, 0x7ff

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    rsub-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_5
    add-int v0, v2, v3

    rsub-int/lit8 v2, v4, 0x4

    invoke-direct {p0, v2}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    move v2, v0

    move v0, v1

    goto/16 :goto_0
.end method

.method private decodeWhiteCodeWord()I
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    move v2, v1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextNBits(I)I

    move-result v3

    sget-object v4, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->white:[S

    aget-short v4, v4, v3

    and-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v6, v4, 0x1

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0xc

    if-ne v6, v7, :cond_2

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v4

    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0xc

    or-int/2addr v3, v4

    sget-object v4, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->additionalMakeup:[S

    aget-short v3, v4, v3

    ushr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xfff

    add-int/2addr v2, v3

    rsub-int/lit8 v3, v4, 0x4

    invoke-direct {p0, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid code encountered."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v3, 0xf

    if-ne v6, v3, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EOL code word encountered in White run."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    ushr-int/lit8 v3, v4, 0x5

    and-int/lit16 v3, v3, 0x7ff

    add-int/2addr v2, v3

    rsub-int/lit8 v3, v6, 0xa

    invoke-direct {p0, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    if-nez v5, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getNextChangingElement(IZ[I)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->prevChangingElems:[I

    iget v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    iget v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->lastChangingElement:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->lastChangingElement:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-eqz p2, :cond_2

    and-int/lit8 v0, v0, -0x2

    :goto_1
    if-lt v0, v3, :cond_3

    :goto_2
    add-int/lit8 v1, v0, 0x1

    if-ge v1, v3, :cond_0

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    aget v0, v2, v0

    aput v0, p3, v1

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget v4, v2, v0

    if-le v4, p1, :cond_4

    iput v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->lastChangingElement:I

    aput v4, p3, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method private nextLesserThan8Bits(I)I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    iget v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->fillOrder:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    aget-byte v2, v2, v3

    if-ne v3, v0, :cond_1

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    rsub-int/lit8 v3, v3, 0x8

    sub-int v4, p1, v3

    sub-int v5, v3, p1

    if-ltz v5, :cond_5

    sget-object v0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->table1:[I

    aget v0, v0, v3

    and-int/2addr v0, v2

    ushr-int/2addr v0, v5

    iget v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    iget v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iput v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    add-int/lit8 v3, v3, 0x1

    aget-byte v0, v0, v3

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->fillOrder:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    sget-object v2, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->flipTable:[B

    iget-object v4, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    aget-byte v2, v2, v4

    if-ne v3, v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->flipTable:[B

    iget-object v4, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v0, v0, v3

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "tag must be either 1 or 2."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v1, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->table1:[I

    aget v1, v1, v3

    and-int/2addr v1, v2

    neg-int v2, v5

    shl-int/2addr v1, v2

    sget-object v2, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->table2:[I

    aget v2, v2, v4

    and-int/2addr v0, v2

    rsub-int/lit8 v2, v4, 0x8

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    iput v4, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    goto :goto_1
.end method

.method private nextNBits(I)I
    .locals 9

    const/16 v6, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v4, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    iget v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->fillOrder:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    aget-byte v3, v2, v4

    if-ne v4, v0, :cond_0

    move v0, v1

    move v2, v1

    :goto_0
    iget v4, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    rsub-int/lit8 v7, v4, 0x8

    sub-int v4, p1, v7

    if-le v4, v6, :cond_8

    add-int/lit8 v4, v4, -0x8

    move v5, v6

    :goto_1
    iget v8, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    sget-object v8, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->table1:[I

    aget v8, v8, v7

    and-int/2addr v3, v8

    sub-int v7, p1, v7

    shl-int/2addr v3, v7

    sget-object v7, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->table2:[I

    aget v7, v7, v5

    and-int/2addr v2, v7

    rsub-int/lit8 v7, v5, 0x8

    ushr-int/2addr v2, v7

    if-eqz v4, :cond_6

    shl-int v1, v2, v4

    sget-object v2, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->table2:[I

    aget v2, v2, v4

    and-int/2addr v0, v2

    rsub-int/lit8 v2, v4, 0x8

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    iput v4, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    :goto_2
    or-int/2addr v0, v3

    return v0

    :cond_0
    add-int/lit8 v2, v4, 0x1

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v0, v0, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v2, v0, v2

    iget-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    add-int/lit8 v4, v4, 0x2

    aget-byte v0, v0, v4

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->fillOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    sget-object v2, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->flipTable:[B

    iget-object v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v2, v3

    if-ne v4, v0, :cond_3

    move v0, v1

    move v2, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v4, 0x1

    if-ne v2, v0, :cond_4

    sget-object v0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->flipTable:[B

    iget-object v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    aget-byte v0, v0, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->flipTable:[B

    iget-object v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v0, v2

    sget-object v0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->flipTable:[B

    iget-object v5, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v0, v0, v4

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "tag must be either 1 or 2."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-ne v5, v6, :cond_7

    iput v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    iget v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    move v0, v2

    goto :goto_2

    :cond_7
    iput v5, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    move v0, v2

    goto :goto_2

    :cond_8
    move v5, v4

    move v4, v1

    goto/16 :goto_1
.end method

.method private readEOL(Z)I
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->seekEOL()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EOL not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->fillBits:Z

    if-nez v1, :cond_2

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextNBits(I)I

    move-result v1

    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    invoke-direct {p0, v4}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextNBits(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    iput-boolean v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->fillBits:Z

    :goto_0
    return v0

    :cond_1
    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Scanline must begin with EOL code word."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    rsub-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextNBits(I)I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All fill bits preceding EOL code must be 0."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ge v1, v4, :cond_4

    invoke-direct {p0, v5}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextNBits(I)I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All fill bits preceding EOL code must be 0."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-direct {p0, v5}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextNBits(I)I

    move-result v1

    if-eqz p1, :cond_8

    and-int/lit16 v2, v1, 0xf0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_8

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->fillBits:Z

    invoke-direct {p0, v4}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    :cond_5
    :goto_1
    invoke-direct {p0, v0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v0

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "0 bits expected before EOL"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-direct {p0, v5}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextNBits(I)I

    move-result v1

    :cond_8
    if-ne v1, v0, :cond_6

    goto :goto_1
.end method

.method private seekEOL()Z
    .locals 6

    const/16 v5, 0xc

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v1, -0x1

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    add-int/2addr v2, v1

    :cond_0
    add-int/lit8 v1, v3, -0xc

    if-le v2, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v5}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextNBits(I)I

    move-result v1

    add-int/lit8 v2, v2, 0xc

    :goto_1
    if-eq v1, v0, :cond_2

    if-lt v2, v3, :cond_3

    :cond_2
    if-ne v1, v0, :cond_0

    invoke-direct {p0, v5}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    goto :goto_0

    :cond_3
    and-int/lit16 v1, v1, 0x7ff

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    or-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setToBlack([BIII)V
    .locals 6

    const/4 v5, 0x1

    mul-int/lit8 v0, p2, 0x8

    add-int/2addr v0, p3

    add-int v3, v0, p4

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v1, v0, 0x7

    if-lez v1, :cond_1

    rsub-int/lit8 v1, v1, 0x7

    shl-int v2, v5, v1

    aget-byte v1, p1, v4

    :goto_0
    if-lez v2, :cond_0

    if-lt v0, v3, :cond_2

    :cond_0
    aput-byte v1, p1, v4

    :cond_1
    shr-int/lit8 v1, v0, 0x3

    :goto_1
    add-int/lit8 v2, v3, -0x7

    if-lt v0, v2, :cond_3

    :goto_2
    if-lt v0, v3, :cond_4

    return-void

    :cond_2
    or-int/2addr v1, v2

    int-to-byte v1, v1

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v1, 0x1

    const/4 v4, -0x1

    aput-byte v4, p1, v1

    add-int/lit8 v0, v0, 0x8

    move v1, v2

    goto :goto_1

    :cond_4
    shr-int/lit8 v1, v0, 0x3

    aget-byte v2, p1, v1

    and-int/lit8 v4, v0, 0x7

    rsub-int/lit8 v4, v4, 0x7

    shl-int v4, v5, v4

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private updatePointer(I)V
    .locals 2

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    div-int/lit8 v1, p1, 0x8

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    rem-int/lit8 p1, p1, 0x8

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_1

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    :goto_0
    return-void

    :cond_1
    iput v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    goto :goto_0
.end method


# virtual methods
.method protected consumeEOL()Z
    .locals 3

    const/16 v2, 0xc

    const/4 v0, 0x1

    invoke-direct {p0, v2}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextNBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v2}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected decodeNextScanline([BII)V
    .locals 11

    const/16 v10, 0x9

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    move v0, v1

    :cond_0
    iget v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    if-lt p3, v3, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    aput p3, v0, v1

    :goto_1
    return-void

    :cond_1
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextNBits(I)I

    move-result v3

    sget-object v4, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->white:[S

    aget-short v4, v4, v3

    and-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v6, v4, 0x1

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0xc

    if-ne v6, v7, :cond_3

    invoke-direct {p0, v8}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v4

    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0xc

    or-int/2addr v3, v4

    sget-object v4, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->additionalMakeup:[S

    aget-short v3, v4, v3

    ushr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xfff

    add-int/2addr p3, v3

    rsub-int/lit8 v3, v4, 0x4

    invoke-direct {p0, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    :cond_2
    :goto_2
    if-nez v0, :cond_1

    iget v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    if-ne p3, v3, :cond_7

    invoke-direct {p0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->align()Z

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid code encountered."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v3, 0xf

    if-ne v6, v3, :cond_5

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    goto :goto_1

    :cond_5
    ushr-int/lit8 v3, v4, 0x5

    and-int/lit16 v3, v3, 0x7ff

    add-int/2addr p3, v3

    rsub-int/lit8 v3, v6, 0xa

    invoke-direct {p0, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    if-nez v5, :cond_2

    iget-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    iget v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    aput p3, v0, v3

    move v0, v2

    goto :goto_2

    :cond_6
    invoke-direct {p0, v9}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v3

    sget-object v4, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->initBlack:[S

    aget-short v3, v4, v3

    and-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0xf

    ushr-int/lit8 v3, v3, 0x5

    and-int/lit16 v3, v3, 0x7ff

    const/16 v5, 0x64

    if-ne v3, v5, :cond_a

    invoke-direct {p0, v10}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextNBits(I)I

    move-result v3

    sget-object v4, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->black:[S

    aget-short v3, v4, v3

    and-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, v3, 0x1

    and-int/lit8 v5, v5, 0xf

    ushr-int/lit8 v3, v3, 0x5

    and-int/lit16 v3, v3, 0x7ff

    const/16 v6, 0xc

    if-ne v5, v6, :cond_8

    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    invoke-direct {p0, v9}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v3

    sget-object v4, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->additionalMakeup:[S

    aget-short v3, v4, v3

    ushr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xfff

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->setToBlack([BIII)V

    add-int/2addr p3, v3

    rsub-int/lit8 v3, v4, 0x4

    invoke-direct {p0, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    :cond_7
    :goto_3
    if-eqz v0, :cond_6

    iget v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    if-ne p3, v3, :cond_0

    invoke-direct {p0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->align()Z

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0xf

    if-ne v5, v6, :cond_9

    invoke-direct {p0, v10}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->setToBlack([BIII)V

    add-int/2addr p3, v3

    rsub-int/lit8 v3, v5, 0x9

    invoke-direct {p0, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    if-nez v4, :cond_7

    iget-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    iget v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    aput p3, v0, v3

    move v0, v1

    goto :goto_3

    :cond_a
    const/16 v0, 0xc8

    if-ne v3, v0, :cond_b

    invoke-direct {p0, v8}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v0

    sget-object v3, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->twoBitBlack:[S

    aget-short v0, v3, v0

    ushr-int/lit8 v3, v0, 0x5

    and-int/lit16 v3, v3, 0x7ff

    ushr-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0xf

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->setToBlack([BIII)V

    add-int/2addr p3, v3

    rsub-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    iget-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    iget v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    aput p3, v0, v3

    move v0, v1

    goto :goto_3

    :cond_b
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->setToBlack([BIII)V

    add-int/2addr p3, v3

    rsub-int/lit8 v0, v4, 0x4

    invoke-direct {p0, v0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    iget-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    iget v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    aput p3, v0, v3

    move v0, v1

    goto :goto_3
.end method

.method public decodeT41D([B[BII)V
    .locals 3

    const/4 v0, 0x0

    iput-object p2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v2, v1, 0x8

    iput v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    iput v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    move v1, v0

    :goto_0
    if-lt v0, p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->consumeEOL()Z

    invoke-virtual {p0, p1, v1, p3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->decodeNextScanline([BII)V

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public decodeT42D([B[BII)V
    .locals 11

    iput-object p2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    iget v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v7, v0, 0x8

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    const/4 v0, 0x2

    new-array v8, v0, [I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->readEOL(Z)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "First scanline must be 1D encoded."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->decodeNextScanline([BII)V

    add-int v1, v0, v7

    const/4 v0, 0x1

    move v5, v0

    move v6, v1

    :goto_0
    if-lt v5, p4, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->readEOL(Z)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->prevChangingElems:[I

    iget-object v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    iput-object v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->prevChangingElems:[I

    iput-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    iput v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->lastChangingElement:I

    move v4, v1

    move v1, v2

    move v2, v0

    move v0, p3

    :goto_1
    iget v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    if-lt v0, v3, :cond_2

    iget-object v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    add-int/lit8 v3, v2, 0x1

    aput v0, v1, v2

    iput v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    :goto_2
    add-int v1, v6, v7

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, v4, v8}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->getNextChangingElement(IZ[I)V

    const/4 v1, 0x0

    aget v3, v8, v1

    const/4 v1, 0x1

    aget v1, v8, v1

    const/4 v9, 0x7

    invoke-direct {p0, v9}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v9

    sget-object v10, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->twoDCodes:[B

    aget-byte v9, v10, v9

    and-int/lit16 v9, v9, 0xff

    and-int/lit8 v10, v9, 0x78

    ushr-int/lit8 v10, v10, 0x3

    and-int/lit8 v9, v9, 0x7

    if-nez v10, :cond_4

    if-nez v4, :cond_3

    sub-int v3, v1, v0

    invoke-direct {p0, p1, v6, v0, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->setToBlack([BIII)V

    :cond_3
    rsub-int/lit8 v0, v9, 0x7

    invoke-direct {p0, v0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    move v0, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    if-ne v10, v1, :cond_6

    rsub-int/lit8 v1, v9, 0x7

    invoke-direct {p0, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->decodeWhiteCodeWord()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    add-int/lit8 v3, v2, 0x1

    aput v0, v1, v2

    invoke-direct {p0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->decodeBlackCodeWord()I

    move-result v1

    invoke-direct {p0, p1, v6, v0, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->setToBlack([BIII)V

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    add-int/lit8 v1, v3, 0x1

    aput v0, v2, v3

    :goto_3
    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->decodeBlackCodeWord()I

    move-result v1

    invoke-direct {p0, p1, v6, v0, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->setToBlack([BIII)V

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    add-int/lit8 v3, v2, 0x1

    aput v0, v1, v2

    invoke-direct {p0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->decodeWhiteCodeWord()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    add-int/lit8 v1, v3, 0x1

    aput v0, v2, v3

    goto :goto_3

    :cond_6
    const/16 v1, 0x8

    if-gt v10, v1, :cond_9

    add-int/lit8 v1, v10, -0x5

    add-int/2addr v1, v3

    iget-object v10, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    add-int/lit8 v3, v2, 0x1

    aput v1, v10, v2

    if-nez v4, :cond_7

    sub-int v2, v1, v0

    invoke-direct {p0, p1, v6, v0, v2}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->setToBlack([BIII)V

    :cond_7
    if-eqz v4, :cond_8

    const/4 v0, 0x0

    :goto_4
    rsub-int/lit8 v2, v9, 0x7

    invoke-direct {p0, v2}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    move v2, v3

    move v4, v0

    move v0, v1

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid code encountered while decoding 2D group 3 compressed data."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0, p1, v6, p3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->decodeNextScanline([BII)V

    goto/16 :goto_2
.end method

.method public declared-synchronized decodeT6([B[BII)V
    .locals 15

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->data:[B

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v10, v1, 0x8

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bitPointer:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->bytePointer:I

    const/4 v1, 0x2

    new-array v11, v1, [I

    iget-object v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    const/4 v2, 0x0

    iput v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    iget v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    iget v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    aput v3, v1, v2

    iget v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    iget v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    aput v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v8, v1

    move v9, v2

    :goto_0
    move/from16 v0, p4

    if-lt v8, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, -0x1

    const/4 v6, 0x1

    :try_start_1
    iget-object v12, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->prevChangingElems:[I

    iget-object v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    iput-object v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->prevChangingElems:[I

    iput-object v12, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->currChangingElems:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->lastChangingElement:I

    move/from16 v5, p3

    move v7, v1

    :goto_1
    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    if-lt v5, v1, :cond_1

    invoke-direct {p0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->align()Z

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    if-gt v2, v1, :cond_15

    add-int/lit8 v1, v2, 0x1

    aput v5, v12, v2

    :goto_2
    iput v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->changingElemSize:I

    add-int v2, v9, v10

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v9, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0, v7, v6, v11}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->getNextChangingElement(IZ[I)V

    const/4 v1, 0x0

    aget v3, v11, v1

    const/4 v1, 0x1

    aget v1, v11, v1

    const/4 v4, 0x7

    invoke-direct {p0, v4}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v4

    sget-object v13, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->twoDCodes:[B

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v13, v4, 0x78

    ushr-int/lit8 v13, v13, 0x3

    and-int/lit8 v4, v4, 0x7

    if-nez v13, :cond_4

    if-nez v6, :cond_3

    iget v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    if-le v1, v3, :cond_2

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    :cond_2
    sub-int v3, v1, v5

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9, v5, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->setToBlack([BIII)V

    :cond_3
    rsub-int/lit8 v3, v4, 0x7

    invoke-direct {p0, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    move v5, v1

    move v7, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    if-ne v13, v1, :cond_8

    rsub-int/lit8 v1, v4, 0x7

    invoke-direct {p0, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    if-eqz v6, :cond_6

    invoke-direct {p0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->decodeWhiteCodeWord()I

    move-result v1

    add-int v3, v5, v1

    add-int/lit8 v4, v2, 0x1

    aput v3, v12, v2

    invoke-direct {p0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->decodeBlackCodeWord()I

    move-result v1

    iget v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_5

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    sub-int/2addr v1, v3

    :cond_5
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9, v3, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->setToBlack([BIII)V

    add-int/2addr v1, v3

    add-int/lit8 v2, v4, 0x1

    aput v1, v12, v4

    :goto_3
    move v5, v1

    move v7, v1

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->decodeBlackCodeWord()I

    move-result v1

    iget v3, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    sub-int/2addr v3, v5

    if-le v1, v3, :cond_7

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    sub-int/2addr v1, v5

    :cond_7
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9, v5, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->setToBlack([BIII)V

    add-int/2addr v1, v5

    add-int/lit8 v3, v2, 0x1

    aput v1, v12, v2

    invoke-direct {p0}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->decodeWhiteCodeWord()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    aput v1, v12, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_8
    const/16 v1, 0x8

    if-gt v13, v1, :cond_c

    add-int/lit8 v1, v13, -0x5

    add-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    :try_start_2
    aput v1, v12, v2

    if-nez v6, :cond_a

    iget v2, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    if-le v1, v2, :cond_9

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I

    :cond_9
    sub-int v2, v1, v5

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9, v5, v2}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->setToBlack([BIII)V

    :cond_a
    move v2, v1

    if-eqz v6, :cond_b

    const/4 v1, 0x0

    :goto_4
    rsub-int/lit8 v4, v4, 0x7

    invoke-direct {p0, v4}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    move v5, v2

    move v6, v1

    move v7, v2

    move v2, v3

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x1

    goto :goto_4

    :cond_c
    const/16 v1, 0xb

    if-ne v13, v1, :cond_14

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v1

    const/4 v3, 0x7

    if-eq v1, v3, :cond_d

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid code encountered while decoding 2D group 4 compressed data."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    const/4 v4, 0x0

    const/4 v3, 0x0

    move v1, v3

    move v3, v5

    move v5, v2

    move v2, v4

    :goto_5
    if-eqz v1, :cond_f

    move v2, v5

    move v5, v3

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v2, v2, 0x1

    :cond_f
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v4

    const/4 v13, 0x1

    if-ne v4, v13, :cond_e

    const/4 v4, 0x5

    if-le v2, v4, :cond_19

    add-int/lit8 v4, v2, -0x6

    if-nez v6, :cond_18

    if-lez v4, :cond_18

    add-int/lit8 v2, v5, 0x1

    aput v3, v12, v5

    :goto_6
    add-int v5, v3, v4

    if-lez v4, :cond_10

    const/4 v6, 0x1

    :cond_10
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v1

    if-nez v1, :cond_11

    if-nez v6, :cond_17

    add-int/lit8 v1, v2, 0x1

    aput v5, v12, v2

    :goto_7
    const/4 v2, 0x1

    :goto_8
    const/4 v3, 0x1

    move v14, v1

    move v1, v2

    move v2, v14

    :goto_9
    const/4 v6, 0x5

    if-ne v4, v6, :cond_13

    if-nez v1, :cond_16

    add-int/lit8 v1, v2, 0x1

    aput v5, v12, v2

    :goto_a
    add-int v2, v5, v4

    const/4 v6, 0x1

    move v5, v1

    move v1, v3

    move v3, v2

    move v2, v4

    goto :goto_5

    :cond_11
    if-eqz v6, :cond_12

    add-int/lit8 v1, v2, 0x1

    aput v5, v12, v2

    move v2, v1

    :cond_12
    const/4 v1, 0x0

    move v14, v2

    move v2, v1

    move v1, v14

    goto :goto_8

    :cond_13
    add-int v1, v5, v4

    add-int/lit8 v5, v2, 0x1

    aput v1, v12, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9, v1, v2}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->setToBlack([BIII)V

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x0

    move v2, v4

    move v14, v3

    move v3, v1

    move v1, v14

    goto :goto_5

    :cond_14
    rsub-int/lit8 v1, v4, 0x7

    invoke-direct {p0, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->updatePointer(I)V

    iget v1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->w:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, v1

    goto/16 :goto_1

    :cond_15
    move v1, v2

    goto/16 :goto_2

    :cond_16
    move v1, v2

    goto :goto_a

    :cond_17
    move v1, v2

    goto :goto_7

    :cond_18
    move v2, v5

    goto :goto_6

    :cond_19
    move v4, v2

    move v2, v5

    move v5, v3

    move v3, v1

    move v1, v6

    goto :goto_9
.end method

.method public isAlign()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->align:Z

    return v0
.end method

.method public isFillBits()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->fillBits:Z

    return v0
.end method

.method public setAlign(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->align:Z

    return-void
.end method

.method public setFillBits(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->fillBits:Z

    return-void
.end method
