package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes.dex */
public final class Q3 extends C0006a5 {
    public static final AtomicIntegerFieldUpdater c = AtomicIntegerFieldUpdater.newUpdater(Q3.class, "_resumed");
    private volatile int _resumed;

    public Q3(N3 n3, Throwable th, boolean z) {
        super(th, z);
        this._resumed = 0;
    }
}
