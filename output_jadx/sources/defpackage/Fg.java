package defpackage;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class Fg extends C0488t {
    public final Gg d;
    public final WeakHashMap e = new WeakHashMap();

    public Fg(Gg gg) {
        this.d = gg;
    }

    @Override // defpackage.C0488t
    public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
        C0488t c0488t = (C0488t) this.e.get(view);
        return c0488t != null ? c0488t.a(view, accessibilityEvent) : this.a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // defpackage.C0488t
    public final L b(View view) {
        C0488t c0488t = (C0488t) this.e.get(view);
        return c0488t != null ? c0488t.b(view) : super.b(view);
    }

    @Override // defpackage.C0488t
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        C0488t c0488t = (C0488t) this.e.get(view);
        if (c0488t != null) {
            c0488t.c(view, accessibilityEvent);
        } else {
            super.c(view, accessibilityEvent);
        }
    }

    @Override // defpackage.C0488t
    public final void d(View view, J j) {
        Gg gg = this.d;
        boolean P = gg.d.P();
        View.AccessibilityDelegate accessibilityDelegate = this.a;
        AccessibilityNodeInfo accessibilityNodeInfo = j.a;
        if (!P) {
            RecyclerView recyclerView = gg.d;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().V(view, j);
                C0488t c0488t = (C0488t) this.e.get(view);
                if (c0488t != null) {
                    c0488t.d(view, j);
                    return;
                } else {
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                    return;
                }
            }
        }
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
    }

    @Override // defpackage.C0488t
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        C0488t c0488t = (C0488t) this.e.get(view);
        if (c0488t != null) {
            c0488t.e(view, accessibilityEvent);
        } else {
            super.e(view, accessibilityEvent);
        }
    }

    @Override // defpackage.C0488t
    public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        C0488t c0488t = (C0488t) this.e.get(viewGroup);
        return c0488t != null ? c0488t.f(viewGroup, view, accessibilityEvent) : this.a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // defpackage.C0488t
    public final boolean g(View view, int i, Bundle bundle) {
        Gg gg = this.d;
        if (!gg.d.P()) {
            RecyclerView recyclerView = gg.d;
            if (recyclerView.getLayoutManager() != null) {
                C0488t c0488t = (C0488t) this.e.get(view);
                if (c0488t != null) {
                    if (c0488t.g(view, i, bundle)) {
                        return true;
                    }
                } else if (super.g(view, i, bundle)) {
                    return true;
                }
                C0530ug c0530ug = recyclerView.getLayoutManager().b.c;
                return false;
            }
        }
        return super.g(view, i, bundle);
    }

    @Override // defpackage.C0488t
    public final void h(View view, int i) {
        C0488t c0488t = (C0488t) this.e.get(view);
        if (c0488t != null) {
            c0488t.h(view, i);
        } else {
            super.h(view, i);
        }
    }

    @Override // defpackage.C0488t
    public final void i(View view, AccessibilityEvent accessibilityEvent) {
        C0488t c0488t = (C0488t) this.e.get(view);
        if (c0488t != null) {
            c0488t.i(view, accessibilityEvent);
        } else {
            super.i(view, accessibilityEvent);
        }
    }
}
