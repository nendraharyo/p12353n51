.class public Lb/a/a/a/i/c;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/t;


# static fields
.field public static final a:Lb/a/a/a/i/c;


# instance fields
.field protected final b:Lb/a/a/a/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/a/a/i/c;

    invoke-direct {v0}, Lb/a/a/a/i/c;-><init>()V

    sput-object v0, Lb/a/a/a/i/c;->a:Lb/a/a/a/i/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lb/a/a/a/i/d;->a:Lb/a/a/a/i/d;

    invoke-direct {p0, v0}, Lb/a/a/a/i/c;-><init>(Lb/a/a/a/ad;)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/ad;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Reason phrase catalog"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/ad;

    iput-object v0, p0, Lb/a/a/a/i/c;->b:Lb/a/a/a/ad;

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/af;Lb/a/a/a/n/e;)Lb/a/a/a/s;
    .locals 3

    const-string v0, "Status line"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lb/a/a/a/k/h;

    iget-object v1, p0, Lb/a/a/a/i/c;->b:Lb/a/a/a/ad;

    invoke-virtual {p0, p2}, Lb/a/a/a/i/c;->a(Lb/a/a/a/n/e;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lb/a/a/a/k/h;-><init>(Lb/a/a/a/af;Lb/a/a/a/ad;Ljava/util/Locale;)V

    return-object v0
.end method

.method protected a(Lb/a/a/a/n/e;)Ljava/util/Locale;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
