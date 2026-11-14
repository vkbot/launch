.class public final LQ7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/FrameLayout;

.field public final b:Landroid/widget/LinearLayout;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroid/view/View;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/LinearLayout;

.field public final i:Landroid/widget/FrameLayout;

.field public final j:Landroid/widget/ImageView;

.field public final k:Landroid/widget/ImageView;

.field public final l:Landroid/widget/ImageView;

.field public final m:Landroid/widget/LinearLayout;

.field public final n:Landroid/widget/TextView;

.field public final o:Landroid/widget/ImageView;

.field public final p:Landroid/widget/TextView;

.field public final q:Landroid/widget/LinearLayout;

.field public final r:Landroid/widget/FrameLayout;

.field public final s:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, LQ7;->a:Landroid/widget/FrameLayout;

    move-object v1, p2

    iput-object v1, v0, LQ7;->b:Landroid/widget/LinearLayout;

    move-object v1, p3

    iput-object v1, v0, LQ7;->c:Landroid/widget/ImageView;

    move-object v1, p4

    iput-object v1, v0, LQ7;->d:Landroid/widget/ImageView;

    move-object v1, p5

    iput-object v1, v0, LQ7;->e:Landroid/view/View;

    move-object v1, p6

    iput-object v1, v0, LQ7;->f:Landroid/widget/ImageView;

    move-object v1, p7

    iput-object v1, v0, LQ7;->g:Landroid/widget/TextView;

    move-object v1, p8

    iput-object v1, v0, LQ7;->h:Landroid/widget/LinearLayout;

    move-object v1, p9

    iput-object v1, v0, LQ7;->i:Landroid/widget/FrameLayout;

    move-object v1, p10

    iput-object v1, v0, LQ7;->j:Landroid/widget/ImageView;

    move-object v1, p11

    iput-object v1, v0, LQ7;->k:Landroid/widget/ImageView;

    move-object v1, p12

    iput-object v1, v0, LQ7;->l:Landroid/widget/ImageView;

    move-object v1, p13

    iput-object v1, v0, LQ7;->m:Landroid/widget/LinearLayout;

    move-object/from16 v1, p14

    iput-object v1, v0, LQ7;->n:Landroid/widget/TextView;

    move-object/from16 v1, p15

    iput-object v1, v0, LQ7;->o:Landroid/widget/ImageView;

    move-object/from16 v1, p16

    iput-object v1, v0, LQ7;->p:Landroid/widget/TextView;

    move-object/from16 v1, p17

    iput-object v1, v0, LQ7;->q:Landroid/widget/LinearLayout;

    move-object/from16 v1, p18

    iput-object v1, v0, LQ7;->r:Landroid/widget/FrameLayout;

    move-object/from16 v1, p19

    iput-object v1, v0, LQ7;->s:Landroid/widget/ImageView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;)LQ7;
    .locals 23

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0b0032

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080030

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f080093

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0800aa

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f0800c6

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    const v1, 0x7f08012c

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f08012d

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v1, 0x7f08012e

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f08012f

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f080130

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    const v1, 0x7f0801b4

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    const v1, 0x7f0801b5

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    const v1, 0x7f0801b6

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f0801b7

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0801bc

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/ImageView;

    if-eqz v18, :cond_0

    const v1, 0x7f0801bd

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0801be

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/LinearLayout;

    if-eqz v20, :cond_0

    const v1, 0x7f0801bf

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/FrameLayout;

    if-eqz v21, :cond_0

    const v1, 0x7f0801c0

    invoke-static {v0, v1}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/ImageView;

    if-eqz v22, :cond_0

    new-instance v1, LQ7;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v22}, LQ7;-><init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
