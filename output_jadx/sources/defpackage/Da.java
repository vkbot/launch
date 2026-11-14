package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;

/* loaded from: classes.dex */
public abstract class Da {
    private static volatile Choreographer choreographer;

    static {
        Object e;
        try {
            e = new Ca(a(Looper.getMainLooper()));
        } catch (Throwable th) {
            e = AbstractC0171gf.e(th);
        }
        if (e instanceof C0250jh) {
            e = null;
        }
    }

    public static final Handler a(Looper looper) {
        Object invoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        AbstractC0348nb.p(invoke, "null cannot be cast to non-null type android.os.Handler");
        return (Handler) invoke;
    }
}
