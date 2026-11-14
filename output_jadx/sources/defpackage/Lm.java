package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class Lm {
    public final Context a;
    public Object b;

    public Lm(Context context) {
        AbstractC0348nb.r(context, "context");
        this.a = context.getApplicationContext();
    }

    public final boolean a() {
        if (this.b != null) {
            return true;
        }
        try {
            Class<?> cls = Class.forName("android.car.Car");
            Object invoke = cls.getMethod("createCar", Context.class).invoke(null, this.a);
            if (invoke == null) {
                return false;
            }
            Object invoke2 = cls.getMethod("getCarManager", String.class).invoke(invoke, "property");
            this.b = invoke2;
            return invoke2 != null;
        } catch (Throwable unused) {
            this.b = null;
            return false;
        }
    }

    public final String b() {
        Object c = c(554721802, 16777216, null);
        String str = c instanceof String ? (String) c : null;
        String obj = str != null ? Si.R(str).toString() : null;
        if (obj == null || obj.length() == 0 || obj.equals("default")) {
            return null;
        }
        return obj;
    }

    public final Object c(int i, int i2, Class cls) {
        Object obj;
        Object invoke;
        if (!a() || (obj = this.b) == null) {
            return null;
        }
        try {
            if (cls != null) {
                Class<?> cls2 = obj.getClass();
                Class cls3 = Integer.TYPE;
                invoke = cls2.getMethod("getProperty", Class.class, cls3, cls3).invoke(obj, cls, Integer.valueOf(i), Integer.valueOf(i2));
            } else {
                Class<?> cls4 = obj.getClass();
                Class cls5 = Integer.TYPE;
                invoke = cls4.getMethod("getProperty", cls5, cls5).invoke(obj, Integer.valueOf(i), Integer.valueOf(i2));
            }
            if (invoke == null) {
                return null;
            }
            return invoke.getClass().getMethod("getValue", null).invoke(invoke, null);
        } catch (Throwable unused) {
            return null;
        }
    }
}
