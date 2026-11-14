.class public abstract Lgf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, LG2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :goto_0
    move v3, v0

    goto :goto_2

    :cond_1
    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    array-length v4, v2

    if-gtz v4, :cond_2

    goto :goto_2

    :cond_2
    aget-object v2, v2, v0

    :cond_3
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v1, :cond_5

    invoke-static {v4, v2}, LHe;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p0}, LH2;->c(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v3, p1, v4, v2}, LH2;->a(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p0}, LH2;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p1, v1, p0}, LH2;->a(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_5
    const-class v1, Landroid/app/AppOpsManager;

    invoke-static {p0, v1}, LG2;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    invoke-static {p0, p1, v2}, LG2;->c(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_1
    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, -0x2

    move v3, p0

    :cond_7
    :goto_2
    return v3
.end method

.method public static final b(II)V
    .locals 3

    if-lez p0, :cond_0

    if-lez p1, :cond_0

    return-void

    :cond_0
    const-string v0, " must be greater than zero."

    if-eq p0, p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Both size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and step "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "size "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final e(Ljava/lang/Throwable;)Ljh;
    .locals 1

    const-string v0, "exception"

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljh;

    invoke-direct {v0, p0}, Ljh;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)LG1;
    .locals 3

    invoke-static {p1, p3}, Lgf;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0, p4, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v1, p1, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    iget p0, p1, Landroid/util/TypedValue;->data:I

    new-instance p1, LG1;

    invoke-direct {p1, p3, p3, p0}, LG1;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    :try_start_0
    invoke-static {p1, p0, p2}, LG1;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LG1;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ComplexColorCompat"

    const-string p2, "Failed to inflate ComplexColor."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, p3

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, LG1;

    invoke-direct {p0, p3, p3, v0}, LG1;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object p0
.end method

.method public static i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res/android"

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j()Z
    .locals 1

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static k(J)J
    .locals 4

    const-wide/32 v0, 0xffff

    and-long v2, p0, v0

    long-to-int v2, v2

    int-to-short v2, v2

    const/16 v3, 0x10

    ushr-long/2addr p0, v3

    and-long/2addr p0, v0

    long-to-int p0, p0

    int-to-short p0, p0

    add-int p1, v2, p0

    int-to-short p1, p1

    shl-int/lit8 v0, p1, 0x9

    ushr-int/lit8 p1, p1, 0x17

    or-int/2addr p1, v0

    int-to-short p1, p1

    add-int/2addr p1, v2

    int-to-short p1, p1

    xor-int/2addr p0, v2

    int-to-short p0, p0

    shl-int/lit8 v0, v2, 0xd

    ushr-int/lit8 v1, v2, 0x13

    or-int/2addr v0, v1

    int-to-short v0, v0

    xor-int/2addr v0, p0

    int-to-short v0, v0

    shl-int/lit8 v1, p0, 0x5

    xor-int/2addr v0, v1

    int-to-short v0, v0

    shl-int/lit8 v1, p0, 0xa

    ushr-int/lit8 p0, p0, 0x16

    or-int/2addr p0, v1

    int-to-short p0, p0

    int-to-long v1, p1

    shl-long/2addr v1, v3

    int-to-long p0, p0

    or-long/2addr p0, v1

    shl-long/2addr p0, v3

    int-to-long v0, v0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static l(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static final s(LAh;LAh;Lha;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {p2}, Lfm;->b(Ljava/lang/Object;)V

    invoke-interface {p2, p1, p0}, Lha;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, La5;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, La5;-><init>(Ljava/lang/Throwable;Z)V

    move-object p1, p2

    :goto_0
    sget-object p2, Ll6;->a:Ll6;

    if-ne p1, p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p1}, LHb;->D(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, LC6;->k:LL;

    if-ne p0, p1, :cond_1

    goto :goto_3

    :cond_1
    instance-of p1, p0, La5;

    if-nez p1, :cond_5

    instance-of p1, p0, LRa;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, LRa;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    iget-object p1, p1, LRa;->a:LQa;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p2, p1

    goto :goto_3

    :cond_4
    :goto_2
    move-object p2, p0

    :goto_3
    return-object p2

    :cond_5
    check-cast p0, La5;

    iget-object p0, p0, La5;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public static final t(Ljava/lang/String;JJJ)J
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    const/4 v5, 0x1

    sget v6, Lgj;->a:I

    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_0

    move-wide/from16 v5, p1

    goto/16 :goto_7

    :cond_0
    const/16 v8, 0xa

    invoke-static {v8}, Lfm;->f(I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    :goto_1
    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ge v11, v12, :cond_3

    const/4 v12, -0x1

    goto :goto_2

    :cond_3
    if-ne v11, v12, :cond_4

    move v12, v10

    goto :goto_2

    :cond_4
    move v12, v5

    :goto_2
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v12, :cond_6

    if-ne v9, v5, :cond_5

    goto :goto_1

    :cond_5
    const/16 v12, 0x2d

    if-ne v11, v12, :cond_7

    const-wide/high16 v13, -0x8000000000000000L

    move v10, v5

    :cond_6
    move v11, v10

    goto :goto_3

    :cond_7
    const/16 v12, 0x2b

    if-ne v11, v12, :cond_1

    move v11, v10

    move v10, v5

    :goto_3
    const-wide v15, -0x38e38e38e38e38eL    # -2.772000429909333E291

    const-wide/16 v17, 0x0

    move-wide/from16 v5, v17

    move-wide/from16 v18, v15

    :goto_4
    if-ge v10, v9, :cond_b

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12, v8}, Ljava/lang/Character;->digit(II)I

    move-result v12

    if-gez v12, :cond_8

    goto :goto_1

    :cond_8
    cmp-long v20, v5, v18

    if-gez v20, :cond_9

    cmp-long v18, v18, v15

    if-nez v18, :cond_1

    int-to-long v3, v8

    div-long v18, v13, v3

    cmp-long v3, v5, v18

    if-gez v3, :cond_9

    goto :goto_1

    :cond_9
    int-to-long v3, v8

    mul-long/2addr v5, v3

    int-to-long v3, v12

    add-long v20, v13, v3

    cmp-long v12, v5, v20

    if-gez v12, :cond_a

    goto :goto_1

    :cond_a
    sub-long/2addr v5, v3

    const/4 v3, 0x1

    add-int/2addr v10, v3

    move-wide/from16 v3, p5

    goto :goto_4

    :cond_b
    if-eqz v11, :cond_c

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_5
    move-object v6, v3

    goto :goto_6

    :cond_c
    neg-long v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_5

    :goto_6
    const/16 v3, 0x27

    const-string v4, "System property \'"

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-gtz v7, :cond_d

    move-wide/from16 v7, p5

    cmp-long v9, v5, v7

    if-gtz v9, :cond_e

    :goto_7
    return-wide v5

    :cond_d
    move-wide/from16 v7, p5

    :cond_e
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' should be in range "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".."

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", but is \'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' has unrecognized value \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static u(Ljava/lang/String;IIII)I
    .locals 7

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const p3, 0x7fffffff

    :cond_1
    int-to-long v1, p1

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lgf;->t(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static final v(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p0, Ljh;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Ljh;

    iget-object p0, p0, Ljh;->a:Ljava/lang/Throwable;

    throw p0
.end method


# virtual methods
.method public abstract c(Landroid/view/View;I)I
.end method

.method public abstract d(Landroid/view/View;I)I
.end method

.method public g(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public h()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract m(I)V
.end method

.method public abstract n(Landroid/graphics/Typeface;Z)V
.end method

.method public o(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public abstract p(I)V
.end method

.method public abstract q(Landroid/view/View;II)V
.end method

.method public abstract r(Landroid/view/View;FF)V
.end method

.method public abstract w(Landroid/view/View;I)Z
.end method
