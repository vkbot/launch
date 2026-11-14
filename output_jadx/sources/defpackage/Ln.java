package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import java.io.File;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class Ln extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        AbstractC0348nb.r(context, "c");
        AbstractC0348nb.r(intent, "i");
        String stringExtra = intent.getStringExtra("wav");
        if (stringExtra == null) {
            return;
        }
        try {
            Uri uri = Nn.a;
            byte[] c = Nn.c(new File(stringExtra));
            Nn.f = 0;
            int length = c.length;
            byte[] copyOf = Arrays.copyOf(c, length + 48000);
            System.arraycopy(new byte[48000], 0, copyOf, length, 48000);
            AbstractC0348nb.o(copyOf);
            Nn.e = copyOf;
            Log.i("VoiceMic", "feed " + stringExtra + " (" + (c.length / 32) + " ms), recording=" + Nn.b);
        } catch (Exception e) {
            Log.w("VoiceMic", "feed " + stringExtra + ": " + e);
        }
    }
}
