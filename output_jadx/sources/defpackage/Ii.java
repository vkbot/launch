package defpackage;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.WindowManager;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public final class Ii {
    public final Context a;
    public final WindowManager b;
    public final Handler c;
    public LinearLayout d;
    public boolean e;
    public final J2 f;

    public Ii(Context context, WindowManager windowManager) {
        AbstractC0348nb.r(context, "context");
        this.a = context;
        this.b = windowManager;
        this.c = new Handler(Looper.getMainLooper());
        this.f = new J2(12, this);
    }

    public final void a() {
        LinearLayout linearLayout = this.d;
        if (linearLayout != null) {
            try {
                WindowManager windowManager = this.b;
                if (windowManager != null) {
                    windowManager.removeView(linearLayout);
                }
            } catch (Exception unused) {
            }
        }
        this.d = null;
    }
}
