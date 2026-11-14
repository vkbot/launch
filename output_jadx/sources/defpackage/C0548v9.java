package defpackage;

import android.view.View;

/* renamed from: v9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0548v9 extends AbstractC0348nb {
    public final /* synthetic */ AbstractComponentCallbacksC0598x9 r;

    public C0548v9(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        this.r = abstractComponentCallbacksC0598x9;
    }

    @Override // defpackage.AbstractC0348nb
    public final View R(int i) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.r;
        View view = abstractComponentCallbacksC0598x9.E;
        if (view != null) {
            return view.findViewById(i);
        }
        throw new IllegalStateException("Fragment " + abstractComponentCallbacksC0598x9 + " does not have a view");
    }

    @Override // defpackage.AbstractC0348nb
    public final boolean S() {
        return this.r.E != null;
    }
}
