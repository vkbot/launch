package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: bo, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0051bo {
    public final Object a;

    public C0051bo() {
        this.a = new ArrayList();
    }

    public C0092dd a(String str) {
        Object obj;
        AbstractC0348nb.r(str, "pkg");
        Iterator it = ((ArrayList) this.a).iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (AbstractC0348nb.g(((C0092dd) obj).a, str)) {
                break;
            }
        }
        return (C0092dd) obj;
    }

    public C0051bo(C0128eo c0128eo) {
        this.a = c0128eo;
    }
}
