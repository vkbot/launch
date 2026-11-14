package defpackage;

import android.os.Bundle;

/* renamed from: a1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0002a1 implements Qe {
    public final /* synthetic */ int a;
    public final /* synthetic */ AbstractActivityC0028b1 b;

    public /* synthetic */ C0002a1(AbstractActivityC0028b1 abstractActivityC0028b1, int i) {
        this.a = i;
        this.b = abstractActivityC0028b1;
    }

    @Override // defpackage.Qe
    public final void a() {
        switch (this.a) {
            case 0:
                AbstractActivityC0028b1 abstractActivityC0028b1 = this.b;
                AbstractC0286l1 j = abstractActivityC0028b1.j();
                j.a();
                ((C0183h1) abstractActivityC0028b1.e.c).c("androidx:appcompat");
                j.e();
                return;
            default:
                AbstractActivityC0028b1 abstractActivityC0028b12 = this.b;
                L l = abstractActivityC0028b12.p;
                C0623y9 c0623y9 = (C0623y9) l.b;
                c0623y9.u.b(c0623y9, c0623y9, null);
                Bundle c = ((C0183h1) abstractActivityC0028b12.e.c).c("android:support:fragments");
                if (c != null) {
                    ((C0623y9) l.b).u.N(c.getParcelable("android:support:fragments"));
                    return;
                }
                return;
        }
    }
}
