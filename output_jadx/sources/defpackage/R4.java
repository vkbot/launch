package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public abstract class R4 extends Q4 {
    public static void s0(ArrayList arrayList, Collection collection) {
        AbstractC0348nb.r(collection, "elements");
        arrayList.addAll(collection);
    }

    public static void t0(ArrayList arrayList, InterfaceC0089da interfaceC0089da) {
        int o0;
        int i;
        AbstractC0348nb.r(arrayList, "<this>");
        int i2 = new AbstractC0270kb(0, M4.o0(arrayList), 1).b;
        boolean z = i2 >= 0;
        int i3 = z ? 0 : i2;
        int i4 = 0;
        while (z) {
            if (i3 != i2) {
                i = i3 + 1;
            } else {
                if (!z) {
                    throw new NoSuchElementException();
                }
                z = false;
                i = i3;
            }
            Object obj = arrayList.get(i3);
            if (!((Boolean) interfaceC0089da.h(obj)).booleanValue()) {
                if (i4 != i3) {
                    arrayList.set(i4, obj);
                }
                i4++;
            }
            i3 = i;
        }
        if (i4 >= arrayList.size() || i4 > (o0 = M4.o0(arrayList))) {
            return;
        }
        while (true) {
            arrayList.remove(o0);
            if (o0 == i4) {
                return;
            } else {
                o0--;
            }
        }
    }
}
