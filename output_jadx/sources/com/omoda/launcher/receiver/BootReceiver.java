package com.omoda.launcher.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.omoda.launcher.MainActivity;
import defpackage.AbstractC0348nb;
import defpackage.AbstractC0542v3;
import defpackage.C0255jm;

/* loaded from: classes.dex */
public final class BootReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        AbstractC0348nb.r(context, "context");
        AbstractC0348nb.r(intent, "intent");
        if (AbstractC0348nb.g(intent.getAction(), "android.intent.action.BOOT_COMPLETED") || AbstractC0348nb.g(intent.getAction(), "android.intent.action.QUICKBOOT_POWERON")) {
            C0255jm c0255jm = C0255jm.a;
            if (C0255jm.c()) {
                Log.d("BootReceiver", "Boot completed — service (ТО) mode, staying hidden (stock launcher owns the screen)");
                AbstractC0542v3.b(context, false);
                return;
            }
            String string = C0255jm.d().getString("autostart_mode", "presets");
            String str = string != null ? string : "presets";
            if (str.equals("nothing")) {
                Log.d("BootReceiver", "Boot completed — autostart=nothing, skipping MainActivity launch");
                AbstractC0542v3.b(context, true);
                return;
            }
            Log.d("BootReceiver", "Boot completed, autostart=" + str + " → starting MainActivity");
            try {
                Intent intent2 = new Intent(context, (Class<?>) MainActivity.class);
                intent2.addFlags(268435456);
                intent2.putExtra("boot_autostart", true);
                context.startActivity(intent2);
            } catch (Exception e) {
                Log.e("BootReceiver", "Failed to start launcher on boot: " + e.getMessage(), e);
            }
        }
    }
}
