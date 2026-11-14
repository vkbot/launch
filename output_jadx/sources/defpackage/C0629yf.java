package defpackage;

/* renamed from: yf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0629yf extends C0604xf {
    public final Object c;

    public C0629yf() {
        super(12);
        this.c = new Object();
    }

    @Override // defpackage.C0604xf
    public final Object a() {
        Object a;
        synchronized (this.c) {
            a = super.a();
        }
        return a;
    }

    @Override // defpackage.C0604xf
    public final boolean c(Object obj) {
        boolean c;
        synchronized (this.c) {
            c = super.c(obj);
        }
        return c;
    }
}
