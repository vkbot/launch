package defpackage;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;

/* renamed from: yk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0634yk implements InterfaceC0118ee {
    public Ld a;
    public Pd b;
    public final /* synthetic */ Toolbar c;

    public C0634yk(Toolbar toolbar) {
        this.c = toolbar;
    }

    @Override // defpackage.InterfaceC0118ee
    public final void b(Ld ld, boolean z) {
    }

    @Override // defpackage.InterfaceC0118ee
    public final void c() {
        if (this.b != null) {
            Ld ld = this.a;
            if (ld != null) {
                int size = ld.f.size();
                for (int i = 0; i < size; i++) {
                    if (this.a.getItem(i) == this.b) {
                        return;
                    }
                }
            }
            g(this.b);
        }
    }

    @Override // defpackage.InterfaceC0118ee
    public final boolean d() {
        return false;
    }

    @Override // defpackage.InterfaceC0118ee
    public final void f(Context context, Ld ld) {
        Pd pd;
        Ld ld2 = this.a;
        if (ld2 != null && (pd = this.b) != null) {
            ld2.d(pd);
        }
        this.a = ld;
    }

    @Override // defpackage.InterfaceC0118ee
    public final boolean g(Pd pd) {
        Toolbar toolbar = this.c;
        KeyEvent.Callback callback = toolbar.i;
        if (callback instanceof J4) {
            ((J4) callback).e();
        }
        toolbar.removeView(toolbar.i);
        toolbar.removeView(toolbar.h);
        toolbar.i = null;
        ArrayList arrayList = toolbar.E;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.b = null;
        toolbar.requestLayout();
        pd.C = false;
        pd.n.p(false);
        toolbar.v();
        return true;
    }

    @Override // defpackage.InterfaceC0118ee
    public final boolean j(Ti ti) {
        return false;
    }

    @Override // defpackage.InterfaceC0118ee
    public final boolean k(Pd pd) {
        Toolbar toolbar = this.c;
        toolbar.c();
        ViewParent parent = toolbar.h.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.h);
            }
            toolbar.addView(toolbar.h);
        }
        View actionView = pd.getActionView();
        toolbar.i = actionView;
        this.b = pd;
        ViewParent parent2 = actionView.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.i);
            }
            C0659zk h = Toolbar.h();
            h.a = (toolbar.n & 112) | 8388611;
            h.b = 2;
            toolbar.i.setLayoutParams(h);
            toolbar.addView(toolbar.i);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((C0659zk) childAt.getLayoutParams()).b != 2 && childAt != toolbar.a) {
                toolbar.removeViewAt(childCount);
                toolbar.E.add(childAt);
            }
        }
        toolbar.requestLayout();
        pd.C = true;
        pd.n.p(false);
        KeyEvent.Callback callback = toolbar.i;
        if (callback instanceof J4) {
            ((J4) callback).a();
        }
        toolbar.v();
        return true;
    }
}
