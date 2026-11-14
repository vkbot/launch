package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.omoda.launcher.HomeActivity;

/* loaded from: classes.dex */
public final class Ja {
    public final Context a;
    public final Io b;
    public final Handler c;
    public final SharedPreferences d;
    public final C0149fj e;
    public boolean f;
    public int g;
    public final O h;

    public Ja(Context context, Io io) {
        AbstractC0348nb.r(context, "context");
        AbstractC0348nb.r(io, "windowLauncher");
        this.a = context;
        this.b = io;
        this.c = new Handler(Looper.getMainLooper());
        this.d = context.getSharedPreferences("unified_home", 0);
        this.e = new C0149fj(new S4(1, this));
        this.h = new O(10, this);
    }

    public final boolean a() {
        return AbstractC0554vf.j() && !this.f;
    }

    public final void b(boolean z) {
        Context context = this.a;
        this.d.edit().putLong("opening_at", System.currentTimeMillis()).apply();
        try {
            Intent addFlags = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").setClass(context, HomeActivity.class).addFlags(268435456);
            if (z) {
                addFlags.addFlags(65536);
            }
            context.startActivity(addFlags);
        } catch (Exception e) {
            Log.e("HomeKeeper", "Home screen launch failed", e);
        }
        Handler handler = this.c;
        O o = this.h;
        handler.removeCallbacks(o);
        handler.postDelayed(o, 500L);
    }
}
