package defpackage;

import android.view.View;
import android.view.animation.BaseInterpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: xn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0612xn {
    public BaseInterpolator c;
    public AbstractC0554vf d;
    public boolean e;
    public long b = -1;
    public final Ck f = new Ck(this);
    public final ArrayList a = new ArrayList();

    public final void a() {
        if (this.e) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                ((C0587wn) it.next()).b();
            }
            this.e = false;
        }
    }

    public final void b() {
        View view;
        if (this.e) {
            return;
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            C0587wn c0587wn = (C0587wn) it.next();
            long j = this.b;
            if (j >= 0) {
                c0587wn.c(j);
            }
            BaseInterpolator baseInterpolator = this.c;
            if (baseInterpolator != null && (view = (View) c0587wn.a.get()) != null) {
                view.animate().setInterpolator(baseInterpolator);
            }
            if (this.d != null) {
                c0587wn.d(this.f);
            }
            View view2 = (View) c0587wn.a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.e = true;
    }
}
