package defpackage;

/* renamed from: g6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0162g6 extends AbstractC0155g implements U5 {
    public static final C0136f6 b = new C0136f6(T7.b, C0643z4.f);

    public AbstractC0162g6() {
        super(T7.b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r4v2, types: [Nb, da] */
    @Override // defpackage.AbstractC0155g, defpackage.InterfaceC0110e6
    public final InterfaceC0059c6 b(InterfaceC0085d6 interfaceC0085d6) {
        ?? r3;
        AbstractC0348nb.r(interfaceC0085d6, "key");
        if (interfaceC0085d6 instanceof C0136f6) {
            C0136f6 c0136f6 = (C0136f6) interfaceC0085d6;
            InterfaceC0085d6 interfaceC0085d62 = this.a;
            if (interfaceC0085d62 != c0136f6 && c0136f6.b != interfaceC0085d62) {
                return null;
            }
            InterfaceC0059c6 interfaceC0059c6 = (InterfaceC0059c6) c0136f6.a.h(this);
            r3 = interfaceC0059c6;
            if (interfaceC0059c6 == null) {
                return null;
            }
        } else {
            this = this;
            if (T7.b != interfaceC0085d6) {
                r3 = 0;
            }
        }
        return r3;
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [Nb, da] */
    @Override // defpackage.AbstractC0155g, defpackage.InterfaceC0110e6
    public final InterfaceC0110e6 d(InterfaceC0085d6 interfaceC0085d6) {
        AbstractC0348nb.r(interfaceC0085d6, "key");
        boolean z = interfaceC0085d6 instanceof C0136f6;
        C0497t8 c0497t8 = C0497t8.a;
        if (z) {
            C0136f6 c0136f6 = (C0136f6) interfaceC0085d6;
            InterfaceC0085d6 interfaceC0085d62 = this.a;
            if ((interfaceC0085d62 != c0136f6 && c0136f6.b != interfaceC0085d62) || ((InterfaceC0059c6) c0136f6.a.h(this)) == null) {
                return this;
            }
        } else if (T7.b != interfaceC0085d6) {
            return this;
        }
        return c0497t8;
    }

    public abstract void g(InterfaceC0110e6 interfaceC0110e6, Runnable runnable);

    public boolean h() {
        return !(this instanceof AbstractC0333mm);
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + C6.p(this);
    }
}
