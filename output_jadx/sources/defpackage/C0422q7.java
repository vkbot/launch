package defpackage;

import java.util.Iterator;

/* renamed from: q7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0422q7 extends C0163g7 {
    public int m;

    public C0422q7(Pn pn) {
        super(pn);
        if (pn instanceof Ka) {
            this.e = 2;
        } else {
            this.e = 3;
        }
    }

    @Override // defpackage.C0163g7
    public final void d(int i) {
        if (this.j) {
            return;
        }
        this.j = true;
        this.g = i;
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            InterfaceC0111e7 interfaceC0111e7 = (InterfaceC0111e7) it.next();
            interfaceC0111e7.a(interfaceC0111e7);
        }
    }
}
