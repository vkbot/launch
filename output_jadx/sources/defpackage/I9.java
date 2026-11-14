package defpackage;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class I9 implements H9 {
    public final int a;
    public final /* synthetic */ J9 b;

    public I9(J9 j9, int i) {
        this.b = j9;
        this.a = i;
    }

    @Override // defpackage.H9
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        J9 j9 = this.b;
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = j9.q;
        int i = this.a;
        if (abstractComponentCallbacksC0598x9 == null || i >= 0 || !abstractComponentCallbacksC0598x9.g().J()) {
            return j9.K(arrayList, arrayList2, i, 1);
        }
        return false;
    }
}
