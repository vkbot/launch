package defpackage;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: o5, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0368o5 implements Lh {
    public final AtomicReference a;

    public C0368o5(Lh lh) {
        this.a = new AtomicReference(lh);
    }

    @Override // defpackage.Lh
    public final Iterator iterator() {
        Lh lh = (Lh) this.a.getAndSet(null);
        if (lh != null) {
            return lh.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
