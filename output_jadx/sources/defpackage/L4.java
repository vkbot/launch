package defpackage;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class L4 extends R4 {
    public static List A0(List list, Comparator comparator) {
        AbstractC0348nb.r(list, "<this>");
        if (list.size() <= 1) {
            return C0(list);
        }
        Object[] array = list.toArray(new Object[0]);
        AbstractC0348nb.r(array, "<this>");
        if (array.length > 1) {
            Arrays.sort(array, comparator);
        }
        List asList = Arrays.asList(array);
        AbstractC0348nb.q(asList, "asList(...)");
        return asList;
    }

    public static final void B0(Iterable iterable, AbstractCollection abstractCollection) {
        AbstractC0348nb.r(iterable, "<this>");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    public static List C0(Iterable iterable) {
        ArrayList arrayList;
        AbstractC0348nb.r(iterable, "<this>");
        boolean z = iterable instanceof Collection;
        C0547v8 c0547v8 = C0547v8.a;
        if (z) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                return c0547v8;
            }
            if (size != 1) {
                return D0(collection);
            }
            return AbstractC0348nb.N(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
        }
        if (z) {
            arrayList = D0((Collection) iterable);
        } else {
            ArrayList arrayList2 = new ArrayList();
            B0(iterable, arrayList2);
            arrayList = arrayList2;
        }
        int size2 = arrayList.size();
        return size2 != 0 ? size2 != 1 ? arrayList : AbstractC0348nb.N(arrayList.get(0)) : c0547v8;
    }

    public static ArrayList D0(Collection collection) {
        AbstractC0348nb.r(collection, "<this>");
        return new ArrayList(collection);
    }

    public static final Set E0(Iterable iterable) {
        AbstractC0348nb.r(iterable, "<this>");
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        B0(iterable, linkedHashSet);
        return linkedHashSet;
    }

    public static Set F0(Collection collection) {
        C0597x8 c0597x8 = C0597x8.a;
        int size = collection.size();
        if (size == 0) {
            return c0597x8;
        }
        if (size != 1) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(AbstractC0221id.p0(collection.size()));
            B0(collection, linkedHashSet);
            return linkedHashSet;
        }
        Set singleton = Collections.singleton(collection instanceof List ? ((List) collection).get(0) : collection.iterator().next());
        AbstractC0348nb.q(singleton, "singleton(...)");
        return singleton;
    }

    public static boolean u0(Iterable iterable, Object obj) {
        int i;
        AbstractC0348nb.r(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(obj);
        }
        if (!(iterable instanceof List)) {
            Iterator it = iterable.iterator();
            int i2 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                Object next = it.next();
                if (i2 < 0) {
                    M4.q0();
                    throw null;
                }
                if (AbstractC0348nb.g(obj, next)) {
                    i = i2;
                    break;
                }
                i2++;
            }
        } else {
            i = ((List) iterable).indexOf(obj);
        }
        return i >= 0;
    }

    public static List v0(Iterable iterable) {
        AbstractC0348nb.r(iterable, "<this>");
        return C0(E0(iterable));
    }

    public static Object w0(List list) {
        AbstractC0348nb.r(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static Object x0(List list, int i) {
        AbstractC0348nb.r(list, "<this>");
        if (i < 0 || i > M4.o0(list)) {
            return null;
        }
        return list.get(i);
    }

    public static String y0(Collection collection, String str, String str2, String str3, InterfaceC0089da interfaceC0089da, int i) {
        if ((i & 1) != 0) {
            str = ", ";
        }
        if ((i & 2) != 0) {
            str2 = "";
        }
        if ((i & 4) != 0) {
            str3 = "";
        }
        if ((i & 32) != 0) {
            interfaceC0089da = null;
        }
        AbstractC0348nb.r(collection, "<this>");
        AbstractC0348nb.r(str, "separator");
        AbstractC0348nb.r(str2, "prefix");
        AbstractC0348nb.r(str3, "postfix");
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) str2);
        Iterator it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i2++;
            if (i2 > 1) {
                sb.append((CharSequence) str);
            }
            if (interfaceC0089da != null) {
                sb.append((CharSequence) interfaceC0089da.h(next));
            } else {
                if (next != null ? next instanceof CharSequence : true) {
                    sb.append((CharSequence) next);
                } else if (next instanceof Character) {
                    sb.append(((Character) next).charValue());
                } else {
                    sb.append((CharSequence) String.valueOf(next));
                }
            }
        }
        sb.append((CharSequence) str3);
        String sb2 = sb.toString();
        AbstractC0348nb.q(sb2, "toString(...)");
        return sb2;
    }

    public static ArrayList z0(List list, Collection collection) {
        AbstractC0348nb.r(collection, "elements");
        ArrayList arrayList = new ArrayList(collection.size() + list.size());
        arrayList.addAll(list);
        arrayList.addAll(collection);
        return arrayList;
    }
}
