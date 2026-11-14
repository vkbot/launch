package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* renamed from: ib, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0219ib extends BroadcastReceiver {
    public final /* synthetic */ S9 a;
    public final /* synthetic */ Context b;
    public final /* synthetic */ String c;
    public final /* synthetic */ Nb d;

    /* JADX WARN: Multi-variable type inference failed */
    public C0219ib(S9 s9, InterfaceC0192ha interfaceC0192ha, Context context, String str) {
        this.a = s9;
        this.b = context;
        this.c = str;
        this.d = (Nb) interfaceC0192ha;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [Nb, ha] */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String str;
        int intExtra = intent != null ? intent.getIntExtra("android.content.pm.extra.STATUS", 1) : 1;
        Context context2 = this.b;
        if (intExtra == -1) {
            S9 s9 = this.a;
            if (s9 != null) {
                C0244jb.a.post(new O(11, s9));
            }
            Intent intent2 = intent != null ? (Intent) intent.getParcelableExtra("android.intent.extra.INTENT") : null;
            if (intent2 != null) {
                intent2.addFlags(268435456);
                try {
                    context2.startActivity(intent2);
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            return;
        }
        try {
            context2.unregisterReceiver(this);
        } catch (Exception unused2) {
        }
        if (intent == null || (str = intent.getStringExtra("android.content.pm.extra.STATUS_MESSAGE")) == null) {
            str = "";
        }
        boolean z = intExtra == 0;
        if (!z) {
            Log.e("InstallManager", "uninstall failed status=" + intExtra + ": " + str + " (" + this.c + ')');
        }
        C0244jb.a.post(new RunnableC0167gb(this.d, z, str, 1));
    }
}
