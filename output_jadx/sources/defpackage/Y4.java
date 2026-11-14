package defpackage;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class Y4 {
    public final Object a;
    public final C0646z7 b;
    public final InterfaceC0089da c;
    public final Object d;
    public final Throwable e;

    public Y4(Object obj, C0646z7 c0646z7, InterfaceC0089da interfaceC0089da, Object obj2, Throwable th) {
        this.a = obj;
        this.b = c0646z7;
        this.c = interfaceC0089da;
        this.d = obj2;
        this.e = th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Throwable] */
    public static Y4 a(Y4 y4, C0646z7 c0646z7, CancellationException cancellationException, int i) {
        Object obj = y4.a;
        if ((i & 2) != 0) {
            c0646z7 = y4.b;
        }
        C0646z7 c0646z72 = c0646z7;
        InterfaceC0089da interfaceC0089da = y4.c;
        Object obj2 = y4.d;
        CancellationException cancellationException2 = cancellationException;
        if ((i & 16) != 0) {
            cancellationException2 = y4.e;
        }
        y4.getClass();
        return new Y4(obj, c0646z72, interfaceC0089da, obj2, cancellationException2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Y4)) {
            return false;
        }
        Y4 y4 = (Y4) obj;
        return AbstractC0348nb.g(this.a, y4.a) && AbstractC0348nb.g(this.b, y4.b) && AbstractC0348nb.g(this.c, y4.c) && AbstractC0348nb.g(this.d, y4.d) && AbstractC0348nb.g(this.e, y4.e);
    }

    public final int hashCode() {
        Object obj = this.a;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        C0646z7 c0646z7 = this.b;
        int hashCode2 = (hashCode + (c0646z7 == null ? 0 : c0646z7.hashCode())) * 31;
        InterfaceC0089da interfaceC0089da = this.c;
        int hashCode3 = (hashCode2 + (interfaceC0089da == null ? 0 : interfaceC0089da.hashCode())) * 31;
        Object obj2 = this.d;
        int hashCode4 = (hashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.e;
        return hashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.a + ", cancelHandler=" + this.b + ", onCancellation=" + this.c + ", idempotentResume=" + this.d + ", cancelCause=" + this.e + ')';
    }

    public /* synthetic */ Y4(Object obj, C0646z7 c0646z7, InterfaceC0089da interfaceC0089da, CancellationException cancellationException, int i) {
        this(obj, (i & 2) != 0 ? null : c0646z7, (i & 4) != 0 ? null : interfaceC0089da, (Object) null, (i & 16) != 0 ? null : cancellationException);
    }
}
