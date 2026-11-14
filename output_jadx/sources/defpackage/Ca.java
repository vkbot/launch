package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class Ca extends AbstractC0162g6 implements InterfaceC0034b7 {
    private volatile Ca _immediate;
    public final Handler c;
    public final String d;
    public final boolean e;
    public final Ca f;

    public Ca(Handler handler, String str, boolean z) {
        this.c = handler;
        this.d = str;
        this.e = z;
        this._immediate = z ? this : null;
        Ca ca = this._immediate;
        if (ca == null) {
            ca = new Ca(handler, str, true);
            this._immediate = ca;
        }
        this.f = ca;
    }

    @Override // defpackage.InterfaceC0034b7
    public final void c(long j, N3 n3) {
        RunnableC0233j0 runnableC0233j0 = new RunnableC0233j0(n3, this, 2, false);
        if (j > 4611686018427387903L) {
            j = 4611686018427387903L;
        }
        if (this.c.postDelayed(runnableC0233j0, j)) {
            n3.n(new N2(this, 2, runnableC0233j0));
        } else {
            i(n3.e, runnableC0233j0);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof Ca) && ((Ca) obj).c == this.c;
    }

    @Override // defpackage.AbstractC0162g6
    public final void g(InterfaceC0110e6 interfaceC0110e6, Runnable runnable) {
        if (this.c.post(runnable)) {
            return;
        }
        i(interfaceC0110e6, runnable);
    }

    @Override // defpackage.AbstractC0162g6
    public final boolean h() {
        return (this.e && AbstractC0348nb.g(Looper.myLooper(), this.c.getLooper())) ? false : true;
    }

    public final int hashCode() {
        return System.identityHashCode(this.c);
    }

    public final void i(InterfaceC0110e6 interfaceC0110e6, Runnable runnable) {
        CancellationException cancellationException = new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed");
        InterfaceC0625yb interfaceC0625yb = (InterfaceC0625yb) interfaceC0110e6.b(T7.f);
        if (interfaceC0625yb != null) {
            ((Hb) interfaceC0625yb).m(cancellationException);
        }
        AbstractC0546v7.b.g(interfaceC0110e6, runnable);
    }

    @Override // defpackage.AbstractC0162g6
    public final String toString() {
        Ca ca;
        String str;
        T6 t6 = AbstractC0546v7.a;
        Ca ca2 = AbstractC0066cd.a;
        if (this == ca2) {
            str = "Dispatchers.Main";
        } else {
            try {
                ca = ca2.f;
            } catch (UnsupportedOperationException unused) {
                ca = null;
            }
            str = this == ca ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String str2 = this.d;
        if (str2 == null) {
            str2 = this.c.toString();
        }
        return this.e ? AbstractC0407pi.i(str2, ".immediate") : str2;
    }

    public Ca(Handler handler) {
        this(handler, null, false);
    }
}
