.class public Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/PDFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Configurator"
.end annotation


# instance fields
.field private annotationRendering:Z

.field private antialiasing:Z

.field private defaultPage:I

.field private final documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

.field private enableDoubletap:Z

.field private enableSwipe:Z

.field private onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

.field private onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

.field private onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

.field private onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

.field private onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

.field private onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

.field private onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

.field private onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

.field private pageNumbers:[I

.field private password:Ljava/lang/String;

.field private scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

.field private spacing:I

.field private swipeHorizontal:Z

.field final synthetic this$0:Lcom/github/barteksc/pdfviewer/PDFView;


# direct methods
.method private constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->antialiasing:Z

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->spacing:I

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;)V

    return-void
.end method


# virtual methods
.method public defaultPage(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    return-object p0
.end method

.method public enableAnnotationRendering(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    return-object p0
.end method

.method public enableAntialiasing(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->antialiasing:Z

    return-object p0
.end method

.method public enableDoubletap(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    return-object p0
.end method

.method public enableSwipe(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    return-object p0
.end method

.method public load()V
    .locals 6

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$100(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$200(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$300(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$400(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$500(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$600(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableSwipe(Z)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableDoubletap(Z)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$700(Lcom/github/barteksc/pdfviewer/PDFView;I)V

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setSwipeVertical(Z)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableAnnotationRendering(Z)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$800(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->antialiasing:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing(Z)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->spacing:I

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$900(Lcom/github/barteksc/pdfviewer/PDFView;I)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->access$1100(Lcom/github/barteksc/pdfviewer/PDFView;)Lcom/github/barteksc/pdfviewer/DragPinchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$1000(Lcom/github/barteksc/pdfviewer/PDFView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->setSwipeVertical(Z)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    invoke-static/range {v0 .. v5}, Lcom/github/barteksc/pdfviewer/PDFView;->access$1200(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;[I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->access$1300(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)V

    goto :goto_1
.end method

.method public onDraw(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    return-object p0
.end method

.method public onDrawAll(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    return-object p0
.end method

.method public onError(Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    return-object p0
.end method

.method public onLoad(Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    return-object p0
.end method

.method public onPageChange(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    return-object p0
.end method

.method public onPageScroll(Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    return-object p0
.end method

.method public onRender(Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    return-object p0
.end method

.method public onTap(Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

    return-object p0
.end method

.method public varargs pages([I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    return-object p0
.end method

.method public password(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    return-object p0
.end method

.method public scrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    return-object p0
.end method

.method public spacing(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->spacing:I

    return-object p0
.end method

.method public swipeHorizontal(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    return-object p0
.end method
