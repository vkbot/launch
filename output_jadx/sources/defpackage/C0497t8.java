package defpackage;

import java.io.Serializable;

/* renamed from: t8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0497t8 implements InterfaceC0110e6, Serializable {
    public static final C0497t8 a = new Object();

    @Override // defpackage.InterfaceC0110e6
    public final InterfaceC0059c6 b(InterfaceC0085d6 interfaceC0085d6) {
        AbstractC0348nb.r(interfaceC0085d6, "key");
        return null;
    }

    @Override // defpackage.InterfaceC0110e6
    public final InterfaceC0110e6 d(InterfaceC0085d6 interfaceC0085d6) {
        AbstractC0348nb.r(interfaceC0085d6, "key");
        return this;
    }

    @Override // defpackage.InterfaceC0110e6
    public final Object e(Object obj, InterfaceC0192ha interfaceC0192ha) {
        return obj;
    }

    @Override // defpackage.InterfaceC0110e6
    public final InterfaceC0110e6 f(InterfaceC0110e6 interfaceC0110e6) {
        AbstractC0348nb.r(interfaceC0110e6, "context");
        return interfaceC0110e6;
    }

    public final int hashCode() {
        return 0;
    }

    public final String toString() {
        return "EmptyCoroutineContext";
    }
}
