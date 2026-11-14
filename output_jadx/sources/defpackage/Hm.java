package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class Hm {
    public final W2 a;
    public final W2 b;
    public final W2 c;

    public Hm(W2 w2, W2 w22, W2 w23) {
        this.a = w2;
        this.b = w22;
        this.c = w23;
    }

    public abstract Im a();

    public final Class b(Class cls) {
        String name = cls.getName();
        W2 w2 = this.c;
        Class cls2 = (Class) w2.getOrDefault(name, null);
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(cls.getPackage().getName() + "." + cls.getSimpleName() + "Parcelizer", false, cls.getClassLoader());
        w2.put(cls.getName(), cls3);
        return cls3;
    }

    public final Method c(String str) {
        W2 w2 = this.a;
        Method method = (Method) w2.getOrDefault(str, null);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, Hm.class.getClassLoader()).getDeclaredMethod("read", Hm.class);
        w2.put(str, declaredMethod);
        return declaredMethod;
    }

    public final Method d(Class cls) {
        String name = cls.getName();
        W2 w2 = this.b;
        Method method = (Method) w2.getOrDefault(name, null);
        if (method != null) {
            return method;
        }
        Class b = b(cls);
        System.currentTimeMillis();
        Method declaredMethod = b.getDeclaredMethod("write", cls, Hm.class);
        w2.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    public abstract boolean e(int i);

    public final Parcelable f(Parcelable parcelable, int i) {
        if (!e(i)) {
            return parcelable;
        }
        return ((Im) this).e.readParcelable(Im.class.getClassLoader());
    }

    public final Jm g() {
        String readString = ((Im) this).e.readString();
        if (readString == null) {
            return null;
        }
        try {
            return (Jm) c(readString).invoke(null, a());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    public abstract void h(int i);

    public final void i(Jm jm) {
        if (jm == null) {
            ((Im) this).e.writeString(null);
            return;
        }
        try {
            ((Im) this).e.writeString(b(jm.getClass()).getName());
            Im a = a();
            try {
                d(jm.getClass()).invoke(null, jm, a);
                int i = a.i;
                if (i >= 0) {
                    int i2 = a.d.get(i);
                    Parcel parcel = a.e;
                    int dataPosition = parcel.dataPosition();
                    parcel.setDataPosition(i2);
                    parcel.writeInt(dataPosition - i2);
                    parcel.setDataPosition(dataPosition);
                }
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
            } catch (InvocationTargetException e4) {
                if (!(e4.getCause() instanceof RuntimeException)) {
                    throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
                }
                throw ((RuntimeException) e4.getCause());
            }
        } catch (ClassNotFoundException e5) {
            throw new RuntimeException(jm.getClass().getSimpleName().concat(" does not have a Parcelizer"), e5);
        }
    }
}
