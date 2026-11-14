package defpackage;

import com.omoda.launcher.data.AppInfo;
import com.omoda.launcher.data.PrefsAppOrderStore;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class Ia {
    public final /* synthetic */ int a;
    public final PrefsAppOrderStore b;

    public /* synthetic */ Ia(PrefsAppOrderStore prefsAppOrderStore, int i) {
        this.a = i;
        this.b = prefsAppOrderStore;
    }

    public final List a(List list) {
        switch (this.a) {
            case 0:
                AbstractC0348nb.r(list, PrefsAppOrderStore.KEY_ORDER);
                List<String> load = this.b.load();
                AbstractC0348nb.r(load, "<this>");
                Ta ta = new Ta(0, new S4(0, load));
                int p0 = AbstractC0221id.p0(N4.r0(ta));
                if (p0 < 16) {
                    p0 = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(p0);
                Iterator it = ta.iterator();
                while (true) {
                    Ua ua = (Ua) it;
                    if (!ua.a.hasNext()) {
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        for (Object obj : list) {
                            if (linkedHashMap.containsKey(((AppInfo) obj).getKey())) {
                                arrayList.add(obj);
                            } else {
                                arrayList2.add(obj);
                            }
                        }
                        ArrayList arrayList3 = new ArrayList();
                        ArrayList arrayList4 = new ArrayList();
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            Object next = it2.next();
                            if (((AppInfo) next).getTile() != null) {
                                arrayList3.add(next);
                            } else {
                                arrayList4.add(next);
                            }
                        }
                        return L4.z0(L4.z0(arrayList3, L4.A0(arrayList, new Ha(linkedHashMap, 0))), L4.A0(arrayList4, new G0(0)));
                    }
                    Sa sa = (Sa) ua.next();
                    linkedHashMap.put(sa.b, Integer.valueOf(sa.a));
                }
            default:
                AbstractC0348nb.r(list, PrefsAppOrderStore.KEY_ORDER);
                List<String> load2 = this.b.load();
                if (load2.isEmpty()) {
                    return L4.A0(list, new G0(0));
                }
                Ta ta2 = new Ta(0, new S4(0, load2));
                int p02 = AbstractC0221id.p0(N4.r0(ta2));
                if (p02 < 16) {
                    p02 = 16;
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(p02);
                Iterator it3 = ta2.iterator();
                while (true) {
                    Ua ua2 = (Ua) it3;
                    if (!ua2.a.hasNext()) {
                        ArrayList arrayList5 = new ArrayList();
                        ArrayList arrayList6 = new ArrayList();
                        for (Object obj2 : list) {
                            if (linkedHashMap2.containsKey(((AppInfo) obj2).getKey())) {
                                arrayList5.add(obj2);
                            } else {
                                arrayList6.add(obj2);
                            }
                        }
                        return L4.z0(L4.A0(arrayList5, new Ha(linkedHashMap2, 1)), L4.A0(arrayList6, new G0(0)));
                    }
                    Sa sa2 = (Sa) ua2.next();
                    linkedHashMap2.put(sa2.b, Integer.valueOf(sa2.a));
                }
        }
    }
}
