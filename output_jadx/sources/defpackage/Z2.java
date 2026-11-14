package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class Z2 extends AbstractC0152fm {
    public static void U(Object[] objArr, Object[] objArr2, int i, int i2, int i3) {
        AbstractC0348nb.r(objArr, "<this>");
        AbstractC0348nb.r(objArr2, "destination");
        System.arraycopy(objArr, i2, objArr2, i, i3 - i2);
    }

    public static final void V(Object[] objArr, int i, int i2) {
        AbstractC0348nb.r(objArr, "<this>");
        Arrays.fill(objArr, i, i2, (Object) null);
    }

    public static List W(Object[] objArr) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static Object X(Object[] objArr, int i) {
        AbstractC0348nb.r(objArr, "<this>");
        if (i < 0 || i > objArr.length - 1) {
            return null;
        }
        return objArr[i];
    }

    public static Set Y(Object[] objArr) {
        int length = objArr.length;
        if (length == 0) {
            return C0597x8.a;
        }
        if (length == 1) {
            Set singleton = Collections.singleton(objArr[0]);
            AbstractC0348nb.q(singleton, "singleton(...)");
            return singleton;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(AbstractC0221id.p0(objArr.length));
        for (Object obj : objArr) {
            linkedHashSet.add(obj);
        }
        return linkedHashSet;
    }
}
