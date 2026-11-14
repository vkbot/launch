.class public final LN8;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lda;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/content/pm/PackageManager;

.field public final synthetic d:Landroid/content/res/Resources;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>(LM8;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LN8;->b:I

    .line 1
    iput-object p1, p0, LN8;->e:Ljava/lang/Object;

    iput-object p2, p0, LN8;->f:Landroid/os/Parcelable;

    iput-object p3, p0, LN8;->c:Landroid/content/pm/PackageManager;

    iput-object p4, p0, LN8;->d:Landroid/content/res/Resources;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;LL8;Landroid/content/pm/ActivityInfo;Landroid/content/pm/PackageManager;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LN8;->b:I

    .line 2
    iput-object p1, p0, LN8;->d:Landroid/content/res/Resources;

    iput-object p2, p0, LN8;->e:Ljava/lang/Object;

    iput-object p3, p0, LN8;->f:Landroid/os/Parcelable;

    iput-object p4, p0, LN8;->c:Landroid/content/pm/PackageManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LN8;->c:Landroid/content/pm/PackageManager;

    iget-object v1, p0, LN8;->f:Landroid/os/Parcelable;

    iget-object v2, p0, LN8;->d:Landroid/content/res/Resources;

    iget-object v3, p0, LN8;->e:Ljava/lang/Object;

    iget p0, p0, LN8;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast v3, LM8;

    if-eqz v3, :cond_0

    sget-object p1, LO8;->a:Ljava/util/Set;

    iget-object p1, v3, LM8;->c:Ljava/lang/String;

    invoke-static {v2, p1, p0}, LO8;->a(Landroid/content/res/Resources;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_1
    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, LO8;->a:Ljava/util/Set;

    check-cast v3, LL8;

    iget-object p1, v3, LL8;->e:Ljava/lang/String;

    invoke-static {v2, p1, p0}, LO8;->a(Landroid/content/res/Resources;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_3

    check-cast v1, Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
