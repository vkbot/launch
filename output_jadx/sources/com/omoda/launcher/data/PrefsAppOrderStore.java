package com.omoda.launcher.data;

import android.content.Context;
import android.content.SharedPreferences;
import defpackage.AbstractC0348nb;
import defpackage.C0547v8;
import defpackage.F6;
import defpackage.L4;
import defpackage.Si;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class PrefsAppOrderStore implements AppOrderStore {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final String KEY_ORDER = "installed";

    @Deprecated
    public static final String PREFS_NAME = "app_order";
    private final SharedPreferences prefs;

    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(F6 f6) {
            this();
        }

        private Companion() {
        }
    }

    public PrefsAppOrderStore(Context context) {
        AbstractC0348nb.r(context, "context");
        this.prefs = context.getApplicationContext().getSharedPreferences(PREFS_NAME, 0);
    }

    @Override // com.omoda.launcher.data.AppOrderStore
    public void clear() {
        this.prefs.edit().remove(KEY_ORDER).apply();
    }

    @Override // com.omoda.launcher.data.AppOrderStore
    public List<String> load() {
        String string = this.prefs.getString(KEY_ORDER, null);
        if (string == null) {
            return C0547v8.a;
        }
        List O = Si.O(string, new char[]{'\n'});
        ArrayList arrayList = new ArrayList();
        for (Object obj : O) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // com.omoda.launcher.data.AppOrderStore
    public void save(List<String> list) {
        AbstractC0348nb.r(list, "order");
        this.prefs.edit().putString(KEY_ORDER, L4.y0(list, "\n", null, null, null, 62)).apply();
    }
}
