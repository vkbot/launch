package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class X6 extends AbstractC0540v1 {
    public boolean c;
    public boolean d;
    public K1 e;

    public final K1 j(Context context) {
        if (this.d) {
            return this.e;
        }
        C0557vi c0557vi = (C0557vi) this.a;
        K1 B = C6.B(context, c0557vi.c, c0557vi.a == 2, this.c);
        this.e = B;
        this.d = true;
        return B;
    }
}
