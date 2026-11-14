package defpackage;

import java.util.Arrays;

/* renamed from: qi, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0433qi implements Comparable {
    public boolean a;
    public float e;
    public int l;
    public int b = -1;
    public int c = -1;
    public int d = 0;
    public boolean f = false;
    public final float[] g = new float[9];
    public final float[] h = new float[9];
    public X2[] i = new X2[16];
    public int j = 0;
    public int k = 0;

    public C0433qi(int i) {
        this.l = i;
    }

    public final void a(X2 x2) {
        int i = 0;
        while (true) {
            int i2 = this.j;
            if (i >= i2) {
                X2[] x2Arr = this.i;
                if (i2 >= x2Arr.length) {
                    this.i = (X2[]) Arrays.copyOf(x2Arr, x2Arr.length * 2);
                }
                X2[] x2Arr2 = this.i;
                int i3 = this.j;
                x2Arr2[i3] = x2;
                this.j = i3 + 1;
                return;
            }
            if (this.i[i] == x2) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void b(X2 x2) {
        int i = this.j;
        int i2 = 0;
        while (i2 < i) {
            if (this.i[i2] == x2) {
                while (i2 < i - 1) {
                    X2[] x2Arr = this.i;
                    int i3 = i2 + 1;
                    x2Arr[i2] = x2Arr[i3];
                    i2 = i3;
                }
                this.j--;
                return;
            }
            i2++;
        }
    }

    public final void c() {
        this.l = 5;
        this.d = 0;
        this.b = -1;
        this.c = -1;
        this.e = 0.0f;
        this.f = false;
        int i = this.j;
        for (int i2 = 0; i2 < i; i2++) {
            this.i[i2] = null;
        }
        this.j = 0;
        this.k = 0;
        this.a = false;
        Arrays.fill(this.h, 0.0f);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.b - ((C0433qi) obj).b;
    }

    public final void d(C0349nc c0349nc, float f) {
        this.e = f;
        this.f = true;
        int i = this.j;
        this.c = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.i[i2].h(c0349nc, this, false);
        }
        this.j = 0;
    }

    public final void e(C0349nc c0349nc, X2 x2) {
        int i = this.j;
        for (int i2 = 0; i2 < i; i2++) {
            this.i[i2].i(c0349nc, x2, false);
        }
        this.j = 0;
    }

    public final String toString() {
        return "" + this.b;
    }
}
