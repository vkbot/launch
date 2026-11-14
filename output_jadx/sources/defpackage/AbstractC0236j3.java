package defpackage;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* renamed from: j3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0236j3 implements S5, InterfaceC0317m6, Serializable {
    public final S5 a;

    public AbstractC0236j3(S5 s5) {
        this.a = s5;
    }

    public S5 a(S5 s5, Object obj) {
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    public abstract Object b(Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.S5
    public final void c(Object obj) {
        while (true) {
            AbstractC0236j3 abstractC0236j3 = this;
            S5 s5 = abstractC0236j3.a;
            AbstractC0348nb.o(s5);
            try {
                obj = abstractC0236j3.b(obj);
                if (obj == EnumC0291l6.a) {
                    return;
                }
            } catch (Throwable th) {
                obj = AbstractC0171gf.e(th);
            }
            abstractC0236j3.j();
            if (!(s5 instanceof AbstractC0236j3)) {
                s5.c(obj);
                return;
            }
            this = s5;
        }
    }

    @Override // defpackage.InterfaceC0317m6
    public final InterfaceC0317m6 g() {
        S5 s5 = this.a;
        if (s5 instanceof InterfaceC0317m6) {
            return (InterfaceC0317m6) s5;
        }
        return null;
    }

    public void j() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.StackTraceElement] */
    public String toString() {
        int i;
        String str;
        StringBuilder sb = new StringBuilder("Continuation at ");
        B6 b6 = (B6) getClass().getAnnotation(B6.class);
        String str2 = null;
        if (b6 != null) {
            int v = b6.v();
            if (v > 1) {
                throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + v + ". Please update the Kotlin standard library.").toString());
            }
            try {
                Field declaredField = getClass().getDeclaredField("label");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(this);
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                i = (num != null ? num.intValue() : 0) - 1;
            } catch (Exception unused) {
                i = -1;
            }
            int i2 = i >= 0 ? b6.l()[i] : -1;
            C0491t2 c0491t2 = C6.r;
            C0491t2 c0491t22 = C6.q;
            if (c0491t2 == null) {
                try {
                    C0491t2 c0491t23 = new C0491t2(Class.class.getDeclaredMethod("getModule", null), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
                    C6.r = c0491t23;
                    c0491t2 = c0491t23;
                } catch (Exception unused2) {
                    C6.r = c0491t22;
                    c0491t2 = c0491t22;
                }
            }
            if (c0491t2 != c0491t22) {
                Method method = (Method) c0491t2.a;
                Object invoke = method != null ? method.invoke(getClass(), null) : null;
                if (invoke != null) {
                    Method method2 = (Method) c0491t2.b;
                    Object invoke2 = method2 != null ? method2.invoke(invoke, null) : null;
                    if (invoke2 != null) {
                        Method method3 = (Method) c0491t2.c;
                        String invoke3 = method3 != null ? method3.invoke(invoke2, null) : null;
                        if (invoke3 instanceof String) {
                            str2 = invoke3;
                        }
                    }
                }
            }
            if (str2 == null) {
                str = b6.c();
            } else {
                str = str2 + '/' + b6.c();
            }
            str2 = new StackTraceElement(str, b6.m(), b6.f(), i2);
        }
        if (str2 == null) {
            str2 = getClass().getName();
        }
        sb.append((Object) str2);
        return sb.toString();
    }
}
