.class public final Lpl;
.super LT5;
.source "SourceFile"


# instance fields
.field public d:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public j:I


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LT5;)V
    .locals 0

    iput-object p1, p0, Lpl;->i:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p0, p2}, LT5;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lpl;->h:Ljava/lang/Object;

    iget p1, p0, Lpl;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lpl;->j:I

    iget-object p1, p0, Lpl;->i:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;ILT5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
