package defpackage;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class Ph extends Nb implements S9 {
    public static final Ph c = new Ph(0, 0);
    public static final Ph d = new Ph(0, 1);
    public static final Ph e = new Ph(0, 2);
    public static final Ph f = new Ph(0, 3);
    public static final Ph g = new Ph(0, 4);
    public static final Ph h = new Ph(0, 5);
    public static final Ph i = new Ph(0, 6);
    public static final Ph j = new Ph(0, 7);
    public static final Ph k = new Ph(0, 8);
    public static final Ph l = new Ph(0, 9);
    public static final Ph m = new Ph(0, 10);
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Ph(int i2, int i3) {
        super(i2);
        this.b = i3;
    }

    @Override // defpackage.S9
    public final Object d() {
        switch (this.b) {
            case 0:
                return C0486sm.a;
            case 1:
                try {
                    return Class.forName("android.app.ActivityTaskManager").getMethod("getService", null).invoke(null, null);
                } catch (Exception e2) {
                    AbstractC0407pi.m(e2, new StringBuilder("Cannot get IActivityTaskManager: "), "TaskSnapshots");
                    return null;
                }
            case 2:
                C0279kk c0279kk = C0357nk.b;
                if (c0279kk != null) {
                    return c0279kk.c();
                }
                AbstractC0348nb.j0("base");
                throw null;
            case 3:
                C0279kk c0279kk2 = C0357nk.b;
                if (c0279kk2 != null) {
                    return Long.valueOf(c0279kk2.a());
                }
                AbstractC0348nb.j0("base");
                throw null;
            case 4:
                C0279kk c0279kk3 = C0357nk.b;
                if (c0279kk3 != null) {
                    return Integer.valueOf(c0279kk3.d);
                }
                AbstractC0348nb.j0("base");
                throw null;
            case 5:
                Context context = C0357nk.a;
                C0357nk.a("guard");
                return C0486sm.a;
            case 6:
                C0357nk.e.execute(new RunnableC0492t3(6));
                return C0486sm.a;
            case 7:
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd.MM.yyyy", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                return simpleDateFormat;
            case 8:
                SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("HH:mm:ss", Locale.US);
                simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("UTC"));
                return simpleDateFormat2;
            case 9:
                HandlerThread handlerThread = new HandlerThread("voice-mic");
                handlerThread.start();
                return new Handler(handlerThread.getLooper());
            default:
                try {
                    return Class.forName("android.app.ActivityTaskManager").getMethod("getService", null).invoke(null, null);
                } catch (Exception e3) {
                    Log.e("WindowLauncher", "Cannot get IActivityTaskManager service", e3);
                    return null;
                }
        }
    }
}
