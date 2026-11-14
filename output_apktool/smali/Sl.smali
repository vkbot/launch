.class public final LSl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic f:Ljava/io/File;

.field public final synthetic g:Lcom/omoda/launcher/data/RemoteApp;

.field public final synthetic h:Lhl;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/io/File;Lcom/omoda/launcher/data/RemoteApp;Lhl;LS5;)V
    .locals 0

    iput-object p1, p0, LSl;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, LSl;->f:Ljava/io/File;

    iput-object p3, p0, LSl;->g:Lcom/omoda/launcher/data/RemoteApp;

    iput-object p4, p0, LSl;->h:Lhl;

    invoke-direct {p0, p5}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 6

    new-instance p2, LSl;

    iget-object v4, p0, LSl;->h:Lhl;

    iget-object v2, p0, LSl;->f:Ljava/io/File;

    iget-object v1, p0, LSl;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v3, p0, LSl;->g:Lcom/omoda/launcher/data/RemoteApp;

    move-object v0, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LSl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/io/File;Lcom/omoda/launcher/data/RemoteApp;Lhl;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    sget-object p1, Ljb;->a:Landroid/os/Handler;

    new-instance p1, Lhl;

    iget-object v0, p0, LSl;->h:Lhl;

    iget-object v1, p0, LSl;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v2, p0, LSl;->g:Lcom/omoda/launcher/data/RemoteApp;

    const/4 v3, 0x3

    invoke-direct {p1, v1, v2, v0, v3}, Lhl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, LSl;->f:Ljava/io/File;

    const/4 v0, 0x0

    const/16 v2, 0xc

    invoke-static {v1, p0, v0, p1, v2}, Ljb;->b(Landroid/content/Context;Ljava/io/File;ZLha;I)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, LSl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, LSl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, LSl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
