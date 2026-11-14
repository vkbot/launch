package defpackage;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class W8 extends C0481sh {
    public final HashMap e = new HashMap();

    @Override // defpackage.C0481sh
    public final C0406ph a(Object obj) {
        return (C0406ph) this.e.get(obj);
    }

    @Override // defpackage.C0481sh
    public final Object b(Object obj) {
        Object b = super.b(obj);
        this.e.remove(obj);
        return b;
    }
}
