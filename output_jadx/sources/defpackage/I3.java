package defpackage;

import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class I3 implements Ib, Serializable {
    public transient Ib a;
    public final Object b;
    public final Class c;
    public final String d;
    public final String e;
    public final boolean f;

    public I3(Object obj, Class cls, String str, String str2, boolean z) {
        this.b = obj;
        this.c = cls;
        this.d = str;
        this.e = str2;
        this.f = z;
    }

    public final InterfaceC0518u4 a() {
        Class cls = this.c;
        if (this.f) {
            Lg.a.getClass();
            return new Xe(cls);
        }
        Lg.a.getClass();
        return new C0543v4(cls);
    }
}
