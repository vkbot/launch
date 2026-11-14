package defpackage;

/* renamed from: om, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0385om implements InterfaceC0059c6, InterfaceC0085d6 {
    public static final C0385om a = new Object();

    @Override // defpackage.InterfaceC0110e6
    public final InterfaceC0059c6 b(InterfaceC0085d6 interfaceC0085d6) {
        return AbstractC0152fm.l(this, interfaceC0085d6);
    }

    @Override // defpackage.InterfaceC0110e6
    public final InterfaceC0110e6 d(InterfaceC0085d6 interfaceC0085d6) {
        return AbstractC0152fm.v(this, interfaceC0085d6);
    }

    @Override // defpackage.InterfaceC0110e6
    public final Object e(Object obj, InterfaceC0192ha interfaceC0192ha) {
        return interfaceC0192ha.e(obj, this);
    }

    @Override // defpackage.InterfaceC0110e6
    public final InterfaceC0110e6 f(InterfaceC0110e6 interfaceC0110e6) {
        AbstractC0348nb.r(interfaceC0110e6, "context");
        return interfaceC0110e6 == C0497t8.a ? this : (InterfaceC0110e6) interfaceC0110e6.e(this, V4.d);
    }

    @Override // defpackage.InterfaceC0059c6
    public final InterfaceC0085d6 getKey() {
        return this;
    }
}
