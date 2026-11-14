package defpackage;

/* loaded from: classes.dex */
public final class D8 extends E8 {
    public final N3 c;
    public final /* synthetic */ G8 d;

    public D8(G8 g8, long j, N3 n3) {
        this.d = g8;
        this.a = j;
        this.b = -1;
        this.c = n3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.c.s(this.d);
    }

    @Override // defpackage.E8
    public final String toString() {
        return super.toString() + this.c;
    }
}
