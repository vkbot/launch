.class public final Lwl;
.super LT5;
.source "SourceFile"


# instance fields
.field public d:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LT5;)V
    .locals 0

    iput-object p1, p0, Lwl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p0, p2}, LT5;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lwl;->e:Ljava/lang/Object;

    iget p1, p0, Lwl;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lwl;->g:I

    iget-object p1, p0, Lwl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p1, p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LT5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
