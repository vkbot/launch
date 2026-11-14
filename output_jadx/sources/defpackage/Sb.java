package defpackage;

import android.content.SharedPreferences;
import android.util.Log;

/* loaded from: classes.dex */
public final class Sb {
    public static final Sb a;
    public static final String b;
    public static SharedPreferences c;
    public static String d;

    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, Sb] */
    static {
        C6.r(6028910546717210240L);
        C6.r(6028910482292700800L);
        C6.r(6028910447932962432L);
        C6.r(6028910404983289472L);
        C6.r(6028910340558780032L);
        a = new Object();
        b = C6.r(6028910258954401408L);
        d = C6.r(6028910160170153600L);
    }

    public static boolean a() {
        SharedPreferences sharedPreferences = c;
        if (sharedPreferences != null ? sharedPreferences.getBoolean(C6.r(6028912286178965120L), false) : false) {
            return false;
        }
        SharedPreferences sharedPreferences2 = c;
        int i = 13 - (sharedPreferences2 != null ? sharedPreferences2.getInt(C6.r(6028912243229292160L), 0) : 0);
        if (i < 0) {
            i = 0;
        }
        return i == 0;
    }

    public static void b(boolean z) {
        SharedPreferences.Editor edit;
        SharedPreferences.Editor putBoolean;
        SharedPreferences sharedPreferences = c;
        if (sharedPreferences != null && (edit = sharedPreferences.edit()) != null && (putBoolean = edit.putBoolean(C6.r(6028911276861650560L), z)) != null) {
            putBoolean.apply();
        }
        Log.d(C6.r(6028911233911977600L), C6.r(6028911169487468160L) + z + ')');
    }
}
