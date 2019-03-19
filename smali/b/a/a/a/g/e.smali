.class public final Lb/a/a/a/g/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lb/a/a/a/g/e;

.field public static final b:Lb/a/a/a/g/e;

.field public static final c:Lb/a/a/a/g/e;

.field public static final d:Lb/a/a/a/g/e;

.field public static final e:Lb/a/a/a/g/e;

.field public static final f:Lb/a/a/a/g/e;

.field public static final g:Lb/a/a/a/g/e;

.field public static final h:Lb/a/a/a/g/e;

.field public static final i:Lb/a/a/a/g/e;

.field public static final j:Lb/a/a/a/g/e;

.field public static final k:Lb/a/a/a/g/e;

.field public static final l:Lb/a/a/a/g/e;

.field public static final m:Lb/a/a/a/g/e;

.field public static final n:Lb/a/a/a/g/e;


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:Ljava/nio/charset/Charset;

.field private final q:[Lb/a/a/a/y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const-string v0, "application/atom+xml"

    sget-object v2, Lb/a/a/a/c;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lb/a/a/a/g/e;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lb/a/a/a/g/e;

    move-result-object v0

    sput-object v0, Lb/a/a/a/g/e;->a:Lb/a/a/a/g/e;

    const-string v0, "application/x-www-form-urlencoded"

    sget-object v2, Lb/a/a/a/c;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lb/a/a/a/g/e;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lb/a/a/a/g/e;

    move-result-object v0

    sput-object v0, Lb/a/a/a/g/e;->b:Lb/a/a/a/g/e;

    const-string v0, "application/json"

    sget-object v2, Lb/a/a/a/c;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lb/a/a/a/g/e;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lb/a/a/a/g/e;

    move-result-object v0

    sput-object v0, Lb/a/a/a/g/e;->c:Lb/a/a/a/g/e;

    const-string v2, "application/octet-stream"

    move-object v0, v1

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-static {v2, v0}, Lb/a/a/a/g/e;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lb/a/a/a/g/e;

    move-result-object v0

    sput-object v0, Lb/a/a/a/g/e;->d:Lb/a/a/a/g/e;

    const-string v0, "application/svg+xml"

    sget-object v2, Lb/a/a/a/c;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lb/a/a/a/g/e;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lb/a/a/a/g/e;

    move-result-object v0

    sput-object v0, Lb/a/a/a/g/e;->e:Lb/a/a/a/g/e;

    const-string v0, "application/xhtml+xml"

    sget-object v2, Lb/a/a/a/c;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lb/a/a/a/g/e;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lb/a/a/a/g/e;

    move-result-object v0

    sput-object v0, Lb/a/a/a/g/e;->f:Lb/a/a/a/g/e;

    const-string v0, "application/xml"

    sget-object v2, Lb/a/a/a/c;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lb/a/a/a/g/e;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lb/a/a/a/g/e;

    move-result-object v0

    sput-object v0, Lb/a/a/a/g/e;->g:Lb/a/a/a/g/e;

    const-string v0, "multipart/form-data"

    sget-object v2, Lb/a/a/a/c;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lb/a/a/a/g/e;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lb/a/a/a/g/e;

    move-result-object v0

    sput-object v0, Lb/a/a/a/g/e;->h:Lb/a/a/a/g/e;

    const-string v0, "text/html"

    sget-object v2, Lb/a/a/a/c;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lb/a/a/a/g/e;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lb/a/a/a/g/e;

    move-result-object v0

    sput-object v0, Lb/a/a/a/g/e;->i:Lb/a/a/a/g/e;

    const-string v0, "text/plain"

    sget-object v2, Lb/a/a/a/c;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lb/a/a/a/g/e;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lb/a/a/a/g/e;

    move-result-object v0

    sput-object v0, Lb/a/a/a/g/e;->j:Lb/a/a/a/g/e;

    const-string v0, "text/xml"

    sget-object v2, Lb/a/a/a/c;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lb/a/a/a/g/e;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lb/a/a/a/g/e;

    move-result-object v0

    sput-object v0, Lb/a/a/a/g/e;->k:Lb/a/a/a/g/e;

    const-string v0, "*/*"

    check-cast v1, Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lb/a/a/a/g/e;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lb/a/a/a/g/e;

    move-result-object v0

    sput-object v0, Lb/a/a/a/g/e;->l:Lb/a/a/a/g/e;

    sget-object v0, Lb/a/a/a/g/e;->j:Lb/a/a/a/g/e;

    sput-object v0, Lb/a/a/a/g/e;->m:Lb/a/a/a/g/e;

    sget-object v0, Lb/a/a/a/g/e;->d:Lb/a/a/a/g/e;

    sput-object v0, Lb/a/a/a/g/e;->n:Lb/a/a/a/g/e;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/a/g/e;->o:Ljava/lang/String;

    iput-object p2, p0, Lb/a/a/a/g/e;->p:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/g/e;->q:[Lb/a/a/a/y;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lb/a/a/a/g/e;
    .locals 1

    invoke-static {p1}, Lb/a/a/a/o/h;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lb/a/a/a/g/e;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lb/a/a/a/g/e;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lb/a/a/a/g/e;
    .locals 3

    const-string v0, "MIME type"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->b(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/g/e;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "MIME type may not contain reserved characters"

    invoke-static {v1, v2}, Lb/a/a/a/o/a;->a(ZLjava/lang/String;)V

    new-instance v1, Lb/a/a/a/g/e;

    invoke-direct {v1, v0, p1}, Lb/a/a/a/g/e;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/e;->p:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lb/a/a/a/o/d;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lb/a/a/a/o/d;-><init>(I)V

    iget-object v1, p0, Lb/a/a/a/g/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/a/a/g/e;->q:[Lb/a/a/a/y;

    if-eqz v1, :cond_1

    const-string v1, "; "

    invoke-virtual {v0, v1}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    sget-object v1, Lb/a/a/a/k/e;->b:Lb/a/a/a/k/e;

    iget-object v2, p0, Lb/a/a/a/g/e;->q:[Lb/a/a/a/y;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lb/a/a/a/k/e;->a(Lb/a/a/a/o/d;[Lb/a/a/a/y;Z)Lb/a/a/a/o/d;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lb/a/a/a/o/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lb/a/a/a/g/e;->p:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_0

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/a/a/g/e;->p:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
