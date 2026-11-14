package defpackage;

import android.content.SharedPreferences;
import java.util.List;
import java.util.Locale;

/* renamed from: jm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0255jm {
    public static final C0255jm a = new Object();
    public static final List b = M4.p0("last", "presets", "nothing", "apps", "navi");
    public static final List c = M4.p0("with_bg", "no_bg", "black");
    public static volatile SharedPreferences d;

    public static String a() {
        String string = d().getString("lang_code", null);
        if (string != null) {
            return string;
        }
        String language = Locale.getDefault().getLanguage();
        if (!Ki.b.contains(language)) {
            return "en";
        }
        AbstractC0348nb.o(language);
        return language;
    }

    public static String b() {
        String string = d().getString("preset_size", "small");
        return string == null ? "small" : string;
    }

    public static boolean c() {
        return d().getBoolean("service_mode", false);
    }

    public static SharedPreferences d() {
        SharedPreferences sharedPreferences = d;
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        throw new IllegalStateException("UiPreferences not initialized — call UiPreferences.init(context) first");
    }
}
