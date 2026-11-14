package defpackage;

/* loaded from: classes.dex */
public final class Z4 implements S5 {
    public static final Z4 a = new Object();

    @Override // defpackage.S5
    public final void c(Object obj) {
        throw new IllegalStateException("This continuation is already complete");
    }

    @Override // defpackage.S5
    public final InterfaceC0110e6 i() {
        throw new IllegalStateException("This continuation is already complete");
    }

    public final String toString() {
        return "This continuation is already complete";
    }
}
