.class public final Lml;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic c:Lcom/omoda/launcher/data/RemoteApp;

.field public final synthetic d:Lhl;

.field public final synthetic e:LJl;

.field public final synthetic f:Ljava/io/File;

.field public final synthetic g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/RemoteApp;Lhl;LJl;Ljava/io/File;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lml;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, Lml;->c:Lcom/omoda/launcher/data/RemoteApp;

    iput-object p3, p0, Lml;->d:Lhl;

    iput-object p4, p0, Lml;->e:LJl;

    iput-object p5, p0, Lml;->f:Ljava/io/File;

    iput-object p6, p0, Lml;->g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    const-string v0, "msg"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lml;->d:Lhl;

    iget-object v1, p0, Lml;->c:Lcom/omoda/launcher/data/RemoteApp;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lml;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v1}, Lfm;->G(Landroid/content/Context;Lcom/omoda/launcher/data/RemoteApp;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, p2}, Lhl;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lml;->f:Ljava/io/File;

    iget-object v2, p0, Lml;->e:LJl;

    sget-object v3, Ljb;->a:Landroid/os/Handler;

    const-string v3, "INSTALL_FAILED_VERSION_DOWNGRADE"

    invoke-static {p2, v3}, LSi;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    invoke-static {p2, v3}, LSi;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, p2}, Lhl;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p2, Lll;

    iget-object p0, p0, Lml;->g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p2, p0, v1, p1, v0}, Lll;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/RemoteApp;Ljava/io/File;Lhl;)V

    new-instance p0, LS4;

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, LS4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, p2, p0}, LJl;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method
