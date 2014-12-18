.class public Lbsh/ParserTokenManager;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/ParserConstants;


# static fields
.field static final jjbitVec0:[J

.field static final jjbitVec1:[J

.field static final jjbitVec3:[J

.field static final jjbitVec4:[J

.field static final jjbitVec5:[J

.field static final jjbitVec6:[J

.field static final jjbitVec7:[J

.field static final jjbitVec8:[J

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field protected input_stream:Lbsh/JavaCharStream;

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v0, v2, [J

    fill-array-data v0, :array_358

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec0:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_36c

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec1:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_380

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec3:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_394

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec4:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_3a8

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec5:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_3bc

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec6:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_3d0

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec7:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_3e4

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec8:[J

    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_3f8

    sput-object v0, Lbsh/ParserTokenManager;->jjnextStates:[I

    const/16 v0, 0x86

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v5

    aput-object v3, v0, v6

    const/4 v1, 0x2

    aput-object v3, v0, v1

    aput-object v3, v0, v4

    aput-object v3, v0, v2

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v2, "abstract"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "break"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "class"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "byte"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "case"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "catch"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "char"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "const"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "continue"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "default"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "do"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "double"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "else"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "enum"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "extends"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "false"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "final"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "finally"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "for"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "goto"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "if"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "implements"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "import"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "instanceof"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "interface"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "long"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "native"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "new"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "package"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "private"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "protected"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "public"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "return"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "short"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "static"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "strictfp"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "switch"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "synchronized"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "transient"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "throw"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "throws"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "true"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "try"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "void"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "volatile"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "while"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    aput-object v3, v0, v1

    const/16 v1, 0x3f

    aput-object v3, v0, v1

    const/16 v1, 0x40

    aput-object v3, v0, v1

    const/16 v1, 0x41

    aput-object v3, v0, v1

    const/16 v1, 0x42

    aput-object v3, v0, v1

    const/16 v1, 0x43

    aput-object v3, v0, v1

    const/16 v1, 0x44

    aput-object v3, v0, v1

    const/16 v1, 0x45

    aput-object v3, v0, v1

    const/16 v1, 0x46

    aput-object v3, v0, v1

    const/16 v1, 0x47

    aput-object v3, v0, v1

    const/16 v1, 0x48

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "@gt"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "@lt"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "!"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "=="

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "<="

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "@lteq"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, ">="

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "@gteq"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "!="

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "||"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "@or"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "&&"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "@and"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "++"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "--"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "@bitwise_and"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "@bitwise_or"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "<<"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "@left_shift"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, ">>"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "@right_shift"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, ">>>"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "@right_unsigned_shift"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "+="

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "-="

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "*="

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "/="

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "&="

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "@and_assign"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "|="

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "@or_assign"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "^="

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "%="

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "<<="

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "@left_shift_assign"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, ">>="

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "@right_shift_assign"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, ">>>="

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "@right_unsigned_shift_assign"

    aput-object v2, v0, v1

    sput-object v0, Lbsh/ParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v5

    sput-object v0, Lbsh/ParserTokenManager;->lexStateNames:[Ljava/lang/String;

    new-array v0, v4, [J

    fill-array-data v0, :array_46e

    sput-object v0, Lbsh/ParserTokenManager;->jjtoToken:[J

    new-array v0, v4, [J

    fill-array-data v0, :array_47e

    sput-object v0, Lbsh/ParserTokenManager;->jjtoSkip:[J

    new-array v0, v4, [J

    fill-array-data v0, :array_48e

    sput-object v0, Lbsh/ParserTokenManager;->jjtoSpecial:[J

    return-void

    :array_358
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_36c
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_380
    .array-data 8
        0x1ff00000fffffffeL
        -0x4000
        0xffffffffL
        0x600000000000000L
    .end array-data

    :array_394
    .array-data 8
        0x0
        0x0
        0x0
        -0x80000000800001L
    .end array-data

    :array_3a8
    .array-data 8
        0x0
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3bc
    .array-data 8
        -0x1
        -0x1
        0xffff
        0x0
    .end array-data

    :array_3d0
    .array-data 8
        -0x1
        -0x1
        0x0
        0x0
    .end array-data

    :array_3e4
    .array-data 8
        0x3fffffffffffL
        0x0
        0x0
        0x0
    .end array-data

    :array_3f8
    .array-data 4
        0x25
        0x26
        0x2b
        0x2c
        0x2f
        0x30
        0xf
        0x38
        0x3d
        0x49
        0x1a
        0x1b
        0x1d
        0x11
        0x13
        0x34
        0x36
        0x9
        0x39
        0x3a
        0x3c
        0x2
        0x3
        0x5
        0xb
        0xc
        0xf
        0x1a
        0x1b
        0x1f
        0x1d
        0x27
        0x28
        0xf
        0x2f
        0x30
        0xf
        0x3f
        0x40
        0x42
        0x45
        0x46
        0x48
        0xd
        0xe
        0x14
        0x15
        0x17
        0x1c
        0x1e
        0x20
        0x29
        0x2a
        0x2d
        0x2e
        0x31
        0x32
    .end array-data

    :array_46e
    .array-data 8
        0x1ffffffffffffc01L
        -0xc3
        0x3f
    .end array-data

    :array_47e
    .array-data 8
        0x3fe
        0x0
        0x0
    .end array-data

    :array_48e
    .array-data 8
        0x380
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lbsh/JavaCharStream;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lbsh/ParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/16 v0, 0x4a

    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/ParserTokenManager;->jjrounds:[I

    const/16 v0, 0x94

    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iput v1, p0, Lbsh/ParserTokenManager;->curLexState:I

    iput v1, p0, Lbsh/ParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    return-void
.end method

.method public constructor <init>(Lbsh/JavaCharStream;I)V
    .registers 3

    invoke-direct {p0, p1}, Lbsh/ParserTokenManager;-><init>(Lbsh/JavaCharStream;)V

    invoke-virtual {p0, p2}, Lbsh/ParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final ReInitRounds()V
    .registers 4

    const v0, -0x7fffffff

    iput v0, p0, Lbsh/ParserTokenManager;->jjround:I

    const/16 v0, 0x4a

    :goto_7
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lbsh/ParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_7
.end method

.method private final jjAddStates(II)V
    .registers 6

    :goto_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lbsh/ParserTokenManager;->jjnextStates:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_13

    return-void

    :cond_13
    move p1, v0

    goto :goto_0
.end method

.method private static final jjCanMove_0(IIIJJ)Z
    .registers 12

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_12

    :cond_4
    :goto_4
    return v0

    :pswitch_5
    sget-object v1, Lbsh/ParserTokenManager;->jjbitVec0:[J

    aget-wide v1, v1, p2

    and-long/2addr v1, p5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method private static final jjCanMove_1(IIIJJ)Z
    .registers 13

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_1e

    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec1:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    :cond_10
    :goto_10
    return v0

    :pswitch_11
    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :cond_1c
    move v0, v1

    goto :goto_10

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11
    .end packed-switch
.end method

.method private static final jjCanMove_2(IIIJJ)Z
    .registers 13

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_4a

    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec3:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_48

    :cond_10
    :goto_10
    return v0

    :sswitch_11
    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec4:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_1c
    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec5:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_27
    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec6:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_32
    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec7:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_3d
    sget-object v2, Lbsh/ParserTokenManager;->jjbitVec8:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :cond_48
    move v0, v1

    goto :goto_10

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_11
        0x30 -> :sswitch_1c
        0x31 -> :sswitch_27
        0x33 -> :sswitch_32
        0x3d -> :sswitch_3d
    .end sparse-switch
.end method

.method private final jjCheckNAdd(I)V
    .registers 5

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lbsh/ParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjrounds:[I

    iget v1, p0, Lbsh/ParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_18
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .registers 4

    sget-object v0, Lbsh/ParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    sget-object v0, Lbsh/ParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .registers 4

    :goto_0
    sget-object v0, Lbsh/ParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_c

    return-void

    :cond_c
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .registers 3

    invoke-direct {p0, p1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .registers 16

    const/4 v2, 0x0

    const/16 v0, 0x4a

    iput v0, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    move v7, v0

    move v8, v1

    move v9, v2

    :goto_11
    iget v0, p0, Lbsh/ParserTokenManager;->jjround:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/ParserTokenManager;->jjround:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1f

    invoke-direct {p0}, Lbsh/ParserTokenManager;->ReInitRounds()V

    :cond_1f
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v1, 0x40

    if-ge v0, v1, :cond_5d3

    const-wide/16 v0, 0x1

    iget-char v2, p0, Lbsh/ParserTokenManager;->curChar:C

    shl-long v1, v0, v2

    :cond_2b
    iget-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_848

    :cond_34
    :goto_34
    :pswitch_34
    if-ne v8, v9, :cond_2b

    move v0, v7

    :goto_37
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_43

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_43
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    iput v9, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v9, 0x4a

    if-ne v1, v2, :cond_834

    :goto_4d
    return p2

    :pswitch_4e
    const-wide v3, 0x1ffffffffL

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_7b

    const/4 v0, 0x6

    if-le v7, v0, :cond_5e

    const/4 v7, 0x6

    :cond_5e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    move v0, v7

    :goto_63
    const-wide/high16 v3, 0x3fe000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_eb

    const/16 v3, 0x3c

    if-le v0, v3, :cond_72

    const/16 v0, 0x3c

    :cond_72
    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {p0, v3, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    move v7, v0

    goto :goto_34

    :cond_7b
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8b

    const/4 v0, 0x0

    const/4 v3, 0x6

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    move v0, v7

    goto :goto_63

    :cond_8b
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_99

    const/4 v0, 0x7

    const/16 v3, 0x9

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    move v0, v7

    goto :goto_63

    :cond_99
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x24

    if-ne v0, v3, :cond_ac

    const/16 v0, 0x45

    if-le v7, v0, :cond_a5

    const/16 v7, 0x45

    :cond_a5
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    move v0, v7

    goto :goto_63

    :cond_ac
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x22

    if-ne v0, v3, :cond_bb

    const/16 v0, 0xa

    const/16 v3, 0xc

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    move v0, v7

    goto :goto_63

    :cond_bb
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x27

    if-ne v0, v3, :cond_ca

    const/16 v0, 0xd

    const/16 v3, 0xe

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    move v0, v7

    goto :goto_63

    :cond_ca
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_d7

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    move v0, v7

    goto :goto_63

    :cond_d7
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x23

    if-ne v0, v3, :cond_e8

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x1

    aput v4, v0, v3

    :cond_e8
    move v0, v7

    goto/16 :goto_63

    :cond_eb
    iget-char v3, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v4, 0x30

    if-ne v3, v4, :cond_844

    const/16 v3, 0x3c

    if-le v0, v3, :cond_f7

    const/16 v0, 0x3c

    :cond_f7
    const/16 v3, 0xf

    const/16 v4, 0x11

    invoke-direct {p0, v3, v4}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    move v7, v0

    goto/16 :goto_34

    :pswitch_101
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_120

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x43

    aput v4, v0, v3

    :cond_113
    :goto_113
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_34

    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :cond_120
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_113

    const/4 v0, 0x7

    if-le v7, v0, :cond_12a

    const/4 v7, 0x7

    :cond_12a
    const/16 v0, 0x12

    const/16 v3, 0x14

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_113

    :pswitch_132
    const-wide v3, 0x1ffffffffL

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/4 v0, 0x6

    if-le v7, v0, :cond_142

    const/4 v7, 0x6

    :cond_142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_148
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x21

    if-ne v0, v3, :cond_34

    const/16 v0, 0x15

    const/16 v3, 0x17

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_157
    const-wide/16 v3, -0x2401

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x15

    const/16 v3, 0x17

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_169
    const-wide/16 v3, 0x2400

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x8

    if-le v7, v0, :cond_34

    const/16 v7, 0x8

    goto/16 :goto_34

    :pswitch_17a
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-ne v0, v3, :cond_34

    const/16 v0, 0x8

    if-le v7, v0, :cond_34

    const/16 v7, 0x8

    goto/16 :goto_34

    :pswitch_188
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v0, v3, :cond_34

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x4

    aput v4, v0, v3

    goto/16 :goto_34

    :pswitch_19b
    const-wide/high16 v3, 0x3fe000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x3c

    if-le v7, v0, :cond_1aa

    const/16 v7, 0x3c

    :cond_1aa
    const/16 v0, 0x8

    const/16 v3, 0x9

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_1b3
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x3c

    if-le v7, v0, :cond_1c2

    const/16 v7, 0x3c

    :cond_1c2
    const/16 v0, 0x8

    const/16 v3, 0x9

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_1cb
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_34

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_1d8
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x40

    if-le v7, v0, :cond_1e7

    const/16 v7, 0x40

    :cond_1e7
    const/16 v0, 0x18

    const/16 v3, 0x1a

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_1f0
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_203
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x40

    if-le v7, v0, :cond_212

    const/16 v7, 0x40

    :cond_212
    const/16 v0, 0xe

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_21b
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x27

    if-ne v0, v3, :cond_34

    const/16 v0, 0xd

    const/16 v3, 0xe

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_34

    :pswitch_22a
    const-wide v3, -0x8000002401L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_23d
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x27

    if-ne v0, v3, :cond_34

    const/16 v0, 0x42

    if-le v7, v0, :cond_34

    const/16 v7, 0x42

    goto/16 :goto_34

    :pswitch_24b
    const-wide v3, 0x8400000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_25e
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x16

    const/16 v3, 0x12

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_270
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_280
    const-wide/high16 v3, 0xf000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x18

    aput v4, v0, v3

    goto/16 :goto_34

    :pswitch_297
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_2a7
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x22

    if-ne v0, v3, :cond_34

    const/16 v0, 0xa

    const/16 v3, 0xc

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_2b6
    const-wide v3, -0x400002401L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0xa

    const/16 v3, 0xc

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_2cb
    const-wide v3, 0x8400000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0xa

    const/16 v3, 0xc

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_2e0
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x22

    if-ne v0, v3, :cond_34

    const/16 v0, 0x43

    if-le v7, v0, :cond_34

    const/16 v7, 0x43

    goto/16 :goto_34

    :pswitch_2ee
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x1b

    const/16 v3, 0x1e

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_300
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0xa

    const/16 v3, 0xc

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_312
    const-wide/high16 v3, 0xf000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x21

    aput v4, v0, v3

    goto/16 :goto_34

    :pswitch_329
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_339
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x24

    if-ne v0, v3, :cond_34

    const/16 v0, 0x45

    if-le v7, v0, :cond_345

    const/16 v7, 0x45

    :cond_345
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_34c
    const-wide v3, 0x3ff001000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x45

    if-le v7, v0, :cond_35e

    const/16 v7, 0x45

    :cond_35e
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_365
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    const/4 v3, 0x6

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_375
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x25

    const/16 v3, 0x26

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_387
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_34

    const/16 v0, 0x40

    if-le v7, v0, :cond_393

    const/16 v7, 0x40

    :cond_393
    const/16 v0, 0x1f

    const/16 v3, 0x21

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_39c
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x40

    if-le v7, v0, :cond_3ab

    const/16 v7, 0x40

    :cond_3ab
    const/16 v0, 0x1f

    const/16 v3, 0x21

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_3b4
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_3c7
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x40

    if-le v7, v0, :cond_3d6

    const/16 v7, 0x40

    :cond_3d6
    const/16 v0, 0x2a

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_3df
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x2b

    const/16 v3, 0x2c

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_3f1
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_404
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x40

    if-le v7, v0, :cond_413

    const/16 v7, 0x40

    :cond_413
    const/16 v0, 0x2e

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_41c
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x22

    const/16 v3, 0x24

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_42e
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_441
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x32

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_453
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x30

    if-ne v0, v3, :cond_34

    const/16 v0, 0x3c

    if-le v7, v0, :cond_45f

    const/16 v7, 0x3c

    :cond_45f
    const/16 v0, 0xf

    const/16 v3, 0x11

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_468
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x3c

    if-le v7, v0, :cond_477

    const/16 v7, 0x3c

    :cond_477
    const/16 v0, 0x35

    const/16 v3, 0x9

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_480
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x3c

    if-le v7, v0, :cond_48f

    const/16 v7, 0x3c

    :cond_48f
    const/16 v0, 0x36

    const/16 v3, 0x9

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_498
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_34

    const/4 v0, 0x7

    const/16 v3, 0x9

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_34

    :pswitch_4a6
    const-wide/16 v3, -0x2401

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/4 v0, 0x7

    if-le v7, v0, :cond_4b3

    const/4 v7, 0x7

    :cond_4b3
    const/16 v0, 0x12

    const/16 v3, 0x14

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_4bc
    const-wide/16 v3, 0x2400

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/4 v0, 0x7

    if-le v7, v0, :cond_34

    const/4 v7, 0x7

    goto/16 :goto_34

    :pswitch_4cb
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-ne v0, v3, :cond_34

    const/4 v0, 0x7

    if-le v7, v0, :cond_34

    const/4 v7, 0x7

    goto/16 :goto_34

    :pswitch_4d7
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v0, v3, :cond_34

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x3b

    aput v4, v0, v3

    goto/16 :goto_34

    :pswitch_4eb
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_34

    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_4f8
    const-wide v3, -0x40000000001L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x3e

    const/16 v3, 0x3f

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_50d
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_34

    const/16 v0, 0x25

    const/16 v3, 0x27

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_51c
    const-wide v3, -0x840000000001L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x41

    const/16 v3, 0x3f

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_531
    const-wide v3, -0x40000000001L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x41

    const/16 v3, 0x3f

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_546
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_34

    const/16 v0, 0x9

    if-le v7, v0, :cond_34

    const/16 v7, 0x9

    goto/16 :goto_34

    :pswitch_554
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_34

    const/16 v0, 0x44

    const/16 v3, 0x45

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_563
    const-wide v3, -0x40000000001L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x44

    const/16 v3, 0x45

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_578
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_34

    const/16 v0, 0x28

    const/16 v3, 0x2a

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_587
    const-wide v3, -0x840000000001L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x47

    const/16 v3, 0x45

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_59c
    const-wide v3, -0x40000000001L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x47

    const/16 v3, 0x45

    invoke-direct {p0, v0, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_5b1
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_34

    const/16 v0, 0x44

    if-le v7, v0, :cond_34

    const/16 v7, 0x44

    goto/16 :goto_34

    :pswitch_5bf
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_34

    iget-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x43

    aput v4, v0, v3

    goto/16 :goto_34

    :cond_5d3
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v1, 0x80

    if-ge v0, v1, :cond_74e

    const-wide/16 v0, 0x1

    iget-char v2, p0, Lbsh/ParserTokenManager;->curChar:C

    and-int/lit8 v2, v2, 0x3f

    shl-long/2addr v0, v2

    :cond_5e0
    iget-object v2, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v2, v2, v8

    sparse-switch v2, :sswitch_data_8e0

    :cond_5e9
    :goto_5e9
    if-ne v8, v9, :cond_5e0

    move v0, v7

    goto/16 :goto_37

    :sswitch_5ee
    const-wide v2, 0x7fffffe87fffffeL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5e9

    const/16 v2, 0x45

    if-le v7, v2, :cond_600

    const/16 v7, 0x45

    :cond_600
    const/16 v2, 0x23

    invoke-direct {p0, v2}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5e9

    :sswitch_606
    const/16 v2, 0x15

    const/16 v3, 0x17

    invoke-direct {p0, v2, v3}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto :goto_5e9

    :sswitch_60e
    const-wide v2, 0x100000001000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5e9

    const/16 v2, 0x3c

    if-le v7, v2, :cond_5e9

    const/16 v7, 0x3c

    goto :goto_5e9

    :sswitch_621
    const-wide v2, 0x2000000020L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5e9

    const/16 v2, 0x2b

    const/16 v3, 0x2c

    invoke-direct {p0, v2, v3}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto :goto_5e9

    :sswitch_635
    const-wide v2, 0x5000000050L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5e9

    const/16 v2, 0x40

    if-le v7, v2, :cond_5e9

    const/16 v7, 0x40

    goto :goto_5e9

    :sswitch_648
    const-wide/32 v2, -0x10000001

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5e9

    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5e9

    :sswitch_658
    iget-char v2, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_5e9

    const/16 v2, 0x2d

    const/16 v3, 0x2f

    invoke-direct {p0, v2, v3}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto :goto_5e9

    :sswitch_666
    const-wide v2, 0x14404410000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5e9

    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5e9

    :sswitch_679
    const-wide/32 v2, -0x10000001

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5e9

    const/16 v2, 0xa

    const/16 v3, 0xc

    invoke-direct {p0, v2, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5e9

    :sswitch_68c
    iget-char v2, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_5e9

    const/16 v2, 0x30

    const/16 v3, 0x32

    invoke-direct {p0, v2, v3}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5e9

    :sswitch_69b
    const-wide v2, 0x14404410000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5e9

    const/16 v2, 0xa

    const/16 v3, 0xc

    invoke-direct {p0, v2, v3}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5e9

    :sswitch_6b0
    const-wide v2, 0x2000000020L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5e9

    const/16 v2, 0x33

    const/16 v3, 0x34

    invoke-direct {p0, v2, v3}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5e9

    :sswitch_6c5
    const-wide v2, 0x2000000020L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5e9

    const/16 v2, 0x35

    const/16 v3, 0x36

    invoke-direct {p0, v2, v3}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5e9

    :sswitch_6da
    const-wide v2, 0x2000000020L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5e9

    const/16 v2, 0x37

    const/16 v3, 0x38

    invoke-direct {p0, v2, v3}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5e9

    :sswitch_6ef
    const-wide v2, 0x100000001000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5e9

    const/16 v2, 0x35

    invoke-direct {p0, v2}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5e9

    :sswitch_702
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5e9

    const/16 v2, 0x3c

    if-le v7, v2, :cond_714

    const/16 v7, 0x3c

    :cond_714
    const/16 v2, 0x35

    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5e9

    :sswitch_71d
    const/4 v2, 0x7

    if-le v7, v2, :cond_721

    const/4 v7, 0x7

    :cond_721
    const/16 v2, 0x12

    const/16 v3, 0x14

    invoke-direct {p0, v2, v3}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5e9

    :sswitch_72a
    const/16 v2, 0x3e

    const/16 v3, 0x3f

    invoke-direct {p0, v2, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5e9

    :sswitch_733
    const/16 v2, 0x41

    const/16 v3, 0x3f

    invoke-direct {p0, v2, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5e9

    :sswitch_73c
    const/16 v2, 0x44

    const/16 v3, 0x45

    invoke-direct {p0, v2, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5e9

    :sswitch_745
    const/16 v2, 0x47

    const/16 v3, 0x45

    invoke-direct {p0, v2, v3}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5e9

    :cond_74e
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    shr-int/lit8 v0, v0, 0x8

    shr-int/lit8 v1, v0, 0x6

    const-wide/16 v2, 0x1

    and-int/lit8 v4, v0, 0x3f

    shl-long v3, v2, v4

    iget-char v2, p0, Lbsh/ParserTokenManager;->curChar:C

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x6

    const-wide/16 v5, 0x1

    iget-char v10, p0, Lbsh/ParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long/2addr v5, v10

    :cond_767
    iget-object v10, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v10, v10, v8

    sparse-switch v10, :sswitch_data_942

    :cond_770
    :goto_770
    if-ne v8, v9, :cond_767

    move v0, v7

    goto/16 :goto_37

    :sswitch_775
    invoke-static/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_783

    const/4 v10, 0x6

    if-le v7, v10, :cond_77f

    const/4 v7, 0x6

    :cond_77f
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    :cond_783
    invoke-static/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_770

    const/16 v10, 0x45

    if-le v7, v10, :cond_78f

    const/16 v7, 0x45

    :cond_78f
    const/16 v10, 0x23

    invoke-direct {p0, v10}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_770

    :sswitch_795
    invoke-static/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_770

    const/4 v10, 0x6

    if-le v7, v10, :cond_79f

    const/4 v7, 0x6

    :cond_79f
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_770

    :sswitch_7a4
    invoke-static/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_770

    const/16 v10, 0x15

    const/16 v11, 0x17

    invoke-direct {p0, v10, v11}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto :goto_770

    :sswitch_7b2
    invoke-static/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_770

    iget-object v10, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v11, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x12

    aput v12, v10, v11

    goto :goto_770

    :sswitch_7c5
    invoke-static/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_770

    const/16 v10, 0xa

    const/16 v11, 0xc

    invoke-direct {p0, v10, v11}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto :goto_770

    :sswitch_7d3
    invoke-static/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_770

    const/16 v10, 0x45

    if-le v7, v10, :cond_7df

    const/16 v7, 0x45

    :cond_7df
    const/16 v10, 0x23

    invoke-direct {p0, v10}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_770

    :sswitch_7e5
    invoke-static/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_770

    const/4 v10, 0x7

    if-le v7, v10, :cond_7ef

    const/4 v7, 0x7

    :cond_7ef
    const/16 v10, 0x12

    const/16 v11, 0x14

    invoke-direct {p0, v10, v11}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_770

    :sswitch_7f8
    invoke-static/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_770

    const/16 v10, 0x3e

    const/16 v11, 0x3f

    invoke-direct {p0, v10, v11}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_770

    :sswitch_807
    invoke-static/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_770

    const/16 v10, 0x41

    const/16 v11, 0x3f

    invoke-direct {p0, v10, v11}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_770

    :sswitch_816
    invoke-static/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_770

    const/16 v10, 0x44

    const/16 v11, 0x45

    invoke-direct {p0, v10, v11}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_770

    :sswitch_825
    invoke-static/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_770

    const/16 v10, 0x47

    const/16 v11, 0x45

    invoke-direct {p0, v10, v11}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_770

    :cond_834
    :try_start_834
    iget-object v3, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_83c
    .catch Ljava/io/IOException; {:try_start_834 .. :try_end_83c} :catch_841

    move v7, v0

    move v8, v1

    move v9, v2

    goto/16 :goto_11

    :catch_841
    move-exception v0

    goto/16 :goto_4d

    :cond_844
    move v7, v0

    goto/16 :goto_34

    nop

    :pswitch_data_848
    .packed-switch 0x0
        :pswitch_132
        :pswitch_148
        :pswitch_157
        :pswitch_169
        :pswitch_17a
        :pswitch_188
        :pswitch_4e
        :pswitch_19b
        :pswitch_1b3
        :pswitch_34
        :pswitch_1cb
        :pswitch_1d8
        :pswitch_34
        :pswitch_1f0
        :pswitch_203
        :pswitch_34
        :pswitch_21b
        :pswitch_22a
        :pswitch_23d
        :pswitch_34
        :pswitch_24b
        :pswitch_25e
        :pswitch_270
        :pswitch_280
        :pswitch_297
        :pswitch_2a7
        :pswitch_2b6
        :pswitch_34
        :pswitch_2cb
        :pswitch_2e0
        :pswitch_2ee
        :pswitch_300
        :pswitch_312
        :pswitch_329
        :pswitch_339
        :pswitch_34c
        :pswitch_365
        :pswitch_375
        :pswitch_387
        :pswitch_39c
        :pswitch_34
        :pswitch_3b4
        :pswitch_3c7
        :pswitch_3df
        :pswitch_34
        :pswitch_3f1
        :pswitch_404
        :pswitch_41c
        :pswitch_34
        :pswitch_42e
        :pswitch_441
        :pswitch_453
        :pswitch_34
        :pswitch_468
        :pswitch_480
        :pswitch_498
        :pswitch_101
        :pswitch_4a6
        :pswitch_4bc
        :pswitch_4cb
        :pswitch_4d7
        :pswitch_4eb
        :pswitch_4f8
        :pswitch_50d
        :pswitch_51c
        :pswitch_531
        :pswitch_546
        :pswitch_554
        :pswitch_563
        :pswitch_578
        :pswitch_587
        :pswitch_59c
        :pswitch_5b1
        :pswitch_5bf
    .end packed-switch

    :sswitch_data_8e0
    .sparse-switch
        0x2 -> :sswitch_606
        0x6 -> :sswitch_5ee
        0x9 -> :sswitch_60e
        0xc -> :sswitch_621
        0xf -> :sswitch_635
        0x11 -> :sswitch_648
        0x13 -> :sswitch_658
        0x14 -> :sswitch_666
        0x1a -> :sswitch_679
        0x1b -> :sswitch_68c
        0x1c -> :sswitch_69b
        0x23 -> :sswitch_5ee
        0x28 -> :sswitch_6b0
        0x2c -> :sswitch_6c5
        0x30 -> :sswitch_6da
        0x34 -> :sswitch_6ef
        0x35 -> :sswitch_702
        0x39 -> :sswitch_71d
        0x3e -> :sswitch_72a
        0x40 -> :sswitch_733
        0x41 -> :sswitch_733
        0x44 -> :sswitch_73c
        0x46 -> :sswitch_745
        0x47 -> :sswitch_745
    .end sparse-switch

    :sswitch_data_942
    .sparse-switch
        0x0 -> :sswitch_795
        0x2 -> :sswitch_7a4
        0x6 -> :sswitch_775
        0x11 -> :sswitch_7b2
        0x1a -> :sswitch_7c5
        0x22 -> :sswitch_7d3
        0x23 -> :sswitch_7d3
        0x39 -> :sswitch_7e5
        0x3e -> :sswitch_7f8
        0x40 -> :sswitch_807
        0x41 -> :sswitch_807
        0x44 -> :sswitch_816
        0x46 -> :sswitch_825
        0x47 -> :sswitch_825
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .registers 13

    const-wide v3, 0x80000000L

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_21a

    const/4 v0, 0x6

    invoke-direct {p0, v0, v5}, Lbsh/ParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_12
    return v0

    :sswitch_13
    const/4 v0, 0x2

    invoke-direct {p0, v5, v0, v5}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_12

    :sswitch_19
    const/4 v0, 0x5

    invoke-direct {p0, v5, v0, v5}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_12

    :sswitch_1f
    const/4 v0, 0x4

    invoke-direct {p0, v5, v0, v5}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_12

    :sswitch_25
    const/4 v0, 0x3

    invoke-direct {p0, v5, v0, v5}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_12

    :sswitch_2b
    const/4 v0, 0x1

    invoke-direct {p0, v5, v0, v5}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_12

    :sswitch_31
    const/16 v0, 0x56

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    move-object v0, p0

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto :goto_12

    :sswitch_3c
    const/16 v0, 0x6f

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v3, -0x8000000000000000L

    move-object v0, p0

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto :goto_12

    :sswitch_49
    const/16 v0, 0x6a

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide v3, 0x400000400000000L

    move-object v0, p0

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto :goto_12

    :sswitch_59
    const/16 v0, 0x48

    invoke-direct {p0, v5, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_12

    :sswitch_60
    const/16 v0, 0x49

    invoke-direct {p0, v5, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_12

    :sswitch_67
    const/16 v0, 0x68

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v3, 0x100000000000000L

    move-object v0, p0

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto :goto_12

    :sswitch_74
    const/16 v0, 0x66

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide v3, 0x40001000000000L

    move-object v0, p0

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto :goto_12

    :sswitch_84
    const/16 v0, 0x4f

    invoke-direct {p0, v5, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_12

    :sswitch_8b
    const/16 v0, 0x67

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide v3, 0x80002000000000L

    move-object v0, p0

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_9c
    const/16 v0, 0x50

    const/16 v1, 0xb

    invoke-direct {p0, v5, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_12

    :sswitch_a6
    const/16 v0, 0x69

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v3, 0x200000000000000L

    move-object v0, p0

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_b4
    const/16 v0, 0x59

    invoke-direct {p0, v5, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_12

    :sswitch_bc
    const/16 v0, 0x4e

    invoke-direct {p0, v5, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_12

    :sswitch_c4
    const/16 v0, 0x54

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide v3, 0x1000008000000L

    const-wide/16 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_d6
    const/16 v0, 0x51

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide/32 v3, 0x4000000

    move-object v0, p0

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_e5
    const/16 v0, 0x52

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide v3, 0x14000020000000L

    const-wide/16 v5, 0x14

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_f7
    const/16 v0, 0x58

    invoke-direct {p0, v5, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_12

    :sswitch_ff
    const-wide v3, 0x282a280a50280000L

    const-wide/16 v5, 0x2a

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_10d
    const/16 v0, 0x4c

    invoke-direct {p0, v5, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_12

    :sswitch_115
    const/16 v0, 0x4d

    invoke-direct {p0, v5, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_12

    :sswitch_11d
    const/16 v0, 0x6e

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v3, 0x4000000000000000L

    move-object v0, p0

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_12b
    const-wide/16 v4, 0x400

    move-object v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_136
    const-wide/16 v4, 0x5800

    move-object v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_141
    const-wide/32 v4, 0xfa000

    move-object v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_14d
    const-wide/32 v4, 0x700000

    move-object v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_159
    const-wide/32 v4, 0x3800000

    move-object v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_165
    const-wide/32 v4, 0x7c000000

    move-object v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_171
    move-object v5, p0

    move-wide v6, v3

    move-wide v8, v1

    move-wide v10, v1

    invoke-direct/range {v5 .. v11}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_17b
    const-wide v4, 0x3f00000000L

    move-object v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_189
    const-wide v4, 0x4000000000L

    move-object v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_197
    const-wide v4, 0x38000000000L

    move-object v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_1a5
    const-wide v4, 0x3c0000000000L

    move-object v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_1b3
    const-wide v4, 0x400000000000L

    move-object v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_1c1
    const-wide v4, 0xf800000000000L

    move-object v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_1cf
    const-wide/high16 v4, 0x1f0000000000000L

    move-object v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_1da
    const-wide/high16 v4, 0x600000000000000L

    move-object v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_1e5
    const-wide/high16 v4, 0x800000000000000L

    move-object v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_1f0
    const/16 v0, 0x4a

    invoke-direct {p0, v5, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_12

    :sswitch_1f8
    const/16 v0, 0x6c

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const-wide v3, 0x1000000100000000L

    move-object v0, p0

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    goto/16 :goto_12

    :sswitch_209
    const/16 v0, 0x4b

    invoke-direct {p0, v5, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_12

    :sswitch_211
    const/16 v0, 0x57

    invoke-direct {p0, v5, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_12

    nop

    :sswitch_data_21a
    .sparse-switch
        0x9 -> :sswitch_13
        0xa -> :sswitch_19
        0xc -> :sswitch_1f
        0xd -> :sswitch_25
        0x20 -> :sswitch_2b
        0x21 -> :sswitch_31
        0x25 -> :sswitch_3c
        0x26 -> :sswitch_49
        0x28 -> :sswitch_59
        0x29 -> :sswitch_60
        0x2a -> :sswitch_67
        0x2b -> :sswitch_74
        0x2c -> :sswitch_84
        0x2d -> :sswitch_8b
        0x2e -> :sswitch_9c
        0x2f -> :sswitch_a6
        0x3a -> :sswitch_b4
        0x3b -> :sswitch_bc
        0x3c -> :sswitch_c4
        0x3d -> :sswitch_d6
        0x3e -> :sswitch_e5
        0x3f -> :sswitch_f7
        0x40 -> :sswitch_ff
        0x5b -> :sswitch_10d
        0x5d -> :sswitch_115
        0x5e -> :sswitch_11d
        0x61 -> :sswitch_12b
        0x62 -> :sswitch_136
        0x63 -> :sswitch_141
        0x64 -> :sswitch_14d
        0x65 -> :sswitch_159
        0x66 -> :sswitch_165
        0x67 -> :sswitch_171
        0x69 -> :sswitch_17b
        0x6c -> :sswitch_189
        0x6e -> :sswitch_197
        0x70 -> :sswitch_1a5
        0x72 -> :sswitch_1b3
        0x73 -> :sswitch_1c1
        0x74 -> :sswitch_1cf
        0x76 -> :sswitch_1da
        0x77 -> :sswitch_1e5
        0x7b -> :sswitch_1f0
        0x7c -> :sswitch_1f8
        0x7d -> :sswitch_209
        0x7e -> :sswitch_211
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa10_0(JJJJJJ)I
    .registers 35

    and-long v3, p3, p1

    and-long v5, p7, p5

    or-long v1, v3, v5

    and-long v7, p11, p9

    or-long/2addr v1, v7

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-nez v1, :cond_1e

    const/16 v2, 0x8

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1d
    return v1

    :cond_1e
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2a} :catch_3a

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_e0

    :cond_31
    const/16 v2, 0x9

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1d

    :catch_3a
    move-exception v1

    const/16 v2, 0x9

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v1, 0xa

    goto :goto_1d

    :sswitch_45
    const-wide/high16 v12, 0x8000000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa11_0(JJJJJJ)I

    move-result v1

    goto :goto_1d

    :sswitch_56
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x8000000000000L

    const-wide/16 v20, 0x8

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa11_0(JJJJJJ)I

    move-result v1

    goto :goto_1d

    :sswitch_67
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x20000000000000L

    const-wide/16 v20, 0x20

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa11_0(JJJJJJ)I

    move-result v1

    goto :goto_1d

    :sswitch_78
    const-wide/high16 v1, 0x800000000000000L

    and-long/2addr v1, v5

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_8c

    const/16 v1, 0xa

    const/16 v2, 0x7b

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_1d

    :cond_8c
    const-wide/16 v12, 0x0

    const-wide v16, 0x80000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa11_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1d

    :sswitch_a1
    const-wide v1, 0x200000000000L

    and-long/2addr v1, v5

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_31

    const/16 v1, 0xa

    const/16 v2, 0x6d

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_1d

    :sswitch_b9
    const-wide/high16 v1, 0x2000000000000L

    and-long/2addr v1, v5

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_ce

    const/16 v1, 0x71

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0xa

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_ce
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x2

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa11_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1d

    :sswitch_data_e0
    .sparse-switch
        0x65 -> :sswitch_45
        0x66 -> :sswitch_56
        0x69 -> :sswitch_67
        0x6e -> :sswitch_78
        0x72 -> :sswitch_a1
        0x74 -> :sswitch_b9
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa11_0(JJJJJJ)I
    .registers 35

    and-long v3, p3, p1

    and-long v5, p7, p5

    or-long v1, v3, v5

    and-long v7, p11, p9

    or-long/2addr v1, v7

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-nez v1, :cond_1e

    const/16 v2, 0x9

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1d
    return v1

    :cond_1e
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2a} :catch_3a

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_bc

    :cond_31
    const/16 v2, 0xa

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1d

    :catch_3a
    move-exception v1

    const/16 v2, 0xa

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v1, 0xb

    goto :goto_1d

    :sswitch_45
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x2

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa12_0(JJJJJJ)I

    move-result v1

    goto :goto_1d

    :sswitch_56
    const-wide/high16 v1, 0x8000000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_6c

    const/16 v1, 0xb

    const/16 v2, 0x33

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_1d

    :cond_6c
    const-wide v1, 0x80000000000L

    and-long/2addr v1, v5

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_31

    const/16 v1, 0xb

    const/16 v2, 0x6b

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_1d

    :sswitch_83
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x20000000000000L

    const-wide/16 v20, 0x20

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa12_0(JJJJJJ)I

    move-result v1

    goto :goto_1d

    :sswitch_94
    const-wide/high16 v1, 0x8000000000000L

    and-long/2addr v1, v5

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_a9

    const/16 v1, 0x73

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0xb

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_a9
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x8

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa12_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1d

    nop

    :sswitch_data_bc
    .sparse-switch
        0x5f -> :sswitch_45
        0x64 -> :sswitch_56
        0x67 -> :sswitch_83
        0x74 -> :sswitch_94
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa12_0(JJJJJJ)I
    .registers 31

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long/2addr v1, v5

    and-long v7, p11, p9

    or-long/2addr v1, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1d

    const/16 v2, 0xa

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1c
    return v1

    :cond_1d
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_3b

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_70

    const/16 v2, 0xb

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1c

    :catch_3b
    move-exception v1

    const/16 v2, 0xb

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v1, 0xc

    goto :goto_1c

    :sswitch_48
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x8

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa13_0(JJJJ)I

    move-result v1

    goto :goto_1c

    :sswitch_55
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x2

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa13_0(JJJJ)I

    move-result v1

    goto :goto_1c

    :sswitch_62
    const-wide/high16 v12, 0x20000000000000L

    const-wide/16 v16, 0x20

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa13_0(JJJJ)I

    move-result v1

    goto :goto_1c

    nop

    :sswitch_data_70
    .sparse-switch
        0x5f -> :sswitch_48
        0x61 -> :sswitch_55
        0x6e -> :sswitch_62
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa13_0(JJJJ)I
    .registers 27

    and-long v5, p3, p1

    and-long v7, p7, p5

    or-long v1, v5, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b

    const/16 v2, 0xb

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1a
    return v1

    :cond_1b
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_27} :catch_39

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_6e

    const/16 v2, 0xc

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1a

    :catch_39
    move-exception v1

    const/16 v2, 0xc

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v1, 0xd

    goto :goto_1a

    :sswitch_46
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x8

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa14_0(JJJJ)I

    move-result v1

    goto :goto_1a

    :sswitch_53
    const-wide/high16 v12, 0x20000000000000L

    const-wide/16 v16, 0x20

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa14_0(JJJJ)I

    move-result v1

    goto :goto_1a

    :sswitch_60
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x2

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa14_0(JJJJ)I

    move-result v1

    goto :goto_1a

    nop

    :sswitch_data_6e
    .sparse-switch
        0x61 -> :sswitch_46
        0x65 -> :sswitch_53
        0x73 -> :sswitch_60
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa14_0(JJJJ)I
    .registers 27

    and-long v5, p3, p1

    and-long v7, p7, p5

    or-long v1, v5, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b

    const/16 v2, 0xc

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1a
    return v1

    :cond_1b
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_27} :catch_39

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_60

    const/16 v2, 0xd

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1a

    :catch_39
    move-exception v1

    const/16 v2, 0xd

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v1, 0xe

    goto :goto_1a

    :sswitch_46
    const-wide/high16 v12, 0x20000000000000L

    const-wide/16 v16, 0x20

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa15_0(JJJJ)I

    move-result v1

    goto :goto_1a

    :sswitch_53
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0xa

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa15_0(JJJJ)I

    move-result v1

    goto :goto_1a

    :sswitch_data_60
    .sparse-switch
        0x64 -> :sswitch_46
        0x73 -> :sswitch_53
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa15_0(JJJJ)I
    .registers 27

    and-long v5, p3, p1

    and-long v7, p7, p5

    or-long v1, v5, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b

    const/16 v2, 0xd

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1a
    return v1

    :cond_1b
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_27} :catch_39

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_6e

    const/16 v2, 0xe

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1a

    :catch_39
    move-exception v1

    const/16 v2, 0xe

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v1, 0xf

    goto :goto_1a

    :sswitch_46
    const-wide/high16 v12, 0x20000000000000L

    const-wide/16 v16, 0x20

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa16_0(JJJJ)I

    move-result v1

    goto :goto_1a

    :sswitch_53
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x2

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa16_0(JJJJ)I

    move-result v1

    goto :goto_1a

    :sswitch_60
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x8

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa16_0(JJJJ)I

    move-result v1

    goto :goto_1a

    nop

    :sswitch_data_6e
    .sparse-switch
        0x5f -> :sswitch_46
        0x69 -> :sswitch_53
        0x73 -> :sswitch_60
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa16_0(JJJJ)I
    .registers 27

    and-long v5, p3, p1

    and-long v7, p7, p5

    or-long v1, v5, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b

    const/16 v2, 0xe

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1a
    return v1

    :cond_1b
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_27} :catch_39

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_6e

    const/16 v2, 0xf

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1a

    :catch_39
    move-exception v1

    const/16 v2, 0xf

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v1, 0x10

    goto :goto_1a

    :sswitch_46
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x2

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa17_0(JJJJ)I

    move-result v1

    goto :goto_1a

    :sswitch_53
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x8

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa17_0(JJJJ)I

    move-result v1

    goto :goto_1a

    :sswitch_60
    const-wide/high16 v12, 0x20000000000000L

    const-wide/16 v16, 0x20

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa17_0(JJJJ)I

    move-result v1

    goto :goto_1a

    nop

    :sswitch_data_6e
    .sparse-switch
        0x67 -> :sswitch_46
        0x69 -> :sswitch_53
        0x73 -> :sswitch_60
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa17_0(JJJJ)I
    .registers 27

    and-long v5, p3, p1

    and-long v7, p7, p5

    or-long v1, v5, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b

    const/16 v2, 0xf

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1a
    return v1

    :cond_1b
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_27} :catch_39

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_74

    :cond_2e
    const/16 v2, 0x10

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1a

    :catch_39
    move-exception v1

    const/16 v2, 0x10

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v1, 0x11

    goto :goto_1a

    :sswitch_46
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x8

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa18_0(JJJJ)I

    move-result v1

    goto :goto_1a

    :sswitch_53
    const-wide/high16 v12, 0x20000000000000L

    const-wide/16 v16, 0x20

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa18_0(JJJJ)I

    move-result v1

    goto :goto_1a

    :sswitch_60
    const-wide/16 v1, 0x2

    and-long/2addr v1, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2e

    const/16 v1, 0x11

    const/16 v2, 0x81

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_1a

    :sswitch_data_74
    .sparse-switch
        0x67 -> :sswitch_46
        0x68 -> :sswitch_53
        0x6e -> :sswitch_60
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa18_0(JJJJ)I
    .registers 27

    and-long v5, p3, p1

    and-long v7, p7, p5

    or-long v1, v5, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b

    const/16 v2, 0x10

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1a
    return v1

    :cond_1b
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_27} :catch_39

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_68

    :cond_2e
    const/16 v2, 0x11

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1a

    :catch_39
    move-exception v1

    const/16 v2, 0x11

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v1, 0x12

    goto :goto_1a

    :sswitch_46
    const-wide/high16 v12, 0x20000000000000L

    const-wide/16 v16, 0x20

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa19_0(JJJJ)I

    move-result v1

    goto :goto_1a

    :sswitch_53
    const-wide/16 v1, 0x8

    and-long/2addr v1, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2e

    const/16 v1, 0x12

    const/16 v2, 0x83

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_1a

    nop

    :sswitch_data_68
    .sparse-switch
        0x69 -> :sswitch_46
        0x6e -> :sswitch_53
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa19_0(JJJJ)I
    .registers 27

    and-long v5, p3, p1

    and-long v7, p7, p5

    or-long v1, v5, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b

    const/16 v2, 0x11

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1a
    return v1

    :cond_1b
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_27} :catch_39

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_54

    const/16 v2, 0x12

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1a

    :catch_39
    move-exception v1

    const/16 v2, 0x12

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v1, 0x13

    goto :goto_1a

    :pswitch_46
    const-wide/high16 v12, 0x20000000000000L

    const-wide/16 v16, 0x20

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa20_0(JJJJ)I

    move-result v1

    goto :goto_1a

    nop

    :pswitch_data_54
    .packed-switch 0x66
        :pswitch_46
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa1_0(JJJ)I
    .registers 20

    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_19

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_31e

    :cond_d
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_18
    return v0

    :catch_19
    move-exception v0

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v0, 0x1

    goto :goto_18

    :sswitch_26
    const-wide v0, 0x400000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/16 v1, 0x62

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_18

    :sswitch_3b
    const-wide v0, 0x1000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_18

    :sswitch_50
    const-wide v0, 0x2000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_18

    :sswitch_65
    const-wide/high16 v0, 0x1000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_76

    const/16 v0, 0x70

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_76
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto :goto_18

    :sswitch_87
    const-wide/32 v0, 0x4000000

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9b

    const/4 v0, 0x1

    const/16 v1, 0x5a

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_18

    :cond_9b
    const-wide/32 v0, 0x8000000

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_af

    const/4 v0, 0x1

    const/16 v1, 0x5b

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_18

    :cond_af
    const-wide/32 v0, 0x20000000

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c3

    const/4 v0, 0x1

    const/16 v1, 0x5d

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_18

    :cond_c3
    const-wide v0, 0x80000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d9

    const/4 v0, 0x1

    const/16 v1, 0x5f

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_18

    :cond_d9
    const-wide/high16 v0, 0x40000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ec

    const/4 v0, 0x1

    const/16 v1, 0x76

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_18

    :cond_ec
    const-wide/high16 v0, 0x80000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ff

    const/4 v0, 0x1

    const/16 v1, 0x77

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_18

    :cond_ff
    const-wide/high16 v0, 0x100000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_112

    const/4 v0, 0x1

    const/16 v1, 0x78

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_18

    :cond_112
    const-wide/high16 v0, 0x200000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_125

    const/4 v0, 0x1

    const/16 v1, 0x79

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_18

    :cond_125
    const-wide/high16 v0, 0x400000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_138

    const/4 v0, 0x1

    const/16 v1, 0x7a

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_18

    :cond_138
    const-wide/high16 v0, 0x1000000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14b

    const/4 v0, 0x1

    const/16 v1, 0x7c

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_18

    :cond_14b
    const-wide/high16 v0, 0x4000000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15e

    const/4 v0, 0x1

    const/16 v1, 0x7e

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_18

    :cond_15e
    const-wide/high16 v0, -0x8000000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_18

    :sswitch_171
    const-wide/high16 v0, 0x4000000000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_182

    const/16 v0, 0x72

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_182
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x10000000000000L

    const-wide/16 v11, 0x14

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_194
    const-wide v3, 0x48004018000L

    const-wide v7, 0x800000800000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_1ac
    const-wide/16 v3, 0x400

    const-wide v7, 0x280000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_1c1
    const-wide v3, 0x410000100000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_1d6
    const-wide v0, 0x100000000L

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/16 v1, 0x20

    const/16 v2, 0x23

    invoke-direct {p0, v0, v1, v2}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_18

    :sswitch_1ed
    const-wide/16 v3, 0x0

    const-wide/32 v7, 0x40080000

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_200
    const-wide v3, 0x860800000020000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_215
    const-wide/32 v3, 0x18000000

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_228
    const-wide/32 v3, 0x20802000

    const-wide v7, 0x2000010200000L

    const-wide/16 v11, 0x2

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_23e
    const-wide v3, 0x600000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_253
    const-wide v3, 0x3801000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_268
    const-wide/32 v0, 0x200000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_279

    const/16 v0, 0x15

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_279
    const-wide v3, 0x6000040c04c0800L

    const-wide v7, 0x2000000200000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_291
    const-wide v3, 0x190180000001000L

    const-wide/high16 v7, 0x28000000000000L

    const-wide/16 v11, 0x28

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_2a6
    const-wide/high16 v3, 0x3000000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_2b8
    const-wide v3, 0x220000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_2cd
    const-wide/high16 v3, 0x4000000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_2df
    const-wide/32 v3, 0x2000000

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_2f2
    const-wide v3, 0x8000000004000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    goto/16 :goto_18

    :sswitch_307
    const-wide v0, 0x100000000L

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/16 v1, 0x60

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_18

    nop

    :sswitch_data_31e
    .sparse-switch
        0x26 -> :sswitch_26
        0x2b -> :sswitch_3b
        0x2d -> :sswitch_50
        0x3c -> :sswitch_65
        0x3d -> :sswitch_87
        0x3e -> :sswitch_171
        0x61 -> :sswitch_194
        0x62 -> :sswitch_1ac
        0x65 -> :sswitch_1c1
        0x66 -> :sswitch_1d6
        0x67 -> :sswitch_1ed
        0x68 -> :sswitch_200
        0x69 -> :sswitch_215
        0x6c -> :sswitch_228
        0x6d -> :sswitch_23e
        0x6e -> :sswitch_253
        0x6f -> :sswitch_268
        0x72 -> :sswitch_291
        0x74 -> :sswitch_2a6
        0x75 -> :sswitch_2b8
        0x77 -> :sswitch_2cd
        0x78 -> :sswitch_2df
        0x79 -> :sswitch_2f2
        0x7c -> :sswitch_307
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa20_0(JJJJ)I
    .registers 27

    and-long v5, p3, p1

    and-long v7, p7, p5

    or-long v1, v5, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b

    const/16 v2, 0x12

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1a
    return v1

    :cond_1b
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_27} :catch_39

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_68

    const/16 v2, 0x13

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1a

    :catch_39
    move-exception v1

    const/16 v2, 0x13

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v1, 0x14

    goto :goto_1a

    :pswitch_46
    const-wide/high16 v1, 0x20000000000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5b

    const/16 v1, 0x75

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x14

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_5b
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x20

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa21_0(JJJJ)I

    move-result v1

    goto :goto_1a

    :pswitch_data_68
    .packed-switch 0x74
        :pswitch_46
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa21_0(JJJJ)I
    .registers 17

    and-long v0, p3, p1

    and-long v6, p7, p5

    or-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    const/16 v1, 0x13

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_16
    return v0

    :cond_17
    :try_start_17
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_30

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_46

    const/16 v1, 0x14

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_16

    :catch_30
    move-exception v0

    const/16 v1, 0x14

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0x15

    goto :goto_16

    :pswitch_3e
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa22_0(JJ)I

    move-result v0

    goto :goto_16

    nop

    :pswitch_data_46
    .packed-switch 0x5f
        :pswitch_3e
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa22_0(JJ)I
    .registers 13

    const/16 v1, 0x15

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_14

    const/16 v1, 0x14

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_13
    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_28

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_38

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_13

    :catch_28
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0x16

    goto :goto_13

    :pswitch_31
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa23_0(JJ)I

    move-result v0

    goto :goto_13

    :pswitch_data_38
    .packed-switch 0x61
        :pswitch_31
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa23_0(JJ)I
    .registers 13

    const/16 v1, 0x16

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_14

    const/16 v1, 0x15

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_13
    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_28

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_38

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_13

    :catch_28
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0x17

    goto :goto_13

    :pswitch_31
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa24_0(JJ)I

    move-result v0

    goto :goto_13

    :pswitch_data_38
    .packed-switch 0x73
        :pswitch_31
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa24_0(JJ)I
    .registers 13

    const/16 v1, 0x17

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_14

    const/16 v1, 0x16

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_13
    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_28

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_38

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_13

    :catch_28
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0x18

    goto :goto_13

    :pswitch_31
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa25_0(JJ)I

    move-result v0

    goto :goto_13

    :pswitch_data_38
    .packed-switch 0x73
        :pswitch_31
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa25_0(JJ)I
    .registers 13

    const/16 v1, 0x18

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_14

    const/16 v1, 0x17

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_13
    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_28

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_38

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_13

    :catch_28
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0x19

    goto :goto_13

    :pswitch_31
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa26_0(JJ)I

    move-result v0

    goto :goto_13

    :pswitch_data_38
    .packed-switch 0x69
        :pswitch_31
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa26_0(JJ)I
    .registers 13

    const/16 v1, 0x19

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_14

    const/16 v1, 0x18

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_13
    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_28

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_38

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_13

    :catch_28
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0x1a

    goto :goto_13

    :pswitch_31
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa27_0(JJ)I

    move-result v0

    goto :goto_13

    :pswitch_data_38
    .packed-switch 0x67
        :pswitch_31
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa27_0(JJ)I
    .registers 14

    const/16 v8, 0x1b

    const/16 v1, 0x1a

    const-wide/16 v2, 0x0

    and-long v6, p3, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_16

    const/16 v1, 0x19

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_15
    return v0

    :cond_16
    :try_start_16
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_2a

    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_40

    :cond_23
    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_15

    :catch_2a
    move-exception v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move v0, v8

    goto :goto_15

    :pswitch_32
    const-wide/16 v4, 0x20

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-eqz v0, :cond_23

    const/16 v0, 0x85

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_15

    :pswitch_data_40
    .packed-switch 0x6e
        :pswitch_32
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa2_0(JJJJJJ)I
    .registers 35

    and-long v3, p3, p1

    and-long v5, p7, p5

    or-long v1, v3, v5

    and-long v7, p11, p9

    or-long/2addr v1, v7

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-nez v1, :cond_1d

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1c
    return v1

    :cond_1d
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_38

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_252

    :cond_30
    const/4 v2, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1c

    :catch_38
    move-exception v1

    const/4 v2, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v1, 0x2

    goto :goto_1c

    :sswitch_41
    const-wide/16 v1, 0x1

    and-long/2addr v1, v7

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_54

    const/4 v1, 0x2

    const/16 v2, 0x80

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_1c

    :cond_54
    const-wide/16 v1, 0x4

    and-long/2addr v1, v7

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/4 v1, 0x2

    const/16 v2, 0x82

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_1c

    :sswitch_67
    const-wide/high16 v1, 0x10000000000000L

    and-long/2addr v1, v5

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_7b

    const/16 v1, 0x74

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_7b
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x10

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :sswitch_8c
    const-wide v12, 0x11000000022000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_a1
    const-wide v12, 0x200000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_b6
    const-wide v12, 0x40000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_cb
    const-wide/16 v12, 0x1000

    const-wide/high16 v16, 0x2000000000000L

    const-wide/16 v20, 0x2

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_dd
    const-wide/32 v12, 0x100000

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_f0
    const-wide v12, 0xa04080000000000L

    const-wide v16, 0x28280000000000L

    const-wide/16 v20, 0x28

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_108
    const-wide v12, 0x400020004000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_11d
    const-wide v12, 0x80040180c0000L

    const-wide v16, 0x800000800000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_135
    const-wide v12, 0x900020000800L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_14a
    const-wide v12, 0x600000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_15f
    const-wide/32 v1, 0x40000000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_176

    const/4 v1, 0x2

    const/16 v2, 0x1e

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_176
    const-wide v1, 0x200000000L

    and-long/2addr v1, v5

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_18d

    const/16 v1, 0x61

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_18d
    const-wide/high16 v12, 0x62000000000000L

    const-wide/high16 v16, 0x2000000000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_19f
    const-wide v12, 0x800808400L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_1b4
    const-wide v1, 0x1000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1e1

    const/16 v1, 0x24

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_1cb
    :goto_1cb
    const-wide v12, 0x40a082014000L

    const-wide/32 v16, 0x50000000

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :cond_1e1
    const-wide/32 v1, 0x80000

    and-long/2addr v1, v5

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1f7

    const/16 v1, 0x53

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto :goto_1cb

    :cond_1f7
    const-wide/32 v1, 0x200000

    and-long/2addr v1, v5

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1cb

    const/16 v1, 0x55

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto :goto_1cb

    :sswitch_20d
    const-wide v12, 0x80000001400000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_222
    const-wide v1, 0x10000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/4 v1, 0x2

    const/16 v2, 0x28

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_23b
    const-wide/high16 v1, 0x100000000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/4 v1, 0x2

    const/16 v2, 0x38

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    nop

    :sswitch_data_252
    .sparse-switch
        0x3d -> :sswitch_41
        0x3e -> :sswitch_67
        0x61 -> :sswitch_8c
        0x62 -> :sswitch_a1
        0x63 -> :sswitch_b6
        0x65 -> :sswitch_cb
        0x66 -> :sswitch_dd
        0x69 -> :sswitch_f0
        0x6c -> :sswitch_108
        0x6e -> :sswitch_11d
        0x6f -> :sswitch_135
        0x70 -> :sswitch_14a
        0x72 -> :sswitch_15f
        0x73 -> :sswitch_19f
        0x74 -> :sswitch_1b4
        0x75 -> :sswitch_20d
        0x77 -> :sswitch_222
        0x79 -> :sswitch_23b
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa3_0(JJJJJJ)I
    .registers 35

    and-long v3, p3, p1

    and-long v5, p7, p5

    or-long v1, v3, v5

    and-long v7, p11, p9

    or-long/2addr v1, v7

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-nez v1, :cond_1d

    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1c
    return v1

    :cond_1d
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_38

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_2bc

    :cond_30
    const/4 v2, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1c

    :catch_38
    move-exception v1

    const/4 v2, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v1, 0x3

    goto :goto_1c

    :sswitch_41
    const-wide/16 v1, 0x10

    and-long/2addr v1, v7

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/4 v1, 0x3

    const/16 v2, 0x84

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_1c

    :sswitch_54
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x2000000000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :sswitch_65
    const-wide v12, 0x400000038101000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :sswitch_79
    const-wide/32 v12, 0x400000

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :sswitch_8b
    const-wide v12, 0x8000000010000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_a0
    const-wide/high16 v1, 0x200000000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_b6

    const/4 v1, 0x3

    const/16 v2, 0x39

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_b6
    const-wide v1, 0x800000000L

    and-long/2addr v1, v5

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_cd

    const/16 v1, 0x63

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_cd
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x800000000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_df
    const-wide/16 v1, 0x4000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_f5

    const/4 v1, 0x3

    const/16 v2, 0xe

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_f5
    const-wide/32 v1, 0x8000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_10c

    const/4 v1, 0x3

    const/16 v2, 0xf

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_10c
    const-wide/32 v1, 0x800000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_123

    const/4 v1, 0x3

    const/16 v2, 0x17

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_123
    const-wide/high16 v1, 0x80000000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_139

    const/4 v1, 0x3

    const/16 v2, 0x37

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_139
    const-wide v12, 0x2002000000L

    const-wide/32 v16, 0x50000000

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_14f
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x2000000000000L

    const-wide/16 v20, 0x2

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_161
    const-wide v1, 0x4000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_17a

    const/4 v1, 0x3

    const/16 v2, 0x26

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_17a
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x28000000000000L

    const-wide/16 v20, 0x28

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_18c
    const-wide v12, 0x2008000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_1a1
    const-wide v12, 0x40000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_1b6
    const-wide v1, 0x20000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1cf

    const/4 v1, 0x3

    const/16 v2, 0x29

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_1cf
    const-wide v12, 0x800200200000800L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_1e4
    const-wide/32 v1, 0x1000000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/4 v1, 0x3

    const/16 v2, 0x18

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_1fb
    const-wide/high16 v12, 0x10000000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_20d
    const-wide v1, 0x80000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_226

    const/4 v1, 0x3

    const/16 v2, 0x1f

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_226
    const-wide v12, 0x60000400000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_23b
    const-wide/32 v1, 0x20000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_252

    const/4 v1, 0x3

    const/16 v2, 0x11

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_252
    const-wide v12, 0x800000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_267
    const-wide/32 v12, 0x4042000

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_27a
    const-wide v12, 0x5100800080400L

    const-wide v16, 0x280000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_292
    const-wide v12, 0x400000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_2a7
    const-wide v12, 0x80000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_data_2bc
    .sparse-switch
        0x3d -> :sswitch_41
        0x5f -> :sswitch_54
        0x61 -> :sswitch_65
        0x62 -> :sswitch_79
        0x63 -> :sswitch_8b
        0x64 -> :sswitch_a0
        0x65 -> :sswitch_df
        0x66 -> :sswitch_14f
        0x67 -> :sswitch_161
        0x69 -> :sswitch_18c
        0x6b -> :sswitch_1a1
        0x6c -> :sswitch_1b6
        0x6d -> :sswitch_1e4
        0x6e -> :sswitch_1fb
        0x6f -> :sswitch_20d
        0x72 -> :sswitch_23b
        0x73 -> :sswitch_267
        0x74 -> :sswitch_27a
        0x75 -> :sswitch_292
        0x76 -> :sswitch_2a7
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa4_0(JJJJJJ)I
    .registers 35

    and-long v3, p3, p1

    and-long v5, p7, p5

    or-long v1, v3, v5

    and-long v7, p11, p9

    or-long/2addr v1, v7

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-nez v1, :cond_1d

    const/4 v2, 0x2

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1c
    return v1

    :cond_1d
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_38

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_258

    :cond_30
    :pswitch_30
    const/4 v2, 0x3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1c

    :catch_38
    move-exception v1

    const/4 v2, 0x3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v1, 0x4

    goto :goto_1c

    :pswitch_41
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x800000000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :pswitch_52
    const-wide v12, 0xc0800000000L

    const-wide/high16 v16, 0x2000000000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :pswitch_66
    const-wide/high16 v12, 0x6000000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :pswitch_77
    const-wide/32 v1, 0x4000000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_8d

    const/4 v1, 0x4

    const/16 v2, 0x1a

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_1c

    :cond_8d
    const-wide/high16 v1, 0x800000000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_a3

    const/4 v1, 0x4

    const/16 v2, 0x3b

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_a3
    const-wide v12, 0x100200000800L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_b8
    const-wide/32 v1, 0x10000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_cf

    const/4 v1, 0x4

    const/16 v2, 0x10

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_cf
    const-wide/high16 v12, 0x8000000000000L

    const-wide/high16 v16, 0x28000000000000L

    const-wide/16 v20, 0x28

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_e1
    const-wide v12, 0x1200000080000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_f6
    const-wide/16 v1, 0x1000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/4 v1, 0x4

    const/16 v2, 0xc

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_10c
    const-wide/32 v1, 0x8000000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_121

    const/16 v1, 0x1b

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_121
    const-wide/32 v12, 0x10400000

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_134
    const-wide/32 v12, 0x2000000

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_147
    const-wide/32 v1, 0x10000000

    and-long/2addr v1, v5

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_15c

    const/4 v1, 0x4

    const/16 v2, 0x5c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_1c

    :cond_15c
    const-wide/32 v1, 0x40000000

    and-long/2addr v1, v5

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/4 v1, 0x4

    const/16 v2, 0x5e

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_171
    const-wide v12, 0x402400000400L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_186
    const-wide/16 v1, 0x2000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_19c

    const/4 v1, 0x4

    const/16 v2, 0xd

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_19c
    const-wide/high16 v12, 0x10000000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_1ae
    const-wide/32 v1, 0x40000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1c5

    const/4 v1, 0x4

    const/16 v2, 0x12

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_1c5
    const-wide/32 v1, 0x20000000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1dc

    const/4 v1, 0x4

    const/16 v2, 0x1d

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_1dc
    const-wide v1, 0x800000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1f5

    const/4 v1, 0x4

    const/16 v2, 0x2f

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_1f5
    const-wide/high16 v12, 0x400000000000000L

    const-wide/high16 v16, 0x2000000000000L

    const-wide/16 v20, 0x2

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_207
    const-wide/32 v12, 0x100000

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_21a
    const-wide v12, 0x8000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_22f
    const-wide/high16 v1, 0x20000000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_243

    const/16 v1, 0x35

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :cond_243
    const-wide/high16 v12, 0x40000000000000L

    const-wide v16, 0x280000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_data_258
    .packed-switch 0x5f
        :pswitch_41
        :pswitch_30
        :pswitch_52
        :pswitch_30
        :pswitch_66
        :pswitch_30
        :pswitch_77
        :pswitch_30
        :pswitch_30
        :pswitch_b8
        :pswitch_e1
        :pswitch_30
        :pswitch_f6
        :pswitch_10c
        :pswitch_30
        :pswitch_134
        :pswitch_30
        :pswitch_30
        :pswitch_147
        :pswitch_171
        :pswitch_186
        :pswitch_1ae
        :pswitch_207
        :pswitch_21a
        :pswitch_22f
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa5_0(JJJJJJ)I
    .registers 35

    and-long v3, p3, p1

    and-long v5, p7, p5

    or-long v1, v3, v5

    and-long v7, p11, p9

    or-long/2addr v1, v7

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-nez v1, :cond_1d

    const/4 v2, 0x3

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1c
    return v1

    :cond_1d
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_38

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_1fc

    :cond_30
    :pswitch_30
    const/4 v2, 0x4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1c

    :catch_38
    move-exception v1

    const/4 v2, 0x4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v1, 0x5

    goto :goto_1c

    :pswitch_41
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x2000000000000L

    const-wide/16 v20, 0x2

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :pswitch_52
    const-wide/16 v12, 0xc00

    const-wide/high16 v16, 0x800000000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :pswitch_63
    const-wide v1, 0x200000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_7b

    const/4 v1, 0x5

    const/16 v2, 0x2d

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_1c

    :cond_7b
    const-wide/high16 v1, 0x1000000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_90

    const/4 v1, 0x5

    const/16 v2, 0x30

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_1c

    :cond_90
    const-wide v12, 0x100000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_a5
    const-wide/32 v12, 0x2000000

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_b8
    const-wide/32 v1, 0x400000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_cf

    const/4 v1, 0x5

    const/16 v2, 0x16

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_cf
    const-wide v1, 0x8000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/4 v1, 0x5

    const/16 v2, 0x27

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_e8
    const-wide v12, 0x2000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_fd
    const-wide v12, 0x40000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_112
    const-wide/high16 v1, 0x4000000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/4 v1, 0x5

    const/16 v2, 0x32

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_128
    const-wide/high16 v12, 0x410000000000000L

    const-wide v16, 0x280000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_13d
    const-wide/32 v12, 0x10100000

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_150
    const-wide v12, 0x200000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_165
    const-wide v1, 0x400000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_17e

    const/4 v1, 0x5

    const/16 v2, 0x2e

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_17e
    const-wide v12, 0x800080000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_193
    const-wide/high16 v12, 0x8000000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_1a5
    const-wide/high16 v1, 0x40000000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1bb

    const/4 v1, 0x5

    const/16 v2, 0x36

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_1bb
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x2000000000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_1cd
    const-wide v1, 0x400000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1e6

    const/4 v1, 0x5

    const/16 v2, 0x22

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_1e6
    const-wide v12, 0x2080000000000L

    const-wide/high16 v16, 0x28000000000000L

    const-wide/16 v20, 0x28

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    nop

    :pswitch_data_1fc
    .packed-switch 0x5f
        :pswitch_41
        :pswitch_30
        :pswitch_52
        :pswitch_30
        :pswitch_63
        :pswitch_a5
        :pswitch_b8
        :pswitch_e8
        :pswitch_fd
        :pswitch_112
        :pswitch_128
        :pswitch_30
        :pswitch_30
        :pswitch_13d
        :pswitch_150
        :pswitch_165
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_193
        :pswitch_1a5
        :pswitch_1cd
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa6_0(JJJJJJ)I
    .registers 35

    and-long v3, p3, p1

    and-long v5, p7, p5

    or-long v1, v3, v5

    and-long v7, p11, p9

    or-long/2addr v1, v7

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-nez v1, :cond_1d

    const/4 v2, 0x4

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1c
    return v1

    :cond_1d
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_38

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_18e

    :cond_30
    :pswitch_30
    const/4 v2, 0x5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1c

    :catch_38
    move-exception v1

    const/4 v2, 0x5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v1, 0x6

    goto :goto_1c

    :pswitch_41
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x28000000000000L

    const-wide/16 v20, 0x28

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :pswitch_52
    const-wide v12, 0x2000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :pswitch_66
    const-wide v12, 0x800000400L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :pswitch_7a
    const-wide v1, 0x40000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_92

    const/4 v1, 0x6

    const/16 v2, 0x2a

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_1c

    :cond_92
    const-wide v1, 0x80000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_ab

    const/4 v1, 0x6

    const/16 v2, 0x2b

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_ab
    const-wide v12, 0x10000200000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_c0
    const-wide/high16 v12, 0x2000000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_d2
    const-wide/high16 v12, 0x400000000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_e4
    const-wide/16 v1, 0x800

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/4 v1, 0x6

    const/16 v2, 0xb

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_fa
    const-wide/high16 v12, 0x8000000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_10c
    const-wide/32 v1, 0x2000000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_123

    const/4 v1, 0x6

    const/16 v2, 0x19

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_123
    const-wide/16 v12, 0x0

    const-wide v16, 0x2802280000000000L

    const-wide/16 v20, 0x2

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_138
    const-wide/32 v1, 0x100000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_14f

    const/4 v1, 0x6

    const/16 v2, 0x14

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_14f
    const-wide v12, 0x100000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_164
    const-wide/32 v12, 0x80000

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_177
    const-wide/32 v1, 0x10000000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/4 v1, 0x6

    const/16 v2, 0x1c

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_data_18e
    .packed-switch 0x5f
        :pswitch_41
        :pswitch_30
        :pswitch_52
        :pswitch_30
        :pswitch_66
        :pswitch_30
        :pswitch_7a
        :pswitch_c0
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_d2
        :pswitch_30
        :pswitch_e4
        :pswitch_fa
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_10c
        :pswitch_138
        :pswitch_164
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_177
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa7_0(JJJJJJ)I
    .registers 35

    and-long v3, p3, p1

    and-long v5, p7, p5

    or-long v1, v3, v5

    and-long v7, p11, p9

    or-long/2addr v1, v7

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-nez v1, :cond_1d

    const/4 v2, 0x5

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1c
    return v1

    :cond_1d
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_38

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_120

    :cond_30
    :pswitch_30
    const/4 v2, 0x6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1c

    :catch_38
    move-exception v1

    const/4 v2, 0x6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v1, 0x7

    goto :goto_1c

    :pswitch_41
    const-wide v12, 0x2000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :pswitch_55
    const-wide/32 v1, 0x80000

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_6b

    const/4 v1, 0x7

    const/16 v2, 0x13

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_1c

    :cond_6b
    const-wide/high16 v1, 0x400000000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_80

    const/4 v1, 0x7

    const/16 v2, 0x3a

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_1c

    :cond_80
    const-wide v12, 0x100800000000L

    const-wide v16, 0x280000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :pswitch_97
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x2000000000000L

    const-wide/16 v20, 0x2

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_a9
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x2000000000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_bb
    const-wide v12, 0x18000200000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_d0
    const-wide/high16 v1, 0x2000000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/4 v1, 0x7

    const/16 v2, 0x31

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_e6
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x808000000000000L

    const-wide/16 v20, 0x8

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_f8
    const-wide/16 v1, 0x400

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/4 v1, 0x7

    const/16 v2, 0xa

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_10e
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x20000000000000L

    const-wide/16 v20, 0x20

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_data_120
    .packed-switch 0x63
        :pswitch_41
        :pswitch_30
        :pswitch_55
        :pswitch_30
        :pswitch_30
        :pswitch_97
        :pswitch_a9
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_bb
        :pswitch_30
        :pswitch_d0
        :pswitch_30
        :pswitch_30
        :pswitch_e6
        :pswitch_f8
        :pswitch_10e
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa8_0(JJJJJJ)I
    .registers 35

    and-long v3, p3, p1

    and-long v5, p7, p5

    or-long v1, v3, v5

    and-long v7, p11, p9

    or-long/2addr v1, v7

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-nez v1, :cond_1d

    const/4 v2, 0x6

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1c
    return v1

    :cond_1d
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_38

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_110

    :cond_30
    const/4 v2, 0x7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1c

    :catch_38
    move-exception v1

    const/4 v2, 0x7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v1, 0x8

    goto :goto_1c

    :sswitch_42
    const-wide/16 v12, 0x0

    const-wide v16, 0x280000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :sswitch_56
    const-wide v1, 0x100000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/16 v1, 0x8

    const/16 v2, 0x2c

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_1c

    :sswitch_6f
    const-wide v1, 0x2000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/16 v1, 0x8

    const/16 v2, 0x25

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_1c

    :sswitch_88
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x2000000000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :sswitch_99
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x8000000000000L

    const-wide/16 v20, 0x8

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_ab
    const-wide/high16 v12, 0x8000000000000L

    const-wide/high16 v16, 0x802000000000000L

    const-wide/16 v20, 0x2

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_bd
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x20000000000000L

    const-wide/16 v20, 0x20

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_cf
    const-wide v12, 0x800000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_e4
    const-wide/high16 v1, 0x10000000000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_fb

    const/16 v1, 0x8

    const/16 v2, 0x34

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_fb
    const-wide v12, 0x200000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_data_110
    .sparse-switch
        0x5f -> :sswitch_42
        0x64 -> :sswitch_56
        0x65 -> :sswitch_6f
        0x67 -> :sswitch_88
        0x68 -> :sswitch_99
        0x69 -> :sswitch_ab
        0x6e -> :sswitch_bd
        0x6f -> :sswitch_cf
        0x74 -> :sswitch_e4
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa9_0(JJJJJJ)I
    .registers 35

    and-long v3, p3, p1

    and-long v5, p7, p5

    or-long v1, v3, v5

    and-long v7, p11, p9

    or-long/2addr v1, v7

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-nez v1, :cond_1d

    const/4 v2, 0x7

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_1c
    return v1

    :cond_1d
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_39

    move-object/from16 v0, p0

    iget-char v1, v0, Lbsh/ParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_10e

    :cond_30
    const/16 v2, 0x8

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_1c

    :catch_39
    move-exception v1

    const/16 v2, 0x8

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v1, 0x9

    goto :goto_1c

    :sswitch_44
    const-wide/16 v12, 0x0

    const-wide v16, 0x80000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :sswitch_58
    const-wide v1, 0x800000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_71

    const/16 v1, 0x9

    const/16 v2, 0x23

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_1c

    :cond_71
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x2000000000000L

    const-wide/16 v20, 0x2

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :sswitch_82
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x800000000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v1

    goto :goto_1c

    :sswitch_93
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x8000000000000L

    const-wide/16 v20, 0x8

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_a5
    const-wide/high16 v1, 0x2000000000000000L

    and-long/2addr v1, v5

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_30

    const/16 v1, 0x9

    const/16 v2, 0x7d

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_ba
    const-wide/16 v12, 0x0

    const-wide v16, 0x200000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_cf
    const-wide v1, 0x200000000L

    and-long/2addr v1, v3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_e9

    const/16 v1, 0x9

    const/16 v2, 0x21

    const/16 v3, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_1c

    :cond_e9
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x20000000000000L

    const-wide/16 v20, 0x20

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    :sswitch_fb
    const-wide/high16 v12, 0x8000000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide v10, v3

    move-wide v14, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v1

    goto/16 :goto_1c

    nop

    :sswitch_data_10e
    .sparse-switch
        0x61 -> :sswitch_44
        0x66 -> :sswitch_58
        0x67 -> :sswitch_82
        0x69 -> :sswitch_93
        0x6e -> :sswitch_a5
        0x6f -> :sswitch_ba
        0x73 -> :sswitch_cf
        0x7a -> :sswitch_fb
    .end sparse-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .registers 5

    iput p2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lbsh/ParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_12
.end method

.method private final jjStartNfa_0(IJJJ)I
    .registers 10

    invoke-direct/range {p0 .. p7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .registers 4

    iput p2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJJJ)I
    .registers 15

    const-wide/high16 v2, 0x8000000000000L

    const/16 v6, 0x45

    const/4 v1, -0x1

    const/16 v0, 0x23

    const-wide/16 v4, 0x0

    packed-switch p1, :pswitch_data_178

    move v0, v1

    :cond_d
    :goto_d
    return v0

    :pswitch_e
    const-wide v2, 0x200020000000000L

    and-long/2addr v2, p4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    const/16 v0, 0x38

    goto :goto_d

    :cond_1b
    const-wide/16 v2, 0x3e

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/4 v0, 0x0

    goto :goto_d

    :cond_24
    const-wide/32 v2, 0x10000

    and-long/2addr v2, p4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2f

    const/16 v0, 0xb

    goto :goto_d

    :cond_2f
    const-wide v2, 0xffffffffffffc00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3c

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    goto :goto_d

    :cond_3c
    move v0, v1

    goto :goto_d

    :pswitch_3e
    const-wide v2, 0x100600000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    const-wide v2, 0xffffffeff9ffc00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5d

    iget v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x1

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto :goto_d

    :cond_5d
    move v0, v1

    goto :goto_d

    :pswitch_5f
    const-wide v2, 0xefffecebfdffc00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_74

    iget v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x2

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto :goto_d

    :cond_74
    const-wide v2, 0x100013040000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_d

    :pswitch_80
    const-wide v2, 0xc7ffcae3e5d3c00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_96

    iget v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x3

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_d

    :cond_96
    const-wide v2, 0x28002408182c000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    move v0, v1

    goto/16 :goto_d

    :pswitch_a3
    const-wide v2, 0x86080003c053000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    const-wide v2, 0x41f7cae02580c00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c3

    iget v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_d

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x4

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_d

    :cond_c3
    move v0, v1

    goto/16 :goto_d

    :pswitch_c6
    const-wide v2, 0x41a1c2a12180c00L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d7

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x5

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_d

    :cond_d7
    const-wide v2, 0x45608400400000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    move v0, v1

    goto/16 :goto_d

    :pswitch_e4
    const-wide v2, 0x41a102a00080400L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f5

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x6

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_d

    :cond_f5
    const-wide v2, 0xc0012100800L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    move v0, v1

    goto/16 :goto_d

    :pswitch_102
    const-wide v2, 0x402000000080400L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    const-wide v2, 0x18102a00000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11d

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x7

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_d

    :cond_11d
    move v0, v1

    goto/16 :goto_d

    :pswitch_120
    const-wide v2, 0x8000a00000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_132

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x8

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_d

    :cond_132
    const-wide v2, 0x10102000000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    move v0, v1

    goto/16 :goto_d

    :pswitch_13f
    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14c

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x9

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_d

    :cond_14c
    const-wide v2, 0xa00000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    move v0, v1

    goto/16 :goto_d

    :pswitch_159
    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16c

    iget v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_d

    iput v6, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0xa

    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_d

    :cond_16c
    move v0, v1

    goto/16 :goto_d

    :pswitch_16f
    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    move v0, v1

    goto/16 :goto_d

    nop

    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_e
        :pswitch_3e
        :pswitch_5f
        :pswitch_80
        :pswitch_a3
        :pswitch_c6
        :pswitch_e4
        :pswitch_102
        :pswitch_120
        :pswitch_13f
        :pswitch_159
        :pswitch_16f
    .end packed-switch
.end method


# virtual methods
.method public ReInit(Lbsh/JavaCharStream;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lbsh/ParserTokenManager;->defaultLexState:I

    iput v0, p0, Lbsh/ParserTokenManager;->curLexState:I

    iput-object p1, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-direct {p0}, Lbsh/ParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lbsh/JavaCharStream;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lbsh/ParserTokenManager;->ReInit(Lbsh/JavaCharStream;)V

    invoke-virtual {p0, p2}, Lbsh/ParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .registers 5

    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    if-gez p1, :cond_25

    :cond_5
    new-instance v0, Lbsh/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lbsh/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_25
    iput p1, p0, Lbsh/ParserTokenManager;->curLexState:I

    return-void
.end method

.method public getNextToken()Lbsh/Token;
    .registers 13

    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    const v4, 0x7fffffff

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v5

    :cond_9
    :goto_9
    :try_start_9
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->BeginToken()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_49

    iput v4, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v8

    iget v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    if-eq v0, v4, :cond_75

    iget v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v8, :cond_2e

    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    iget v2, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    sub-int v2, v8, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lbsh/JavaCharStream;->backup(I)V

    :cond_2e
    sget-object v0, Lbsh/ParserTokenManager;->jjtoToken:[J

    iget v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v2, v2, 0x6

    aget-wide v2, v0, v2

    const-wide/16 v8, 0x1

    iget v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v2, v8

    cmp-long v0, v2, v10

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lbsh/ParserTokenManager;->jjFillToken()Lbsh/Token;

    move-result-object v0

    iput-object v1, v0, Lbsh/Token;->specialToken:Lbsh/Token;

    :goto_48
    return-object v0

    :catch_49
    move-exception v0

    iput v7, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    invoke-virtual {p0}, Lbsh/ParserTokenManager;->jjFillToken()Lbsh/Token;

    move-result-object v0

    iput-object v1, v0, Lbsh/Token;->specialToken:Lbsh/Token;

    goto :goto_48

    :cond_53
    sget-object v0, Lbsh/ParserTokenManager;->jjtoSpecial:[J

    iget v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v2, v2, 0x6

    aget-wide v2, v0, v2

    const-wide/16 v8, 0x1

    iget v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v2, v8

    cmp-long v0, v2, v10

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lbsh/ParserTokenManager;->jjFillToken()Lbsh/Token;

    move-result-object v0

    if-nez v1, :cond_6f

    move-object v1, v0

    goto :goto_9

    :cond_6f
    iput-object v1, v0, Lbsh/Token;->specialToken:Lbsh/Token;

    iput-object v0, v1, Lbsh/Token;->next:Lbsh/Token;

    move-object v1, v0

    goto :goto_9

    :cond_75
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->getEndLine()I

    move-result v2

    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->getEndColumn()I

    move-result v4

    :try_start_81
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbsh/JavaCharStream;->backup(I)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8c} :catch_a4

    move v1, v7

    move v3, v2

    :goto_8e
    if-nez v1, :cond_9a

    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0, v6}, Lbsh/JavaCharStream;->backup(I)V

    if-gt v8, v6, :cond_c8

    const-string v0, ""

    :goto_99
    move-object v5, v0

    :cond_9a
    new-instance v0, Lbsh/TokenMgrError;

    iget v2, p0, Lbsh/ParserTokenManager;->curLexState:I

    iget-char v6, p0, Lbsh/ParserTokenManager;->curChar:C

    invoke-direct/range {v0 .. v7}, Lbsh/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_a4
    move-exception v0

    if-gt v8, v6, :cond_be

    const-string v0, ""

    :goto_a9
    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-eq v1, v3, :cond_b5

    iget-char v1, p0, Lbsh/ParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c5

    :cond_b5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v7

    :goto_b9
    move-object v5, v0

    move v4, v1

    move v3, v2

    move v1, v6

    goto :goto_8e

    :cond_be
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_a9

    :cond_c5
    add-int/lit8 v1, v4, 0x1

    goto :goto_b9

    :cond_c8
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_99
.end method

.method protected jjFillToken()Lbsh/Token;
    .registers 4

    iget v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    invoke-static {v0}, Lbsh/Token;->newToken(I)Lbsh/Token;

    move-result-object v1

    iget v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    iput v0, v1, Lbsh/Token;->kind:I

    sget-object v0, Lbsh/ParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v2

    if-nez v0, :cond_18

    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_18
    iput-object v0, v1, Lbsh/Token;->image:Ljava/lang/String;

    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->getBeginLine()I

    move-result v0

    iput v0, v1, Lbsh/Token;->beginLine:I

    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->getBeginColumn()I

    move-result v0

    iput v0, v1, Lbsh/Token;->beginColumn:I

    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->getEndLine()I

    move-result v0

    iput v0, v1, Lbsh/Token;->endLine:I

    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->getEndColumn()I

    move-result v0

    iput v0, v1, Lbsh/Token;->endColumn:I

    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .registers 2

    iput-object p1, p0, Lbsh/ParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
