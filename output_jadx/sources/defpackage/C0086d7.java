package defpackage;

import java.util.Iterator;

/* renamed from: d7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0086d7 implements Lh {
    public final String a;
    public final int b;
    public final int c;
    public final Ri d;

    public C0086d7(String str, int i, int i2, Ri ri) {
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = ri;
    }

    @Override // defpackage.Lh
    public final Iterator iterator() {
        return new C0060c7(this);
    }
}
