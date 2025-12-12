.class public Lcom/geely/os/car/GlyColorConfig;
.super Ljava/lang/Object;
.source "GlyColorConfig.java"


# static fields
.field public static ATMOSPHERE_LAMP_BRIGHTNESS_COLOR:[I

.field public static ATMOSPHERE_LAMP_BRIGHTNESS_COLOR_VALUE:[I

.field public static EX_AMBIENCE_COLOR:[I

.field public static EX_AMBIENCE_COLOR_VALUE:[I

.field public static KX_AMBIENCE_COLOR:[I

.field public static KX_AMBIENCE_COLOR_VALUE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x40

    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v1, 0x40

    new-array v1, v1, [I

    .line 9
    sput-object v1, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR_VALUE:[I

    const/16 v1, 0x48

    new-array v1, v1, [I

    .line 11
    sput-object v1, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v1, 0x48

    new-array v1, v1, [I

    .line 12
    sput-object v1, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR_VALUE:[I

    const/16 v1, 0x15

    new-array v2, v1, [I

    .line 14
    sput-object v2, Lcom/geely/os/car/GlyColorConfig;->ATMOSPHERE_LAMP_BRIGHTNESS_COLOR:[I

    new-array v2, v1, [I

    .line 15
    sput-object v2, Lcom/geely/os/car/GlyColorConfig;->ATMOSPHERE_LAMP_BRIGHTNESS_COLOR_VALUE:[I

    const/16 v2, 0x8b

    const/16 v3, 0x78

    const/16 v4, 0xff

    .line 18
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 19
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v2, 0xb9

    const/16 v5, 0x72

    invoke-static {v2, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v5, 0x1

    aput v2, v0, v5

    .line 20
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v2, 0xdc

    const/16 v6, 0x79

    invoke-static {v2, v6, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v6, 0x2

    aput v2, v0, v6

    .line 21
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v2, 0x78

    invoke-static {v4, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v7, 0x3

    aput v2, v0, v7

    .line 22
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v2, 0x56

    const/16 v8, 0xf9

    invoke-static {v4, v2, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v8, 0x4

    aput v2, v0, v8

    .line 23
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v2, 0x4b

    const/16 v9, 0xda

    invoke-static {v4, v2, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v9, 0x5

    aput v2, v0, v9

    .line 24
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v2, 0x41

    const/16 v10, 0xbe

    invoke-static {v4, v2, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v10, 0x6

    aput v2, v0, v10

    .line 25
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v2, 0x39

    const/16 v11, 0xa5

    invoke-static {v4, v2, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v11, 0x7

    aput v2, v0, v11

    .line 26
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v2, 0x32

    const/16 v12, 0x90

    invoke-static {v4, v2, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v13, 0x8

    aput v12, v0, v13

    .line 27
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0x2c

    const/16 v14, 0x7d

    invoke-static {v4, v12, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    const/16 v15, 0x9

    aput v14, v0, v15

    .line 28
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v14, 0x26

    const/16 v15, 0x6a

    invoke-static {v4, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    const/16 v15, 0xa

    aput v14, v0, v15

    .line 29
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v14, 0x21

    const/16 v15, 0x58

    invoke-static {v4, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    const/16 v15, 0xb

    aput v14, v0, v15

    .line 30
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v14, 0x1c

    const/16 v15, 0x42

    invoke-static {v4, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    const/16 v15, 0xc

    aput v14, v0, v15

    .line 31
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v14, 0x16

    const/16 v15, 0x24

    invoke-static {v4, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    const/16 v16, 0xd

    aput v14, v0, v16

    .line 32
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v14, 0x3b

    const/16 v13, 0x33

    invoke-static {v4, v14, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0xe

    aput v13, v0, v14

    .line 33
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0x4c

    invoke-static {v4, v13, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0xf

    aput v13, v0, v14

    .line 34
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0x5a

    const/16 v14, 0x34

    invoke-static {v4, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x10

    aput v13, v0, v14

    .line 35
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0x6a

    invoke-static {v4, v13, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x11

    aput v13, v0, v14

    .line 36
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0x84

    const/16 v14, 0x2b

    invoke-static {v4, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x12

    aput v13, v0, v14

    .line 37
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0x9c

    const/16 v14, 0x2f

    invoke-static {v4, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x13

    aput v13, v0, v14

    .line 38
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xbb

    const/16 v14, 0x53

    invoke-static {v4, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x14

    aput v13, v0, v14

    .line 39
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xdc

    const/16 v14, 0x5a

    invoke-static {v4, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    aput v13, v0, v1

    .line 40
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xfb

    const/16 v14, 0x46

    invoke-static {v13, v4, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x16

    aput v13, v0, v14

    .line 41
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xfc

    const/16 v14, 0xf5

    invoke-static {v13, v14, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x17

    aput v13, v0, v14

    .line 43
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xee

    const/16 v14, 0xd9

    invoke-static {v4, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x18

    aput v13, v0, v14

    .line 44
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xe1

    const/16 v14, 0xcb

    invoke-static {v4, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x19

    aput v13, v0, v14

    .line 46
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xd5

    const/16 v14, 0xf4

    invoke-static {v4, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x1a

    aput v13, v0, v14

    .line 48
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xcc

    const/16 v14, 0xe8

    invoke-static {v4, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x1b

    aput v13, v0, v14

    .line 50
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xf9

    const/16 v14, 0xc4

    invoke-static {v13, v14, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x1c

    aput v13, v0, v14

    .line 52
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xdf

    const/16 v14, 0xcd

    invoke-static {v13, v14, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x1d

    aput v13, v0, v14

    .line 53
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xca

    const/16 v14, 0xd4

    invoke-static {v13, v14, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x1e

    aput v13, v0, v14

    .line 55
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xbd

    const/16 v14, 0xd7

    invoke-static {v13, v14, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x1f

    aput v13, v0, v14

    .line 56
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xaf

    const/16 v14, 0xe9

    invoke-static {v13, v14, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x20

    aput v13, v0, v14

    .line 57
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xa6

    const/16 v14, 0xe6

    invoke-static {v13, v4, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x21

    aput v13, v0, v14

    .line 59
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0x93

    const/16 v14, 0xce

    invoke-static {v13, v4, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x22

    aput v13, v0, v14

    .line 61
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xae

    const/16 v14, 0x9b

    invoke-static {v13, v4, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x23

    aput v13, v0, v14

    .line 62
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xb7

    const/16 v14, 0x73

    invoke-static {v13, v4, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    aput v13, v0, v15

    .line 63
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xbf

    const/16 v14, 0x44

    invoke-static {v13, v4, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x25

    aput v13, v0, v14

    .line 64
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0x85

    const/16 v14, 0x45

    invoke-static {v13, v4, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x26

    aput v13, v0, v14

    .line 65
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0x29

    invoke-static {v13, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x27

    aput v13, v0, v14

    .line 66
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0x6b

    invoke-static {v15, v4, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x28

    aput v13, v0, v14

    .line 67
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0x37

    const/16 v15, 0xac

    invoke-static {v13, v4, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v15, 0x29

    aput v13, v0, v15

    .line 68
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0x46

    const/16 v15, 0xde

    invoke-static {v13, v4, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v15, 0x2a

    aput v13, v0, v15

    .line 69
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0x3d

    invoke-static {v13, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v15, 0x2b

    aput v13, v0, v15

    .line 70
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xed

    invoke-static {v5, v13, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    aput v13, v0, v12

    .line 71
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0xc0

    invoke-static {v14, v13, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v15, 0x2d

    aput v13, v0, v15

    .line 72
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0x2d

    const/16 v15, 0x99

    invoke-static {v13, v15, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v15, 0x2e

    aput v13, v0, v15

    .line 73
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v13, 0x3e

    const/16 v15, 0x7a

    invoke-static {v13, v15, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    const/16 v17, 0x2f

    aput v15, v0, v17

    .line 74
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v15, 0x4e

    const/16 v12, 0x55

    invoke-static {v15, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x30

    aput v12, v0, v15

    .line 75
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0x86

    const/16 v15, 0x55

    invoke-static {v12, v15, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x31

    aput v12, v0, v15

    .line 76
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0xb1

    const/16 v15, 0x56

    invoke-static {v12, v15, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v0, v2

    .line 77
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0xd9

    const/16 v15, 0x57

    invoke-static {v12, v15, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x33

    aput v12, v0, v15

    .line 78
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0x6e

    const/16 v15, 0xd1

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x34

    aput v12, v0, v15

    .line 79
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0x5f

    const/16 v15, 0xb4

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x35

    aput v12, v0, v15

    .line 80
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0x5a

    const/16 v15, 0x9c

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x36

    aput v12, v0, v15

    .line 81
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0x52

    const/16 v15, 0x87

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x37

    aput v12, v0, v15

    .line 82
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0x4a

    const/16 v15, 0x71

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x38

    aput v12, v0, v15

    .line 83
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0x68

    const/16 v15, 0x64

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x39

    aput v12, v0, v15

    .line 84
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0x71

    const/16 v15, 0x7c

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x3a

    aput v12, v0, v15

    .line 85
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0x81

    const/16 v15, 0x93

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x3b

    aput v12, v0, v15

    .line 86
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0x8a

    const/16 v15, 0xb1

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x3c

    aput v12, v0, v15

    .line 87
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0x97

    const/16 v15, 0x64

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x3d

    aput v12, v0, v15

    .line 88
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0x79

    const/16 v15, 0x57

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v0, v13

    .line 89
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR:[I

    const/16 v12, 0x5f

    const/16 v15, 0x4d

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x3f

    aput v12, v0, v15

    .line 100
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->EX_AMBIENCE_COLOR_VALUE:[I

    const v12, 0x8b78ff

    aput v12, v0, v3

    const v12, 0xb972ff

    .line 101
    aput v12, v0, v5

    const v12, 0xdc79ff

    .line 102
    aput v12, v0, v6

    const v12, 0xff78ff

    .line 103
    aput v12, v0, v7

    const v12, 0xff56f9

    .line 104
    aput v12, v0, v8

    const v12, 0xff4bda

    .line 105
    aput v12, v0, v9

    const v12, 0xff41be

    .line 106
    aput v12, v0, v10

    const v12, 0xff39a5

    .line 107
    aput v12, v0, v11

    const v12, 0xff3290

    const/16 v15, 0x8

    .line 108
    aput v12, v0, v15

    const v12, 0xff2c7d

    const/16 v15, 0x9

    .line 109
    aput v12, v0, v15

    const v12, 0xff266a

    const/16 v15, 0xa

    .line 110
    aput v12, v0, v15

    const v12, 0xff2158

    const/16 v15, 0xb

    .line 111
    aput v12, v0, v15

    const/16 v12, 0xc

    const v15, 0xff1c42

    .line 112
    aput v15, v0, v12

    const/16 v12, 0xd

    const v15, 0xff1624

    .line 113
    aput v15, v0, v12

    const/16 v12, 0xe

    const v15, 0xff3b33

    .line 114
    aput v15, v0, v12

    const v12, 0xff4c24

    const/16 v15, 0xf

    .line 115
    aput v12, v0, v15

    const/16 v12, 0x10

    const v15, 0xff5a34

    .line 116
    aput v15, v0, v12

    const v12, 0xff6a24

    const/16 v15, 0x11

    .line 117
    aput v12, v0, v15

    const/16 v12, 0x12

    const v15, 0xff842b

    .line 118
    aput v15, v0, v12

    const v12, 0xff9c2f

    const/16 v15, 0x13

    .line 119
    aput v12, v0, v15

    const/16 v12, 0x14

    const v15, 0xffbb53

    .line 120
    aput v15, v0, v12

    const v12, 0xffdc5a

    .line 121
    aput v12, v0, v1

    const/16 v12, 0x16

    const v15, 0xfbff46

    .line 122
    aput v15, v0, v12

    const/16 v12, 0x17

    const v15, 0xfcf5ff

    .line 123
    aput v15, v0, v12

    const/16 v12, 0x18

    const v15, 0xffeed9

    .line 124
    aput v15, v0, v12

    const/16 v12, 0x19

    const v15, 0xffe1cb

    .line 125
    aput v15, v0, v12

    const/16 v12, 0x1a

    const v15, 0xffd5f4

    .line 126
    aput v15, v0, v12

    const/16 v12, 0x1b

    const v15, 0xffcce8

    .line 127
    aput v15, v0, v12

    const/16 v12, 0x1c

    const v15, 0xf9c4ff

    .line 128
    aput v15, v0, v12

    const/16 v12, 0x1d

    const v15, 0xdfcdff

    .line 129
    aput v15, v0, v12

    const/16 v12, 0x1e

    const v15, 0xcad4ff

    .line 130
    aput v15, v0, v12

    const/16 v12, 0x1f

    const v15, 0xbdd7ff

    .line 131
    aput v15, v0, v12

    const/16 v12, 0x20

    const v15, 0xafe9ff

    .line 132
    aput v15, v0, v12

    const/16 v12, 0x21

    const v15, 0xa6ffe6

    .line 133
    aput v15, v0, v12

    const/16 v12, 0x22

    const v15, 0x93ffce

    .line 134
    aput v15, v0, v12

    const/16 v12, 0x23

    const v15, 0xaeff9b

    .line 135
    aput v15, v0, v12

    const v12, 0xb7ff73

    const/16 v15, 0x24

    .line 136
    aput v12, v0, v15

    const/16 v12, 0x25

    const v15, 0xbfff44

    .line 137
    aput v15, v0, v12

    const/16 v12, 0x26

    const v15, 0x85ff45

    .line 138
    aput v15, v0, v12

    const/16 v12, 0x27

    const v15, 0x29ff32

    .line 139
    aput v15, v0, v12

    const v12, 0x24ff6b

    .line 140
    aput v12, v0, v14

    const/16 v12, 0x29

    const v15, 0x37ffac

    .line 141
    aput v15, v0, v12

    const/16 v12, 0x2a

    const v15, 0x46ffde

    .line 142
    aput v15, v0, v12

    const/16 v12, 0x2b

    const v15, 0x3dffff

    .line 143
    aput v15, v0, v12

    const v12, 0x1edff

    const/16 v15, 0x2c

    .line 144
    aput v12, v0, v15

    const/16 v12, 0x2d

    const v15, 0x28c0ff

    .line 145
    aput v15, v0, v12

    const/16 v12, 0x2e

    const v15, 0x2d99ff

    .line 146
    aput v15, v0, v12

    const/16 v12, 0x2f

    const v15, 0x3e7aff

    .line 147
    aput v15, v0, v12

    const/16 v12, 0x30

    const v15, 0x4e55ff

    .line 148
    aput v15, v0, v12

    const/16 v12, 0x31

    const v15, 0x8655ff

    .line 149
    aput v15, v0, v12

    const v12, 0xb156ff

    .line 150
    aput v12, v0, v2

    const/16 v12, 0x33

    const v15, 0xd957ff

    .line 151
    aput v15, v0, v12

    const/16 v12, 0x34

    const v15, 0xff6ed1

    .line 152
    aput v15, v0, v12

    const/16 v12, 0x35

    const v15, 0xff5fb4

    .line 153
    aput v15, v0, v12

    const/16 v12, 0x36

    const v15, 0xff5a9c

    .line 154
    aput v15, v0, v12

    const/16 v12, 0x37

    const v15, 0xff5287

    .line 155
    aput v15, v0, v12

    const/16 v12, 0x38

    const v15, 0xff4a71

    .line 156
    aput v15, v0, v12

    const/16 v12, 0x39

    const v15, 0xff6864

    .line 157
    aput v15, v0, v12

    const/16 v12, 0x3a

    const v15, 0xff717c

    .line 158
    aput v15, v0, v12

    const/16 v12, 0x3b

    const v15, 0xff8193

    .line 159
    aput v15, v0, v12

    const/16 v12, 0x3c

    const v15, 0xff8ab1

    .line 160
    aput v15, v0, v12

    const/16 v12, 0x3d

    const v15, 0xff9764

    .line 161
    aput v15, v0, v12

    const v12, 0xff7957

    .line 162
    aput v12, v0, v13

    const/16 v12, 0x3f

    const v15, 0xff5f4d

    .line 163
    aput v15, v0, v12

    .line 295
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x54

    invoke-static {v3, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v0, v3

    .line 296
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x53

    const/16 v15, 0x11

    invoke-static {v15, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v0, v5

    .line 297
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x41

    const/16 v15, 0x52

    invoke-static {v12, v15, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v0, v6

    .line 298
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x5a

    const/16 v15, 0x51

    invoke-static {v12, v15, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v0, v7

    .line 299
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x6e

    const/16 v15, 0x50

    invoke-static {v12, v15, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v0, v8

    .line 300
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x7f

    const/16 v15, 0x4e

    invoke-static {v12, v15, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v0, v9

    .line 301
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x8e

    const/16 v15, 0x4d

    invoke-static {v12, v15, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v0, v10

    .line 302
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x9d

    const/16 v15, 0x4c

    invoke-static {v12, v15, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v0, v11

    .line 303
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xaa

    const/16 v15, 0x4a

    invoke-static {v12, v15, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x8

    aput v12, v0, v15

    .line 304
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xb8

    const/16 v15, 0x48

    invoke-static {v12, v15, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x9

    aput v12, v0, v15

    .line 305
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xc5

    const/16 v15, 0x46

    invoke-static {v12, v15, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0xa

    aput v12, v0, v15

    .line 306
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xd1

    const/16 v15, 0x44

    invoke-static {v12, v15, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0xb

    aput v12, v0, v15

    .line 307
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xed

    invoke-static {v12, v13, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0xc

    aput v12, v0, v15

    .line 308
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x33

    const/16 v15, 0xf4

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0xd

    aput v12, v0, v15

    .line 309
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x23

    const/16 v15, 0xdb

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0xe

    aput v12, v0, v15

    .line 310
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xc4

    const/16 v15, 0xb

    invoke-static {v4, v15, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0xf

    aput v12, v0, v15

    .line 311
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xb0

    invoke-static {v4, v3, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x10

    aput v12, v0, v15

    .line 312
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x9c

    invoke-static {v4, v3, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x11

    aput v12, v0, v15

    .line 313
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x8a

    invoke-static {v4, v3, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x12

    aput v12, v0, v15

    .line 314
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x77

    invoke-static {v4, v3, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x13

    aput v12, v0, v15

    .line 315
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x63

    invoke-static {v4, v3, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x14

    aput v12, v0, v15

    .line 316
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x4d

    invoke-static {v4, v3, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v0, v1

    .line 317
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x31

    invoke-static {v4, v3, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x16

    aput v12, v0, v15

    .line 318
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    invoke-static {v4, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x17

    aput v12, v0, v15

    .line 319
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    invoke-static {v4, v10, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x18

    aput v12, v0, v15

    .line 320
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x1c

    invoke-static {v4, v12, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x19

    aput v12, v0, v15

    .line 321
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    invoke-static {v4, v13, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x1a

    aput v12, v0, v15

    .line 322
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x55

    invoke-static {v4, v12, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x1b

    aput v12, v0, v15

    .line 323
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x69

    invoke-static {v4, v12, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x1c

    aput v12, v0, v15

    .line 324
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x7d

    invoke-static {v4, v12, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x1d

    aput v12, v0, v15

    .line 325
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x8d

    invoke-static {v4, v12, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x1e

    aput v12, v0, v15

    .line 326
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x9b

    invoke-static {v4, v12, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x1f

    aput v12, v0, v15

    .line 327
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xa8

    const/16 v15, 0xa

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x20

    aput v12, v0, v15

    .line 328
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xb4

    const/16 v15, 0xf

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x21

    aput v12, v0, v15

    .line 329
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xc0

    const/16 v15, 0x13

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x22

    aput v12, v0, v15

    .line 330
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xcd

    const/16 v15, 0x17

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x23

    aput v12, v0, v15

    .line 331
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xda

    const/16 v15, 0x1b

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x24

    aput v12, v0, v15

    .line 332
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xe7

    const/16 v15, 0x1e

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x25

    aput v12, v0, v15

    .line 333
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xf4

    const/16 v15, 0x22

    invoke-static {v4, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x26

    aput v12, v0, v15

    .line 334
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xfb

    const/16 v15, 0x25

    invoke-static {v12, v4, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x27

    aput v12, v0, v15

    .line 335
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xeb

    const/16 v15, 0x26

    invoke-static {v12, v4, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v0, v14

    .line 336
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xdb

    const/16 v15, 0x27

    invoke-static {v12, v4, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x29

    aput v12, v0, v15

    .line 337
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xcb

    invoke-static {v12, v4, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x2a

    aput v12, v0, v15

    .line 338
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xb9

    const/16 v15, 0x29

    invoke-static {v12, v4, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x2b

    aput v12, v0, v15

    .line 339
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xa5

    const/16 v15, 0x2a

    invoke-static {v12, v4, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x2c

    aput v12, v0, v15

    .line 340
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x8e

    const/16 v15, 0x2a

    invoke-static {v12, v4, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x2d

    aput v12, v0, v15

    .line 341
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x71

    const/16 v15, 0x2b

    invoke-static {v12, v4, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x2e

    aput v12, v0, v15

    .line 342
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x45

    const/16 v15, 0x2c

    invoke-static {v12, v4, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v0, v17

    .line 343
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    invoke-static {v14, v4, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x30

    aput v12, v0, v15

    .line 344
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x20

    const/16 v15, 0x2d

    invoke-static {v12, v4, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x31

    aput v12, v0, v15

    .line 345
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x18

    const/16 v15, 0x2e

    invoke-static {v12, v4, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v0, v2

    .line 346
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x2e

    invoke-static {v10, v4, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x33

    aput v12, v0, v15

    .line 347
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x2f

    invoke-static {v3, v4, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x34

    aput v12, v0, v15

    .line 348
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x66

    invoke-static {v3, v4, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x35

    aput v12, v0, v15

    .line 349
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x88

    invoke-static {v3, v4, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x36

    aput v12, v0, v15

    .line 350
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xa4

    invoke-static {v3, v4, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x37

    aput v12, v0, v15

    .line 351
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xbc

    invoke-static {v3, v4, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x38

    aput v12, v0, v15

    .line 352
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xd4

    invoke-static {v3, v4, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x39

    aput v12, v0, v15

    .line 353
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xea

    invoke-static {v3, v4, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x3a

    aput v12, v0, v15

    .line 354
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xfe

    invoke-static {v3, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x3b

    aput v12, v0, v15

    .line 355
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xea

    invoke-static {v3, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x3c

    aput v12, v0, v15

    .line 356
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xd8

    invoke-static {v3, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x3d

    aput v12, v0, v15

    .line 357
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xc8

    invoke-static {v3, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v0, v13

    .line 358
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xba

    invoke-static {v3, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x3f

    aput v12, v0, v15

    .line 359
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xad

    invoke-static {v3, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x40

    aput v12, v0, v15

    .line 360
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0xa1

    invoke-static {v3, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x41

    aput v12, v0, v15

    .line 361
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x95

    invoke-static {v3, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x42

    aput v12, v0, v15

    .line 362
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x8a

    invoke-static {v3, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x43

    aput v12, v0, v15

    .line 363
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x7f

    invoke-static {v3, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x44

    aput v12, v0, v15

    .line 364
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x74

    invoke-static {v3, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x45

    aput v12, v0, v15

    .line 365
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x6a

    invoke-static {v3, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v15, 0x46

    aput v12, v0, v15

    .line 366
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR:[I

    const/16 v12, 0x5f

    invoke-static {v3, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const/16 v12, 0x47

    aput v4, v0, v12

    .line 368
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->KX_AMBIENCE_COLOR_VALUE:[I

    const/16 v4, 0x54ff

    aput v4, v0, v3

    const v4, 0x1153ff

    .line 369
    aput v4, v0, v5

    const v4, 0x4152ff    # 5.99908E-39f

    .line 370
    aput v4, v0, v6

    const v4, 0x5a51ff

    .line 371
    aput v4, v0, v7

    const v4, 0x6e50ff

    .line 372
    aput v4, v0, v8

    const v4, 0x7f4eff

    .line 373
    aput v4, v0, v9

    const v4, 0x8e4dff

    .line 374
    aput v4, v0, v10

    const v4, 0x9d4cff

    .line 375
    aput v4, v0, v11

    const v4, 0xaa4aff

    const/16 v12, 0x8

    .line 376
    aput v4, v0, v12

    const v4, 0xb848ff

    const/16 v12, 0x9

    .line 377
    aput v4, v0, v12

    const v4, 0xc546ff

    const/16 v12, 0xa

    .line 378
    aput v4, v0, v12

    const v4, 0xd144ff

    const/16 v12, 0xb

    .line 379
    aput v4, v0, v12

    const/16 v4, 0xc

    const v12, 0xed3eff

    .line 380
    aput v12, v0, v4

    const/16 v4, 0xd

    const v12, 0xff33f4

    .line 381
    aput v12, v0, v4

    const/16 v4, 0xe

    const v12, 0xff23db

    .line 382
    aput v12, v0, v4

    const v4, 0xff0bc4

    const/16 v12, 0xf

    .line 383
    aput v4, v0, v12

    const/16 v4, 0x10

    const v12, 0xff00b0

    .line 384
    aput v12, v0, v4

    const v4, 0xff009c

    const/16 v12, 0x11

    .line 385
    aput v4, v0, v12

    const/16 v4, 0x12

    const v12, 0xff008a

    .line 386
    aput v12, v0, v4

    const v4, 0xff0077

    const/16 v12, 0x13

    .line 387
    aput v4, v0, v12

    const/16 v4, 0x14

    const v12, 0xff0063

    .line 388
    aput v12, v0, v4

    const v4, 0xff004d

    .line 389
    aput v4, v0, v1

    const/16 v1, 0x16

    const v4, 0xff0031

    .line 390
    aput v4, v0, v1

    const/16 v1, 0x17

    const/high16 v4, 0xff0000

    .line 391
    aput v4, v0, v1

    const/16 v1, 0x18

    const v4, 0xff0600

    .line 392
    aput v4, v0, v1

    const/16 v1, 0x19

    const v4, 0xff1c00

    .line 393
    aput v4, v0, v1

    const/16 v1, 0x1a

    const v4, 0xff3e00

    .line 394
    aput v4, v0, v1

    const/16 v1, 0x1b

    const v4, 0xff5500

    .line 395
    aput v4, v0, v1

    const/16 v1, 0x1c

    const v4, 0xff6900

    .line 396
    aput v4, v0, v1

    const/16 v1, 0x1d

    const v4, 0xff7d00

    .line 397
    aput v4, v0, v1

    const/16 v1, 0x1e

    const v4, 0xff8d00

    .line 398
    aput v4, v0, v1

    const/16 v1, 0x1f

    const v4, 0xff9b05

    .line 399
    aput v4, v0, v1

    const/16 v1, 0x20

    const v4, 0xffa80a

    .line 400
    aput v4, v0, v1

    const/16 v1, 0x21

    const v4, 0xffb40f

    .line 401
    aput v4, v0, v1

    const/16 v1, 0x22

    const v4, 0xffc013

    .line 402
    aput v4, v0, v1

    const/16 v1, 0x23

    const v4, 0xffcd17

    .line 403
    aput v4, v0, v1

    const v1, 0xffda1b

    const/16 v4, 0x24

    .line 404
    aput v1, v0, v4

    const/16 v1, 0x25

    const v4, 0xffe71e

    .line 405
    aput v4, v0, v1

    const/16 v1, 0x26

    const v4, 0xfff422

    .line 406
    aput v4, v0, v1

    const/16 v1, 0x27

    const v4, 0xfbff25

    .line 407
    aput v4, v0, v1

    const v1, 0xebff26

    .line 408
    aput v1, v0, v14

    const/16 v1, 0x29

    const v4, 0xdbff27

    .line 409
    aput v4, v0, v1

    const/16 v1, 0x2a

    const v4, 0xcbff28

    .line 410
    aput v4, v0, v1

    const/16 v1, 0x2b

    const v4, 0xb9ff29

    .line 411
    aput v4, v0, v1

    const v1, 0xa5ff2a

    const/16 v4, 0x2c

    .line 412
    aput v1, v0, v4

    const/16 v1, 0x2d

    const v4, 0x8eff2a

    .line 413
    aput v4, v0, v1

    const/16 v1, 0x2e

    const v4, 0x71ff2b

    .line 414
    aput v4, v0, v1

    const/16 v1, 0x2f

    const v4, 0x45ff2c

    .line 415
    aput v4, v0, v1

    const/16 v1, 0x30

    const v4, 0x28ff2c

    .line 416
    aput v4, v0, v1

    const/16 v1, 0x31

    const v4, 0x20ff2c

    .line 417
    aput v4, v0, v1

    const v1, 0x18ff2c

    .line 418
    aput v1, v0, v2

    const/16 v1, 0x33

    const v2, 0x6ff2c

    .line 419
    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0xff2f

    .line 420
    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0xff66

    .line 421
    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0xff88

    .line 422
    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0xffa4

    .line 423
    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0xffbc

    .line 424
    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0xffd4

    .line 425
    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0xffea

    .line 426
    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0xfeff

    .line 427
    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0xeaff

    .line 428
    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0xd8ff

    .line 429
    aput v2, v0, v1

    const v1, 0xc8ff

    .line 430
    aput v1, v0, v13

    const/16 v1, 0x3f

    const v2, 0xbaff

    .line 431
    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0xadff

    .line 432
    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, 0xa1ff

    .line 433
    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0x95ff

    .line 434
    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x8aff

    .line 435
    aput v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x7fff

    .line 436
    aput v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x74ff

    .line 437
    aput v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x6aff

    .line 438
    aput v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x5fff

    .line 439
    aput v2, v0, v1

    .line 441
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->ATMOSPHERE_LAMP_BRIGHTNESS_COLOR:[I

    const v1, -0xaaaaab

    aput v1, v0, v3

    .line 442
    aput v1, v0, v5

    const v1, -0xa1a1a2

    .line 443
    aput v1, v0, v6

    const v1, -0x989899

    .line 444
    aput v1, v0, v7

    const v1, -0x8f8f90

    .line 445
    aput v1, v0, v8

    const v1, -0x868687

    .line 446
    aput v1, v0, v9

    const v1, -0x7d7d7e

    .line 447
    aput v1, v0, v10

    const v1, -0x747475

    .line 448
    aput v1, v0, v11

    const v1, -0x6b6b6c

    const/16 v2, 0x8

    .line 449
    aput v1, v0, v2

    const v1, -0x626263

    const/16 v2, 0x9

    .line 450
    aput v1, v0, v2

    const v1, -0x5a5a5b

    const/16 v2, 0xa

    .line 451
    aput v1, v0, v2

    const v1, -0x505051

    const/16 v2, 0xb

    .line 452
    aput v1, v0, v2

    const/16 v1, 0xc

    const v2, -0x484849

    .line 453
    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, -0x3f3f40

    .line 454
    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x363637

    .line 455
    aput v2, v0, v1

    const v1, -0x2d2d2e

    const/16 v2, 0xf

    .line 456
    aput v1, v0, v2

    const/16 v1, 0x10

    const v2, -0x242425

    .line 457
    aput v2, v0, v1

    const v1, -0x1b1b1c

    const/16 v2, 0x11

    .line 458
    aput v1, v0, v2

    const/16 v1, 0x12

    const v2, -0x121213

    .line 459
    aput v2, v0, v1

    const v1, -0x9090a

    const/16 v2, 0x13

    .line 460
    aput v1, v0, v2

    const/16 v1, 0x14

    const/4 v2, -0x1

    .line 461
    aput v2, v0, v1

    .line 463
    sget-object v0, Lcom/geely/os/car/GlyColorConfig;->ATMOSPHERE_LAMP_BRIGHTNESS_COLOR_VALUE:[I

    const v1, 0x555555

    aput v1, v0, v3

    .line 464
    aput v1, v0, v5

    const v1, 0x5e5e5e

    .line 465
    aput v1, v0, v6

    const v1, 0x676767

    .line 466
    aput v1, v0, v7

    const v1, 0x707070

    .line 467
    aput v1, v0, v8

    const v1, 0x797979

    .line 468
    aput v1, v0, v9

    const v1, 0x828282

    .line 469
    aput v1, v0, v10

    const v1, 0x8b8b8b

    .line 470
    aput v1, v0, v11

    const v1, 0x949494

    const/16 v2, 0x8

    .line 471
    aput v1, v0, v2

    const v1, 0x9d9d9d

    const/16 v2, 0x9

    .line 472
    aput v1, v0, v2

    const v1, 0xa5a5a5

    const/16 v2, 0xa

    .line 473
    aput v1, v0, v2

    const v1, 0xafafaf

    const/16 v2, 0xb

    .line 474
    aput v1, v0, v2

    const/16 v1, 0xc

    const v2, 0xb7b7b7

    .line 475
    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0xc0c0c0

    .line 476
    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0xc9c9c9

    .line 477
    aput v2, v0, v1

    const v1, 0xd2d2d2

    const/16 v2, 0xf

    .line 478
    aput v1, v0, v2

    const/16 v1, 0x10

    const v2, 0xdbdbdb

    .line 479
    aput v2, v0, v1

    const v1, 0xe4e4e4

    const/16 v2, 0x11

    .line 480
    aput v1, v0, v2

    const/16 v1, 0x12

    const v2, 0xededed

    .line 481
    aput v2, v0, v1

    const v1, 0xf6f6f6

    const/16 v2, 0x13

    .line 482
    aput v1, v0, v2

    const/16 v1, 0x14

    const v2, 0xffffff

    .line 483
    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
