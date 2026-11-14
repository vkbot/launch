package defpackage;

import java.util.concurrent.CancellationException;

/* renamed from: zb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0650zb extends CancellationException {
    public final transient Hb a;

    public C0650zb(String str, Throwable th, Hb hb) {
        super(str);
        this.a = hb;
        if (th != null) {
            initCause(th);
        }
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof C0650zb) {
                C0650zb c0650zb = (C0650zb) obj;
                if (!AbstractC0348nb.g(c0650zb.getMessage(), getMessage()) || !AbstractC0348nb.g(c0650zb.a, this.a) || !AbstractC0348nb.g(c0650zb.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        String message = getMessage();
        AbstractC0348nb.o(message);
        int hashCode = (this.a.hashCode() + (message.hashCode() * 31)) * 31;
        Throwable cause = getCause();
        return hashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return super.toString() + "; job=" + this.a;
    }
}
