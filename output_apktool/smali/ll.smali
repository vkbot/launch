.class public final Lll;
.super LNb;
.source "SourceFile"

# interfaces
.implements LS9;


# instance fields
.field public final synthetic b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic c:Lcom/omoda/launcher/data/RemoteApp;

.field public final synthetic d:Ljava/io/File;

.field public final synthetic e:Lhl;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/RemoteApp;Ljava/io/File;Lhl;)V
    .locals 0

    iput-object p1, p0, Lll;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, Lll;->c:Lcom/omoda/launcher/data/RemoteApp;

    iput-object p3, p0, Lll;->d:Ljava/io/File;

    iput-object p4, p0, Lll;->e:Lhl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v0, p0, Lll;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljb;->a:Landroid/os/Handler;

    iget-object v6, p0, Lll;->c:Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {v6}, Lcom/omoda/launcher/data/RemoteApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, LOl;

    iget-object v2, p0, Lll;->d:Ljava/io/File;

    iget-object v3, p0, Lll;->e:Lhl;

    move-object v1, v8

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, LOl;-><init>(Ljava/io/File;Lhl;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/RemoteApp;)V

    const/4 p0, 0x0

    invoke-static {p0, v8, v0, v7}, Ljb;->c(LS9;Lha;Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method
