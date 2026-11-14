package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import defpackage.C0182h0;
import defpackage.C0285l0;
import defpackage.C0338n1;
import defpackage.C0587wn;
import defpackage.D6;
import defpackage.Dk;
import defpackage.G5;
import defpackage.LayoutInflaterFactory2C0615y1;
import defpackage.Ld;

/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {
    public TypedValue a;
    public TypedValue b;
    public TypedValue c;
    public TypedValue d;
    public TypedValue e;
    public TypedValue f;
    public final Rect g;
    public G5 h;

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.g = new Rect();
    }

    public TypedValue getFixedHeightMajor() {
        if (this.e == null) {
            this.e = new TypedValue();
        }
        return this.e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f == null) {
            this.f = new TypedValue();
        }
        return this.f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.c == null) {
            this.c = new TypedValue();
        }
        return this.c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.d == null) {
            this.d = new TypedValue();
        }
        return this.d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.a == null) {
            this.a = new TypedValue();
        }
        return this.a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.b == null) {
            this.b = new TypedValue();
        }
        return this.b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        G5 g5 = this.h;
        if (g5 != null) {
            g5.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        C0285l0 c0285l0;
        super.onDetachedFromWindow();
        G5 g5 = this.h;
        if (g5 != null) {
            LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = ((C0338n1) g5).b;
            D6 d6 = layoutInflaterFactory2C0615y1.r;
            if (d6 != null) {
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) d6;
                actionBarOverlayLayout.k();
                ActionMenuView actionMenuView = ((Dk) actionBarOverlayLayout.e).a.a;
                if (actionMenuView != null && (c0285l0 = actionMenuView.t) != null) {
                    c0285l0.e();
                    C0182h0 c0182h0 = c0285l0.t;
                    if (c0182h0 != null && c0182h0.b()) {
                        c0182h0.i.dismiss();
                    }
                }
            }
            if (layoutInflaterFactory2C0615y1.w != null) {
                layoutInflaterFactory2C0615y1.l.getDecorView().removeCallbacks(layoutInflaterFactory2C0615y1.x);
                if (layoutInflaterFactory2C0615y1.w.isShowing()) {
                    try {
                        layoutInflaterFactory2C0615y1.w.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                layoutInflaterFactory2C0615y1.w = null;
            }
            C0587wn c0587wn = layoutInflaterFactory2C0615y1.y;
            if (c0587wn != null) {
                c0587wn.b();
            }
            Ld ld = layoutInflaterFactory2C0615y1.z(0).h;
            if (ld != null) {
                ld.c(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ac A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b3  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r17, int r18) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(G5 g5) {
        this.h = g5;
    }
}
