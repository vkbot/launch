package defpackage;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class E9 {
    public static final C0277ki b = new C0277ki();
    public final /* synthetic */ J9 a;

    public E9(J9 j9) {
        this.a = j9;
    }

    public static Class b(ClassLoader classLoader, String str) {
        C0277ki c0277ki = b;
        C0277ki c0277ki2 = (C0277ki) c0277ki.getOrDefault(classLoader, null);
        if (c0277ki2 == null) {
            c0277ki2 = new C0277ki();
            c0277ki.put(classLoader, c0277ki2);
        }
        Class cls = (Class) c0277ki2.getOrDefault(str, null);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        c0277ki2.put(str, cls2);
        return cls2;
    }

    public static Class c(ClassLoader classLoader, String str) {
        try {
            return b(classLoader, str);
        } catch (ClassCastException e) {
            throw new RuntimeException("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("Unable to instantiate fragment " + str + ": make sure class name exists", e2);
        }
    }

    public final AbstractComponentCallbacksC0598x9 a(String str) {
        try {
            return (AbstractComponentCallbacksC0598x9) c(this.a.n.s.getClassLoader(), str).getConstructor(null).newInstance(null);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }
}
