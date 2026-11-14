package defpackage;

/* loaded from: classes.dex */
public class Fc extends AbstractC0412pn {
    public final C0507ti c = new C0507ti();

    @Override // defpackage.AbstractC0412pn
    public final void a() {
        C0507ti c0507ti = this.c;
        int i = c0507ti.c;
        if (i > 0) {
            c0507ti.b[0].getClass();
            throw new ClassCastException();
        }
        Object[] objArr = c0507ti.b;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        c0507ti.c = 0;
    }
}
