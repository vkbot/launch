package defpackage;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public abstract class M4 extends AbstractC0348nb {
    public static int o0(List list) {
        AbstractC0348nb.r(list, "<this>");
        return list.size() - 1;
    }

    public static List p0(Object... objArr) {
        if (objArr.length <= 0) {
            return C0547v8.a;
        }
        List asList = Arrays.asList(objArr);
        AbstractC0348nb.q(asList, "asList(...)");
        return asList;
    }

    public static void q0() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
