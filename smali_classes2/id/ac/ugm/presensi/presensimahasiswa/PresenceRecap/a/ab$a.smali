.class public final enum Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

.field public static final enum b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

.field private static final synthetic d:[Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v3, v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    const-string v1, "VERTICAL"

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v4, v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    aput-object v1, v0, v3

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    aput-object v1, v0, v4

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->d:[Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->c:I

    iput p3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;
    .locals 1

    const-class v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    return-object v0
.end method

.method public static values()[Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;
    .locals 1

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->d:[Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    invoke-virtual {v0}, [Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->c:I

    return v0
.end method
