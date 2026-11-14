package com.omoda.launcher;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import com.omoda.launcher.data.LastScreen;
import defpackage.AbstractC0186h4;
import defpackage.AbstractC0221id;
import defpackage.AbstractC0348nb;
import defpackage.AbstractC0554vf;
import defpackage.C0016af;
import defpackage.C0149fj;
import defpackage.C0255jm;
import defpackage.C0368o5;
import defpackage.C0401pc;
import defpackage.C0478se;
import defpackage.C6;
import defpackage.Ef;
import defpackage.EnumC0411pm;
import defpackage.Ki;
import defpackage.Nn;
import defpackage.S4;
import defpackage.Sb;
import defpackage.T7;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.LinkedHashMap;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class LauncherApp extends Application {
    /* JADX WARN: Type inference failed for: r7v18, types: [java.util.Map, java.lang.Object] */
    @Override // android.app.Application
    public final void onCreate() {
        super.onCreate();
        synchronized (T7.d) {
            if (!T7.e) {
                try {
                    HttpsURLConnection.setDefaultSSLSocketFactory(T7.a().getSocketFactory());
                    T7.e = true;
                    Log.i("InsecureSslContext", "Date-tolerant SSL factory installed for HttpsURLConnection");
                } catch (Exception e) {
                    Log.e("InsecureSslContext", "Failed to install date-tolerant SSL factory — falling back to default", e);
                }
            }
        }
        Sb.a.getClass();
        C6.r(6028912522402166400L);
        Sb.c = getSharedPreferences(C6.r(6028912488042428032L), 0);
        String string = Settings.Secure.getString(getContentResolver(), C6.r(6028912453682689664L));
        if (string == null) {
            string = C6.r(6028912406438049408L);
        }
        Sb.d = string;
        Log.d(C6.r(6028912402143082112L), C6.r(6028912337718572672L) + Sb.d);
        synchronized (T7.v) {
            try {
            } catch (Exception e2) {
                Log.e("UiConfig", "Failed to load ui_config.json — using fallbacks", e2);
                T7.x = new C0478se(56, 45);
                T7.y = new C0478se(67, 54);
                T7.z = AbstractC0221id.r0(new C0016af("small", new Ef(96, 72, 80, 54, 32, 120, 5, 40, 8, 10)), new C0016af("medium", new Ef(134, 101, 112, 76, 45, 160, 4, 56, 11, 14)), new C0016af("large", new Ef(178, 133, 148, 100, 59, 210, 3, 74, 15, 18)));
                T7.w = true;
            } finally {
            }
            if (!T7.w) {
                InputStream open = getApplicationContext().getAssets().open("ui_config.json");
                AbstractC0348nb.q(open, "open(...)");
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open, AbstractC0186h4.a), 8192);
                try {
                    String m = AbstractC0554vf.m(bufferedReader);
                    C6.c(bufferedReader, null);
                    JSONObject jSONObject = new JSONObject(m);
                    JSONObject jSONObject2 = jSONObject.getJSONObject("navPanel");
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("default");
                    AbstractC0348nb.q(jSONObject3, "getJSONObject(...)");
                    T7.x = new C0478se(jSONObject3.getInt("buttonSize"), jSONObject3.getInt("spacer"));
                    JSONObject jSONObject4 = jSONObject2.getJSONObject("backHidden");
                    AbstractC0348nb.q(jSONObject4, "getJSONObject(...)");
                    T7.y = new C0478se(jSONObject4.getInt("buttonSize"), jSONObject4.getInt("spacer"));
                    JSONObject jSONObject5 = jSONObject.getJSONObject("preset");
                    Iterator<String> keys = jSONObject5.keys();
                    AbstractC0348nb.q(keys, "keys(...)");
                    C0368o5 c0368o5 = new C0368o5(new C0401pc(1, keys));
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    Iterator it = c0368o5.iterator();
                    while (it.hasNext()) {
                        Object next = it.next();
                        JSONObject jSONObject6 = jSONObject5.getJSONObject((String) next);
                        AbstractC0348nb.q(jSONObject6, "getJSONObject(...)");
                        linkedHashMap.put(next, new Ef(jSONObject6.getInt("itemSize"), jSONObject6.getInt("iconSize"), jSONObject6.getInt("containerSize"), jSONObject6.getInt("cardIconSize"), jSONObject6.getInt("marginV"), jSONObject6.getInt("sidebarWidth"), jSONObject6.getInt("maxFit"), jSONObject6.getInt("editBtnSize"), jSONObject6.getInt("editBtnPad"), jSONObject6.getInt("editBtnOffset")));
                    }
                    T7.z = linkedHashMap;
                    T7.w = true;
                    StringBuilder sb = new StringBuilder();
                    sb.append("UiConfig loaded: navPanel(default+backHidden), preset variants=");
                    ?? r7 = T7.z;
                    if (r7 == 0) {
                        AbstractC0348nb.j0("presetVariants");
                        throw null;
                    }
                    sb.append(r7.keySet());
                    Log.i("UiConfig", sb.toString());
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        C6.c(bufferedReader, th);
                        throw th2;
                    }
                }
            }
        }
        synchronized (C0255jm.a) {
            try {
                if (C0255jm.d == null) {
                    SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("ui_preferences", 0);
                    C0255jm.d = sharedPreferences;
                    C0149fj c0149fj = new C0149fj(new S4(7, this));
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    if (!sharedPreferences.contains("unified_mode")) {
                        edit.putString("unified_mode", (sharedPreferences.contains("unified_launcher") ? sharedPreferences.getBoolean("unified_launcher", false) : ((Boolean) c0149fj.a()).booleanValue() ? EnumC0411pm.e : EnumC0411pm.d).a);
                        edit.remove("unified_launcher");
                    }
                    if (!sharedPreferences.contains("autostart_mode")) {
                        edit.putString("autostart_mode", ((Boolean) c0149fj.a()).booleanValue() ? "last" : "presets");
                    }
                    edit.apply();
                }
            } finally {
            }
        }
        Ki ki = Ki.a;
        String a = C0255jm.a();
        synchronized (ki) {
            Ki.h(this, a);
        }
        T7.i.h(this);
        LastScreen.Companion.init(this);
        if (AbstractC0348nb.g(Application.getProcessName(), getPackageName())) {
            Uri uri = Nn.a;
            if (Nn.g != null) {
                return;
            }
            Context applicationContext = getApplicationContext();
            AbstractC0348nb.q(applicationContext, "getApplicationContext(...)");
            Nn.g = applicationContext;
            C0149fj c0149fj2 = Nn.h;
            ((Handler) c0149fj2.a()).post(Nn.i);
            Context context = Nn.g;
            if (context == null) {
                AbstractC0348nb.j0("app");
                throw null;
            }
            context.registerReceiver(new BroadcastReceiver(), new IntentFilter("com.omoda.launcher.VOICE_FEED"), "android.permission.DUMP", (Handler) c0149fj2.a());
            Context context2 = Nn.g;
            if (context2 == null) {
                AbstractC0348nb.j0("app");
                throw null;
            }
            AudioManager audioManager = (AudioManager) context2.getSystemService(AudioManager.class);
            if (audioManager != null) {
                audioManager.registerAudioRecordingCallback(new AudioManager.AudioRecordingCallback(), (Handler) c0149fj2.a());
            }
        }
    }
}
