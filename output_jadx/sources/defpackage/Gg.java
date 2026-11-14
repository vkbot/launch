package defpackage;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class Gg extends C0488t {
    public final RecyclerView d;
    public final Fg e;

    public Gg(RecyclerView recyclerView) {
        this.d = recyclerView;
        Fg fg = this.e;
        if (fg != null) {
            this.e = fg;
        } else {
            this.e = new Fg(this);
        }
    }

    @Override // defpackage.C0488t
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || this.d.P()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().S(accessibilityEvent);
        }
    }

    @Override // defpackage.C0488t
    public final void d(View view, J j) {
        this.a.onInitializeAccessibilityNodeInfo(view, j.a);
        RecyclerView recyclerView = this.d;
        if (recyclerView.P() || recyclerView.getLayoutManager() == null) {
            return;
        }
        AbstractC0353ng layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.b;
        layoutManager.T(recyclerView2.c, recyclerView2.h0, j);
    }

    @Override // defpackage.C0488t
    public final boolean g(View view, int i, Bundle bundle) {
        int E;
        int C;
        if (super.g(view, i, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.d;
        if (recyclerView.P() || recyclerView.getLayoutManager() == null) {
            return false;
        }
        AbstractC0353ng layoutManager = recyclerView.getLayoutManager();
        C0530ug c0530ug = layoutManager.b.c;
        int i2 = layoutManager.o;
        int i3 = layoutManager.n;
        Rect rect = new Rect();
        if (layoutManager.b.getMatrix().isIdentity() && layoutManager.b.getGlobalVisibleRect(rect)) {
            i2 = rect.height();
            i3 = rect.width();
        }
        if (i == 4096) {
            E = layoutManager.b.canScrollVertically(1) ? (i2 - layoutManager.E()) - layoutManager.B() : 0;
            if (layoutManager.b.canScrollHorizontally(1)) {
                C = (i3 - layoutManager.C()) - layoutManager.D();
            }
            C = 0;
        } else if (i != 8192) {
            E = 0;
            C = 0;
        } else {
            E = layoutManager.b.canScrollVertically(-1) ? -((i2 - layoutManager.E()) - layoutManager.B()) : 0;
            if (layoutManager.b.canScrollHorizontally(-1)) {
                C = -((i3 - layoutManager.C()) - layoutManager.D());
            }
            C = 0;
        }
        if (E == 0 && C == 0) {
            return false;
        }
        layoutManager.b.k0(C, E, true);
        return true;
    }
}
