package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import defpackage.AbstractC0205hn;
import defpackage.AbstractC0348nb;
import defpackage.AbstractC0512tn;
import defpackage.V5;
import defpackage.Y5;
import defpackage.Yf;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class AppBarLayout$ScrollingViewBehavior extends AbstractC0512tn {
    public final int b;

    public AppBarLayout$ScrollingViewBehavior() {
        new Rect();
        new Rect();
    }

    public static void s(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
        }
    }

    @Override // defpackage.V5
    public final void b(View view) {
    }

    @Override // defpackage.V5
    public boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
        V5 v5 = ((Y5) view2.getLayoutParams()).a;
        if (v5 instanceof AppBarLayout$BaseBehavior) {
            int bottom = view2.getBottom() - view.getTop();
            ((AppBarLayout$BaseBehavior) v5).getClass();
            int i = this.b;
            int v = bottom - (i == 0 ? 0 : AbstractC0348nb.v((int) (0.0f * i), 0, i));
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            view.offsetTopAndBottom(v);
        }
        return false;
    }

    @Override // defpackage.V5
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        int i4 = view.getLayoutParams().height;
        if (i4 != -1 && i4 != -2) {
            return false;
        }
        s(coordinatorLayout.j(view));
        return false;
    }

    @Override // defpackage.V5
    public final void l(CoordinatorLayout coordinatorLayout, View view) {
        s(coordinatorLayout.j(view));
    }

    @Override // defpackage.AbstractC0512tn
    public final void r(CoordinatorLayout coordinatorLayout, View view, int i) {
        s(coordinatorLayout.j(view));
        coordinatorLayout.q(view, i);
    }

    public AppBarLayout$ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        new Rect();
        new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Yf.u);
        this.b = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
    }
}
