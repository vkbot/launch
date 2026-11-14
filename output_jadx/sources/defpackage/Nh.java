package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class Nh extends Oh {
    public static List x(Lh lh) {
        Iterator it = lh.iterator();
        if (!it.hasNext()) {
            return C0547v8.a;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return AbstractC0348nb.N(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}
