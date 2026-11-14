package defpackage;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class W7 extends AbstractC0152fm {
    public final /* synthetic */ X7 q;

    public W7(X7 x7) {
        this.q = x7;
    }

    @Override // defpackage.AbstractC0152fm
    public final void y(Throwable th) {
        this.q.a.d(th);
    }

    @Override // defpackage.AbstractC0152fm
    public final void z(C0446r7 c0446r7) {
        X7 x7 = this.q;
        x7.c = c0446r7;
        x7.b = new K1(x7.c, new T7(15), x7.a.h);
        C0035b8 c0035b8 = x7.a;
        c0035b8.getClass();
        ArrayList arrayList = new ArrayList();
        c0035b8.a.writeLock().lock();
        try {
            c0035b8.c = 1;
            arrayList.addAll(c0035b8.b);
            c0035b8.b.clear();
            c0035b8.a.writeLock().unlock();
            c0035b8.d.post(new J3(arrayList, c0035b8.c, (Throwable) null));
        } catch (Throwable th) {
            c0035b8.a.writeLock().unlock();
            throw th;
        }
    }
}
