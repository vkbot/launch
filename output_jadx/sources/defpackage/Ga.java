package defpackage;

import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class Ga extends D5 {
    public D5[] q0 = new D5[4];
    public int r0 = 0;

    public final void R(int i, On on, ArrayList arrayList) {
        for (int i2 = 0; i2 < this.r0; i2++) {
            D5 d5 = this.q0[i2];
            ArrayList arrayList2 = on.a;
            if (!arrayList2.contains(d5)) {
                arrayList2.add(d5);
            }
        }
        for (int i3 = 0; i3 < this.r0; i3++) {
            AbstractC0152fm.k(this.q0[i3], i, arrayList, on);
        }
    }

    public void S() {
    }
}
