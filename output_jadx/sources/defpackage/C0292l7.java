package defpackage;

/* renamed from: l7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0292l7 extends RuntimeException {
    public final transient InterfaceC0110e6 a;

    public C0292l7(InterfaceC0110e6 interfaceC0110e6) {
        this.a = interfaceC0110e6;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        return this.a.toString();
    }
}
