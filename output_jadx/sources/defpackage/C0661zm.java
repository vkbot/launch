package defpackage;

import android.graphics.Matrix;
import android.graphics.Paint;
import java.util.ArrayList;

/* renamed from: zm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0661zm extends Am {
    public final Matrix a;
    public final ArrayList b;
    public float c;
    public float d;
    public float e;
    public float f;
    public float g;
    public float h;
    public float i;
    public final Matrix j;
    public String k;

    public C0661zm() {
        this.a = new Matrix();
        this.b = new ArrayList();
        this.c = 0.0f;
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = 1.0f;
        this.g = 1.0f;
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = new Matrix();
        this.k = null;
    }

    @Override // defpackage.Am
    public final boolean a() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.b;
            if (i >= arrayList.size()) {
                return false;
            }
            if (((Am) arrayList.get(i)).a()) {
                return true;
            }
            i++;
        }
    }

    @Override // defpackage.Am
    public final boolean b(int[] iArr) {
        int i = 0;
        boolean z = false;
        while (true) {
            ArrayList arrayList = this.b;
            if (i >= arrayList.size()) {
                return z;
            }
            z |= ((Am) arrayList.get(i)).b(iArr);
            i++;
        }
    }

    public final void c() {
        Matrix matrix = this.j;
        matrix.reset();
        matrix.postTranslate(-this.d, -this.e);
        matrix.postScale(this.f, this.g);
        matrix.postRotate(this.c, 0.0f, 0.0f);
        matrix.postTranslate(this.h + this.d, this.i + this.e);
    }

    public String getGroupName() {
        return this.k;
    }

    public Matrix getLocalMatrix() {
        return this.j;
    }

    public float getPivotX() {
        return this.d;
    }

    public float getPivotY() {
        return this.e;
    }

    public float getRotation() {
        return this.c;
    }

    public float getScaleX() {
        return this.f;
    }

    public float getScaleY() {
        return this.g;
    }

    public float getTranslateX() {
        return this.h;
    }

    public float getTranslateY() {
        return this.i;
    }

    public void setPivotX(float f) {
        if (f != this.d) {
            this.d = f;
            c();
        }
    }

    public void setPivotY(float f) {
        if (f != this.e) {
            this.e = f;
            c();
        }
    }

    public void setRotation(float f) {
        if (f != this.c) {
            this.c = f;
            c();
        }
    }

    public void setScaleX(float f) {
        if (f != this.f) {
            this.f = f;
            c();
        }
    }

    public void setScaleY(float f) {
        if (f != this.g) {
            this.g = f;
            c();
        }
    }

    public void setTranslateX(float f) {
        if (f != this.h) {
            this.h = f;
            c();
        }
    }

    public void setTranslateY(float f) {
        if (f != this.i) {
            this.i = f;
            c();
        }
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [ym, Bm] */
    public C0661zm(C0661zm c0661zm, W2 w2) {
        Bm bm;
        this.a = new Matrix();
        this.b = new ArrayList();
        this.c = 0.0f;
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = 1.0f;
        this.g = 1.0f;
        this.h = 0.0f;
        this.i = 0.0f;
        Matrix matrix = new Matrix();
        this.j = matrix;
        this.k = null;
        this.c = c0661zm.c;
        this.d = c0661zm.d;
        this.e = c0661zm.e;
        this.f = c0661zm.f;
        this.g = c0661zm.g;
        this.h = c0661zm.h;
        this.i = c0661zm.i;
        String str = c0661zm.k;
        this.k = str;
        if (str != null) {
            w2.put(str, this);
        }
        matrix.set(c0661zm.j);
        ArrayList arrayList = c0661zm.b;
        for (int i = 0; i < arrayList.size(); i++) {
            Object obj = arrayList.get(i);
            if (obj instanceof C0661zm) {
                this.b.add(new C0661zm((C0661zm) obj, w2));
            } else {
                if (obj instanceof C0636ym) {
                    C0636ym c0636ym = (C0636ym) obj;
                    ?? bm2 = new Bm(c0636ym);
                    bm2.e = 0.0f;
                    bm2.g = 1.0f;
                    bm2.h = 1.0f;
                    bm2.i = 0.0f;
                    bm2.j = 1.0f;
                    bm2.k = 0.0f;
                    bm2.l = Paint.Cap.BUTT;
                    bm2.m = Paint.Join.MITER;
                    bm2.n = 4.0f;
                    bm2.d = c0636ym.d;
                    bm2.e = c0636ym.e;
                    bm2.g = c0636ym.g;
                    bm2.f = c0636ym.f;
                    bm2.c = c0636ym.c;
                    bm2.h = c0636ym.h;
                    bm2.i = c0636ym.i;
                    bm2.j = c0636ym.j;
                    bm2.k = c0636ym.k;
                    bm2.l = c0636ym.l;
                    bm2.m = c0636ym.m;
                    bm2.n = c0636ym.n;
                    bm = bm2;
                } else if (obj instanceof C0611xm) {
                    bm = new Bm((C0611xm) obj);
                } else {
                    throw new IllegalStateException("Unknown object in the tree!");
                }
                this.b.add(bm);
                Object obj2 = bm.b;
                if (obj2 != null) {
                    w2.put(obj2, bm);
                }
            }
        }
    }
}
