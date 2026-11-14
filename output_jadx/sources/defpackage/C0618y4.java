package defpackage;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* renamed from: y4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0618y4 {
    public static final C0618y4 c = new C0618y4();
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();

    public static void b(HashMap hashMap, C0593x4 c0593x4, Vb vb, Class cls) {
        Vb vb2 = (Vb) hashMap.get(c0593x4);
        if (vb2 == null || vb == vb2) {
            if (vb2 == null) {
                hashMap.put(c0593x4, vb);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + c0593x4.b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + vb2 + ", new value " + vb);
    }

    public final C0568w4 a(Class cls, Method[] methodArr) {
        int i;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = this.a;
        if (superclass != null) {
            C0568w4 c0568w4 = (C0568w4) hashMap2.get(superclass);
            if (c0568w4 == null) {
                c0568w4 = a(superclass, null);
            }
            hashMap.putAll(c0568w4.b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            C0568w4 c0568w42 = (C0568w4) hashMap2.get(cls2);
            if (c0568w42 == null) {
                c0568w42 = a(cls2, null);
            }
            for (Map.Entry entry : c0568w42.b.entrySet()) {
                b(hashMap, (C0593x4) entry.getKey(), (Vb) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            Re re = (Re) method.getAnnotation(Re.class);
            if (re != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!InterfaceC0039bc.class.isAssignableFrom(parameterTypes[0])) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                Vb value = re.value();
                if (parameterTypes.length > 1) {
                    if (!Vb.class.isAssignableFrom(parameterTypes[1])) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (value != Vb.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                b(hashMap, new C0593x4(i, method), value, cls);
                z = true;
            }
        }
        C0568w4 c0568w43 = new C0568w4(hashMap);
        hashMap2.put(cls, c0568w43);
        this.b.put(cls, Boolean.valueOf(z));
        return c0568w43;
    }
}
