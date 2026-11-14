package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import java.io.File;

/* renamed from: hb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0193hb extends BroadcastReceiver {
    public final /* synthetic */ Context a;
    public final /* synthetic */ File b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ Nb d;

    /* JADX WARN: Multi-variable type inference failed */
    public C0193hb(Context context, File file, boolean z, InterfaceC0192ha interfaceC0192ha) {
        this.a = context;
        this.b = file;
        this.c = z;
        this.d = (Nb) interfaceC0192ha;
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [Nb, ha] */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String str;
        try {
            this.a.unregisterReceiver(this);
        } catch (Exception unused) {
        }
        int intExtra = intent != null ? intent.getIntExtra("android.content.pm.extra.STATUS", 1) : 1;
        if (intent == null || (str = intent.getStringExtra("android.content.pm.extra.STATUS_MESSAGE")) == null) {
            str = "";
        }
        boolean z = intExtra == 0;
        File file = this.b;
        if (!z) {
            Log.e("InstallManager", "Install failed status=" + intExtra + ": " + str + " (" + file.getName() + ')');
        }
        if (z || !this.c) {
            file.delete();
        }
        C0244jb.a.post(new RunnableC0167gb(this.d, z, str, 0));
    }
}
