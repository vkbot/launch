package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;

/* renamed from: id, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0221id extends AbstractC0348nb {
    public static Object o0(LinkedHashMap linkedHashMap, String str) {
        Object obj = linkedHashMap.get(str);
        if (obj != null || linkedHashMap.containsKey(str)) {
            return obj;
        }
        throw new NoSuchElementException("Key " + ((Object) str) + " is missing in the map.");
    }

    public static int p0(int i) {
        if (i < 0) {
            return i;
        }
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map q0(C0016af c0016af) {
        AbstractC0348nb.r(c0016af, "pair");
        Map singletonMap = Collections.singletonMap(c0016af.a, c0016af.b);
        AbstractC0348nb.q(singletonMap, "singletonMap(...)");
        return singletonMap;
    }

    public static Map r0(C0016af... c0016afArr) {
        if (c0016afArr.length <= 0) {
            return C0572w8.a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(p0(c0016afArr.length));
        for (C0016af c0016af : c0016afArr) {
            linkedHashMap.put(c0016af.a, c0016af.b);
        }
        return linkedHashMap;
    }

    public static Map s0(ArrayList arrayList) {
        C0572w8 c0572w8 = C0572w8.a;
        int size = arrayList.size();
        if (size == 0) {
            return c0572w8;
        }
        if (size == 1) {
            return q0((C0016af) arrayList.get(0));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(p0(arrayList.size()));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0016af c0016af = (C0016af) it.next();
            linkedHashMap.put(c0016af.a, c0016af.b);
        }
        return linkedHashMap;
    }
}
