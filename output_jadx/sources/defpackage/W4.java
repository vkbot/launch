package defpackage;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class W4 implements InterfaceC0110e6, Serializable {
    public final InterfaceC0110e6 a;
    public final InterfaceC0059c6 b;

    public W4(InterfaceC0110e6 interfaceC0110e6, InterfaceC0059c6 interfaceC0059c6) {
        AbstractC0348nb.r(interfaceC0110e6, "left");
        AbstractC0348nb.r(interfaceC0059c6, "element");
        this.a = interfaceC0110e6;
        this.b = interfaceC0059c6;
    }

    @Override // defpackage.InterfaceC0110e6
    public final InterfaceC0059c6 b(InterfaceC0085d6 interfaceC0085d6) {
        AbstractC0348nb.r(interfaceC0085d6, "key");
        while (true) {
            InterfaceC0059c6 b = this.b.b(interfaceC0085d6);
            if (b != null) {
                return b;
            }
            InterfaceC0110e6 interfaceC0110e6 = this.a;
            if (!(interfaceC0110e6 instanceof W4)) {
                return interfaceC0110e6.b(interfaceC0085d6);
            }
            this = (W4) interfaceC0110e6;
        }
    }

    @Override // defpackage.InterfaceC0110e6
    public final InterfaceC0110e6 d(InterfaceC0085d6 interfaceC0085d6) {
        AbstractC0348nb.r(interfaceC0085d6, "key");
        InterfaceC0059c6 interfaceC0059c6 = this.b;
        InterfaceC0059c6 b = interfaceC0059c6.b(interfaceC0085d6);
        InterfaceC0110e6 interfaceC0110e6 = this.a;
        if (b != null) {
            return interfaceC0110e6;
        }
        InterfaceC0110e6 d = interfaceC0110e6.d(interfaceC0085d6);
        return d == interfaceC0110e6 ? this : d == C0497t8.a ? interfaceC0059c6 : new W4(d, interfaceC0059c6);
    }

    @Override // defpackage.InterfaceC0110e6
    public final Object e(Object obj, InterfaceC0192ha interfaceC0192ha) {
        return interfaceC0192ha.e(this.a.e(obj, interfaceC0192ha), this.b);
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (this != obj) {
            if (!(obj instanceof W4)) {
                return false;
            }
            W4 w4 = (W4) obj;
            w4.getClass();
            int i = 2;
            W4 w42 = w4;
            int i2 = 2;
            while (true) {
                InterfaceC0110e6 interfaceC0110e6 = w42.a;
                w42 = interfaceC0110e6 instanceof W4 ? (W4) interfaceC0110e6 : null;
                if (w42 == null) {
                    break;
                }
                i2++;
            }
            W4 w43 = this;
            while (true) {
                InterfaceC0110e6 interfaceC0110e62 = w43.a;
                w43 = interfaceC0110e62 instanceof W4 ? (W4) interfaceC0110e62 : null;
                if (w43 == null) {
                    break;
                }
                i++;
            }
            if (i2 != i) {
                return false;
            }
            while (true) {
                InterfaceC0059c6 interfaceC0059c6 = this.b;
                if (!AbstractC0348nb.g(w4.b(interfaceC0059c6.getKey()), interfaceC0059c6)) {
                    z = false;
                    break;
                }
                InterfaceC0110e6 interfaceC0110e63 = this.a;
                if (!(interfaceC0110e63 instanceof W4)) {
                    AbstractC0348nb.p(interfaceC0110e63, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                    InterfaceC0059c6 interfaceC0059c62 = (InterfaceC0059c6) interfaceC0110e63;
                    z = AbstractC0348nb.g(w4.b(interfaceC0059c62.getKey()), interfaceC0059c62);
                    break;
                }
                this = (W4) interfaceC0110e63;
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    @Override // defpackage.InterfaceC0110e6
    public final InterfaceC0110e6 f(InterfaceC0110e6 interfaceC0110e6) {
        AbstractC0348nb.r(interfaceC0110e6, "context");
        return interfaceC0110e6 == C0497t8.a ? this : (InterfaceC0110e6) interfaceC0110e6.e(this, V4.d);
    }

    public final int hashCode() {
        return this.b.hashCode() + this.a.hashCode();
    }

    public final String toString() {
        return AbstractC0407pi.k(new StringBuilder("["), (String) e("", V4.c), ']');
    }
}
