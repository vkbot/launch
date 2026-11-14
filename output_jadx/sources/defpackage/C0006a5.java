package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: a5, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0006a5 {
    public static final AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(C0006a5.class, "_handled");
    private volatile int _handled;
    public final Throwable a;

    public C0006a5(Throwable th, boolean z) {
        this.a = th;
        this._handled = z ? 1 : 0;
    }

    public final String toString() {
        return getClass().getSimpleName() + '[' + this.a + ']';
    }
}
