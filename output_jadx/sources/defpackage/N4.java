package defpackage;

import java.util.Collection;

/* loaded from: classes.dex */
public abstract class N4 extends M4 {
    public static int r0(Iterable iterable) {
        AbstractC0348nb.r(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return 10;
    }
}
