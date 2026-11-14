package defpackage;

import android.graphics.Rect;
import android.util.Log;

/* loaded from: classes.dex */
public final class Ho implements Runnable {
    public int a = 10;
    public final /* synthetic */ Io b;
    public final /* synthetic */ String c;
    public final /* synthetic */ Rect d;

    public Ho(Io io, String str, Rect rect) {
        this.b = io;
        this.c = str;
        this.d = rect;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Io io = this.b;
        String str = this.c;
        G1 e = io.e(str);
        if (e != null && e.a > 0) {
            io.t(e, this.d);
            Of of = Io.q;
            return;
        }
        int i = this.a;
        this.a = i - 1;
        if (i > 0) {
            io.c.postDelayed(this, 200L);
            return;
        }
        Log.w("WindowLauncher", "FULLSCREEN: task not found for " + str);
    }
}
