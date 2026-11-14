package defpackage;

import java.lang.reflect.Method;

/* renamed from: tf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0504tf {
    public static final Method a;

    static {
        Method method;
        Method[] methods = Throwable.class.getMethods();
        AbstractC0348nb.o(methods);
        int length = methods.length;
        int i = 0;
        while (true) {
            method = null;
            if (i >= length) {
                break;
            }
            Method method2 = methods[i];
            if (AbstractC0348nb.g(method2.getName(), "addSuppressed")) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                AbstractC0348nb.q(parameterTypes, "getParameterTypes(...)");
                if (AbstractC0348nb.g(parameterTypes.length == 1 ? parameterTypes[0] : null, Throwable.class)) {
                    method = method2;
                    break;
                }
            }
            i++;
        }
        a = method;
        int length2 = methods.length;
        for (int i2 = 0; i2 < length2 && !AbstractC0348nb.g(methods[i2].getName(), "getSuppressed"); i2++) {
        }
    }
}
