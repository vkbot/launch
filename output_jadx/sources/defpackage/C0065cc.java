package defpackage;

/* renamed from: cc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0065cc {
    public Wb a;
    public Zb b;

    public final void a(InterfaceC0039bc interfaceC0039bc, Vb vb) {
        Wb a = vb.a();
        Wb wb = this.a;
        AbstractC0348nb.r(wb, "state1");
        if (a.compareTo(wb) < 0) {
            wb = a;
        }
        this.a = wb;
        this.b.b(interfaceC0039bc, vb);
        this.a = a;
    }
}
