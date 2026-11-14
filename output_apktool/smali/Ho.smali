.class public final LHo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:I

.field public final synthetic b:LIo;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(LIo;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHo;->b:LIo;

    iput-object p2, p0, LHo;->c:Ljava/lang/String;

    iput-object p3, p0, LHo;->d:Landroid/graphics/Rect;

    const/16 p1, 0xa

    iput p1, p0, LHo;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LHo;->b:LIo;

    iget-object v1, p0, LHo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, LIo;->e(Ljava/lang/String;)LG1;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, LG1;->a:I

    if-lez v3, :cond_0

    iget-object p0, p0, LHo;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, p0}, LIo;->t(LG1;Landroid/graphics/Rect;)V

    sget-object p0, LIo;->q:LOf;

    goto :goto_0

    :cond_0
    iget v2, p0, LHo;->a:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, LHo;->a:I

    if-lez v2, :cond_1

    iget-object v0, v0, LIo;->c:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "FULLSCREEN: task not found for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowLauncher"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
