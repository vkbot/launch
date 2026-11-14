package defpackage;

import android.view.View;

/* renamed from: hc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0194hc {
    public Y7 a;
    public int b;
    public int c;
    public boolean d;
    public boolean e;

    public C0194hc() {
        d();
    }

    public final void a() {
        this.c = this.d ? this.a.g() : this.a.k();
    }

    public final void b(View view, int i) {
        if (this.d) {
            this.c = this.a.m() + this.a.b(view);
        } else {
            this.c = this.a.e(view);
        }
        this.b = i;
    }

    public final void c(View view, int i) {
        int m = this.a.m();
        if (m >= 0) {
            b(view, i);
            return;
        }
        this.b = i;
        if (!this.d) {
            int e = this.a.e(view);
            int k = e - this.a.k();
            this.c = e;
            if (k > 0) {
                int g = (this.a.g() - Math.min(0, (this.a.g() - m) - this.a.b(view))) - (this.a.c(view) + e);
                if (g < 0) {
                    this.c -= Math.min(k, -g);
                    return;
                }
                return;
            }
            return;
        }
        int g2 = (this.a.g() - m) - this.a.b(view);
        this.c = this.a.g() - g2;
        if (g2 > 0) {
            int c = this.c - this.a.c(view);
            int k2 = this.a.k();
            int min = c - (Math.min(this.a.e(view) - k2, 0) + k2);
            if (min < 0) {
                this.c = Math.min(g2, -min) + this.c;
            }
        }
    }

    public final void d() {
        this.b = -1;
        this.c = Integer.MIN_VALUE;
        this.d = false;
        this.e = false;
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.b + ", mCoordinate=" + this.c + ", mLayoutFromEnd=" + this.d + ", mValid=" + this.e + '}';
    }
}
