package defpackage;

import android.util.SparseArray;

/* renamed from: ke, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0273ke {
    public final SparseArray a;
    public C0267k8 b;

    public C0273ke(int i) {
        this.a = new SparseArray(i);
    }

    public final void a(C0267k8 c0267k8, int i, int i2) {
        int a = c0267k8.a(i);
        SparseArray sparseArray = this.a;
        C0273ke c0273ke = sparseArray == null ? null : (C0273ke) sparseArray.get(a);
        if (c0273ke == null) {
            c0273ke = new C0273ke(1);
            sparseArray.put(c0267k8.a(i), c0273ke);
        }
        if (i2 > i) {
            c0273ke.a(c0267k8, i + 1, i2);
        } else {
            c0273ke.b = c0267k8;
        }
    }
}
