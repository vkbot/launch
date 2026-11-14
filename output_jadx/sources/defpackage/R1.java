package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class R1 implements ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ R1(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        Object obj = this.b;
        switch (this.a) {
            case 0:
                C0055c2 c0055c2 = (C0055c2) obj;
                if (!c0055c2.getInternalPopup().a()) {
                    c0055c2.f.f(T1.b(c0055c2), T1.a(c0055c2));
                }
                ViewTreeObserver viewTreeObserver = c0055c2.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    S1.a(viewTreeObserver, this);
                    return;
                }
                return;
            case 1:
                Z1 z1 = (Z1) obj;
                C0055c2 c0055c22 = z1.E;
                z1.getClass();
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                if (!Um.b(c0055c22) || !c0055c22.getGlobalVisibleRect(z1.C)) {
                    z1.dismiss();
                    return;
                } else {
                    z1.s();
                    z1.h();
                    return;
                }
            case 2:
                Y3 y3 = (Y3) obj;
                if (y3.a()) {
                    ArrayList arrayList = y3.h;
                    if (arrayList.size() <= 0 || ((X3) arrayList.get(0)).a.y) {
                        return;
                    }
                    View view = y3.o;
                    if (view == null || !view.isShown()) {
                        y3.dismiss();
                        return;
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((X3) it.next()).a.h();
                    }
                    return;
                }
                return;
            default:
                Di di = (Di) obj;
                if (di.a()) {
                    C0067ce c0067ce = di.h;
                    if (c0067ce.y) {
                        return;
                    }
                    View view2 = di.m;
                    if (view2 == null || !view2.isShown()) {
                        di.dismiss();
                        return;
                    } else {
                        c0067ce.h();
                        return;
                    }
                }
                return;
        }
    }
}
