package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;

/* renamed from: ei, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0122ei {
    public float a;
    public float b;
    public float c;
    public float d;
    public float e;
    public final ArrayList f = new ArrayList();
    public final ArrayList g = new ArrayList();

    public C0122ei() {
        d(0.0f, 270.0f, 0.0f);
    }

    public final void a(float f) {
        float f2 = this.d;
        if (f2 == f) {
            return;
        }
        float f3 = ((f - f2) + 360.0f) % 360.0f;
        if (f3 > 180.0f) {
            return;
        }
        float f4 = this.b;
        float f5 = this.c;
        C0019ai c0019ai = new C0019ai(f4, f5, f4, f5);
        c0019ai.f = this.d;
        c0019ai.g = f3;
        this.g.add(new Yh(c0019ai));
        this.d = f;
    }

    public final void b(Matrix matrix, Path path) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC0071ci) arrayList.get(i)).a(matrix, path);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ci, bi, java.lang.Object] */
    public final void c(float f, float f2) {
        ?? abstractC0071ci = new AbstractC0071ci();
        abstractC0071ci.b = f;
        abstractC0071ci.c = f2;
        this.f.add(abstractC0071ci);
        Zh zh = new Zh(abstractC0071ci, this.b, this.c);
        float a = zh.a() + 270.0f;
        float a2 = zh.a() + 270.0f;
        a(a);
        this.g.add(zh);
        this.d = a2;
        this.b = f;
        this.c = f2;
    }

    public final void d(float f, float f2, float f3) {
        this.a = f;
        this.b = 0.0f;
        this.c = f;
        this.d = f2;
        this.e = (f2 + f3) % 360.0f;
        this.f.clear();
        this.g.clear();
    }
}
