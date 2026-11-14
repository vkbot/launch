package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: w4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0568w4 {
    public final HashMap a = new HashMap();
    public final HashMap b;

    public C0568w4(HashMap hashMap) {
        this.b = hashMap;
        for (Map.Entry entry : hashMap.entrySet()) {
            Vb vb = (Vb) entry.getValue();
            List list = (List) this.a.get(vb);
            if (list == null) {
                list = new ArrayList();
                this.a.put(vb, list);
            }
            list.add((C0593x4) entry.getKey());
        }
    }

    public static void a(List list, InterfaceC0039bc interfaceC0039bc, Vb vb, InterfaceC0013ac interfaceC0013ac) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                C0593x4 c0593x4 = (C0593x4) list.get(size);
                c0593x4.getClass();
                try {
                    int i = c0593x4.a;
                    Method method = c0593x4.b;
                    if (i == 0) {
                        method.invoke(interfaceC0013ac, null);
                    } else if (i == 1) {
                        method.invoke(interfaceC0013ac, interfaceC0039bc);
                    } else if (i == 2) {
                        method.invoke(interfaceC0013ac, interfaceC0039bc, vb);
                    }
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                } catch (InvocationTargetException e2) {
                    throw new RuntimeException("Failed to call observer method", e2.getCause());
                }
            }
        }
    }
}
