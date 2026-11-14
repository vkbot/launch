package defpackage;

import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class Nb implements InterfaceC0425qa, Serializable {
    public final int a;

    public Nb(int i) {
        this.a = i;
    }

    @Override // defpackage.InterfaceC0425qa
    public final int f() {
        return this.a;
    }

    public final String toString() {
        Lg.a.getClass();
        String a = Mg.a(this);
        AbstractC0348nb.q(a, "renderLambdaToString(...)");
        return a;
    }
}
