package defpackage;

import java.util.concurrent.CancellationException;

/* renamed from: j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0232j {
    public static final C0232j b;
    public static final C0232j c;
    public final CancellationException a;

    static {
        if (AbstractFutureC0388p.d) {
            c = null;
            b = null;
        } else {
            c = new C0232j(false, null);
            b = new C0232j(true, null);
        }
    }

    public C0232j(boolean z, CancellationException cancellationException) {
        this.a = cancellationException;
    }
}
