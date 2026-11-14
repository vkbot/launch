package defpackage;

import android.util.SparseArray;
import java.nio.ByteBuffer;

/* renamed from: l8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0293l8 {
    public int a = 1;
    public final C0273ke b;
    public C0273ke c;
    public C0273ke d;
    public int e;
    public int f;

    public C0293l8(C0273ke c0273ke) {
        this.b = c0273ke;
        this.c = c0273ke;
    }

    public final int a(int i) {
        SparseArray sparseArray = this.c.a;
        C0273ke c0273ke = sparseArray == null ? null : (C0273ke) sparseArray.get(i);
        int i2 = 1;
        int i3 = 2;
        if (this.a == 2) {
            if (c0273ke != null) {
                this.c = c0273ke;
                this.f++;
            } else if (i == 65038) {
                b();
            } else if (i != 65039) {
                C0273ke c0273ke2 = this.c;
                if (c0273ke2.b != null) {
                    i3 = 3;
                    if (this.f != 1) {
                        this.d = c0273ke2;
                        b();
                    } else if (c()) {
                        this.d = this.c;
                        b();
                    } else {
                        b();
                    }
                } else {
                    b();
                }
            }
            i2 = i3;
        } else if (c0273ke == null) {
            b();
        } else {
            this.a = 2;
            this.c = c0273ke;
            this.f = 1;
            i2 = i3;
        }
        this.e = i;
        return i2;
    }

    public final void b() {
        this.a = 1;
        this.c = this.b;
        this.f = 0;
    }

    public final boolean c() {
        C0222ie c = this.c.b.c();
        int a = c.a(6);
        return !(a == 0 || ((ByteBuffer) c.d).get(a + c.a) == 0) || this.e == 65039;
    }
}
