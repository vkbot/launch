package defpackage;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;

/* renamed from: e8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0112e8 implements Runnable {
    public final /* synthetic */ int a;

    public /* synthetic */ RunnableC0112e8(int i) {
        this.a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                try {
                    Tl.a("EmojiCompat.EmojiCompatInitializer.run");
                    if (C0035b8.j != null) {
                        C0035b8.a().c();
                    }
                    return;
                } finally {
                    Tl.b();
                }
            case 1:
                if (C0357nk.f) {
                    C0357nk.e.execute(new RunnableC0492t3(7));
                }
                C0357nk.d.postDelayed(this, 900000L);
                return;
            default:
                try {
                    boolean a = Nn.a();
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    if (a) {
                        Nn.d = elapsedRealtime;
                    }
                    if (a && Nn.b) {
                        Log.i("VoiceMic", "the navigator records: the microphone is its again");
                        Nn.b = false;
                    } else if (!a && !Nn.b && elapsedRealtime - Nn.d >= 5000 && elapsedRealtime >= Nn.c) {
                        Nn.b();
                    }
                } catch (Throwable th) {
                    Log.w("VoiceMic", "check: " + th);
                }
                Uri uri = Nn.a;
                ((Handler) Nn.h.a()).postDelayed(this, 3000L);
                return;
        }
    }
}
