package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public class Bb extends Hb {
    public final boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Bb(InterfaceC0625yb interfaceC0625yb) {
        super(true);
        boolean z = true;
        B(interfaceC0625yb);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = Hb.b;
        InterfaceC0289l4 interfaceC0289l4 = (InterfaceC0289l4) atomicReferenceFieldUpdater.get(this);
        C0315m4 c0315m4 = interfaceC0289l4 instanceof C0315m4 ? (C0315m4) interfaceC0289l4 : null;
        if (c0315m4 != null) {
            Hb n = c0315m4.n();
            while (!n.v()) {
                InterfaceC0289l4 interfaceC0289l42 = (InterfaceC0289l4) atomicReferenceFieldUpdater.get(n);
                C0315m4 c0315m42 = interfaceC0289l42 instanceof C0315m4 ? (C0315m4) interfaceC0289l42 : null;
                if (c0315m42 != null) {
                    n = c0315m42.n();
                }
            }
            this.c = z;
        }
        z = false;
        this.c = z;
    }

    @Override // defpackage.Hb
    public final boolean v() {
        return this.c;
    }

    @Override // defpackage.Hb
    public final boolean w() {
        return true;
    }
}
