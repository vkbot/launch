package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import defpackage.AbstractC0205hn;
import defpackage.C0123ej;
import defpackage.C0282kn;
import defpackage.D;
import defpackage.L;
import defpackage.Rm;
import defpackage.V5;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends V5 {
    public C0282kn a;
    public boolean b;
    public boolean c;
    public int d = 2;
    public float e = 0.0f;
    public float f = 0.5f;
    public final C0123ej g = new C0123ej(this);

    @Override // defpackage.V5
    public boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z = this.b;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z = coordinatorLayout.o(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.b = z;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.b = false;
        }
        if (!z) {
            return false;
        }
        if (this.a == null) {
            this.a = new C0282kn(coordinatorLayout.getContext(), coordinatorLayout, this.g);
        }
        return !this.c && this.a.p(motionEvent);
    }

    @Override // defpackage.V5
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i) {
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        if (Rm.c(view) == 0) {
            Rm.s(view, 1);
            AbstractC0205hn.f(view, 1048576);
            AbstractC0205hn.d(view, 0);
            if (r(view)) {
                AbstractC0205hn.g(view, D.j, new L(26, this));
            }
        }
        return false;
    }

    @Override // defpackage.V5
    public final boolean q(View view, MotionEvent motionEvent) {
        if (this.a == null) {
            return false;
        }
        if (this.c && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.a.j(motionEvent);
        return true;
    }

    public boolean r(View view) {
        return true;
    }
}
