package defpackage;

/* loaded from: classes.dex */
public abstract class H8 extends AbstractC0162g6 {
    public long c;
    public boolean d;
    public T2 e;

    public final void i() {
        long j = this.c - 4294967296L;
        this.c = j;
        if (j <= 0 && this.d) {
            n();
        }
    }

    public abstract Thread j();

    public final void k(boolean z) {
        this.c = (z ? 4294967296L : 1L) + this.c;
        if (z) {
            return;
        }
        this.d = true;
    }

    public final boolean l() {
        T2 t2 = this.e;
        if (t2 == null) {
            return false;
        }
        AbstractC0521u7 abstractC0521u7 = (AbstractC0521u7) (t2.isEmpty() ? null : t2.h());
        if (abstractC0521u7 == null) {
            return false;
        }
        abstractC0521u7.run();
        return true;
    }

    public void m(long j, E8 e8) {
        G6.i.s(j, e8);
    }

    public abstract void n();
}
