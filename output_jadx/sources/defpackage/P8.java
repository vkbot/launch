package defpackage;

import android.content.ComponentName;

/* loaded from: classes.dex */
public final class P8 {
    public final String a;
    public final ComponentName b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final EnumC0197hf f;

    public /* synthetic */ P8(String str, ComponentName componentName, boolean z, boolean z2, EnumC0197hf enumC0197hf, int i) {
        this(str, componentName, z, z2, false, (i & 32) != 0 ? null : enumC0197hf);
    }

    public P8(String str, ComponentName componentName, boolean z, boolean z2, boolean z3, EnumC0197hf enumC0197hf) {
        AbstractC0348nb.r(str, "key");
        this.a = str;
        this.b = componentName;
        this.c = z;
        this.d = z2;
        this.e = z3;
        this.f = enumC0197hf;
    }
}
