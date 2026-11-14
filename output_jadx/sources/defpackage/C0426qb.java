package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: qb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0426qb extends Ab {
    public static final AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(C0426qb.class, "_invoked");
    private volatile int _invoked;
    public final Cb e;

    public C0426qb(Cb cb) {
        this.e = cb;
    }

    @Override // defpackage.InterfaceC0089da
    public final /* bridge */ /* synthetic */ Object h(Object obj) {
        o((Throwable) obj);
        return C0486sm.a;
    }

    @Override // defpackage.Cb
    public final void o(Throwable th) {
        if (f.compareAndSet(this, 0, 1)) {
            this.e.h(th);
        }
    }
}
