package defpackage;

import java.util.WeakHashMap;

/* renamed from: xc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0601xc implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Ac b;

    public /* synthetic */ RunnableC0601xc(Ac ac, int i) {
        this.a = i;
        this.b = ac;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Ac ac = this.b;
        switch (this.a) {
            case 0:
                K7 k7 = ac.c;
                if (k7 != null) {
                    k7.setListSelectionHidden(true);
                    k7.requestLayout();
                    return;
                }
                return;
            default:
                K7 k72 = ac.c;
                if (k72 != null) {
                    WeakHashMap weakHashMap = AbstractC0205hn.a;
                    if (!Um.b(k72) || ac.c.getCount() <= ac.c.getChildCount() || ac.c.getChildCount() > ac.m) {
                        return;
                    }
                    ac.z.setInputMethodMode(2);
                    ac.h();
                    return;
                }
                return;
        }
    }
}
