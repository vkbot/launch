package defpackage;

import android.content.Context;
import android.os.SystemClock;

/* loaded from: classes.dex */
public final class H4 {
    public final Context a;
    public long b;
    public long c;
    public int d;
    public boolean e;
    public final C0515u1 f;

    public H4(Context context) {
        AbstractC0348nb.r(context, "ctx");
        this.a = context;
        this.f = new C0515u1(1, this);
    }

    public static final boolean a(H4 h4) {
        h4.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - h4.b < 2000) {
            return false;
        }
        if (elapsedRealtime - h4.c > 60000) {
            h4.c = elapsedRealtime;
            h4.d = 0;
        }
        int i = h4.d;
        if (i >= 10) {
            return false;
        }
        h4.d = i + 1;
        h4.b = elapsedRealtime;
        return true;
    }
}
