package defpackage;

import java.lang.reflect.Method;

/* renamed from: x4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0593x4 {
    public final int a;
    public final Method b;

    public C0593x4(int i, Method method) {
        this.a = i;
        this.b = method;
        method.setAccessible(true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0593x4)) {
            return false;
        }
        C0593x4 c0593x4 = (C0593x4) obj;
        return this.a == c0593x4.a && this.b.getName().equals(c0593x4.b.getName());
    }

    public final int hashCode() {
        return this.b.getName().hashCode() + (this.a * 31);
    }
}
