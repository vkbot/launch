package defpackage;

import android.content.res.Configuration;
import android.os.LocaleList;

/* renamed from: p1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0390p1 {
    public static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        LocaleList locales = configuration.getLocales();
        LocaleList locales2 = configuration2.getLocales();
        if (locales.equals(locales2)) {
            return;
        }
        configuration3.setLocales(locales2);
        configuration3.locale = configuration2.locale;
    }

    public static Ic b(Configuration configuration) {
        return Ic.a(configuration.getLocales().toLanguageTags());
    }

    public static void c(Ic ic) {
        LocaleList.setDefault(LocaleList.forLanguageTags(ic.a.a.toLanguageTags()));
    }

    public static void d(Configuration configuration, Ic ic) {
        configuration.setLocales(LocaleList.forLanguageTags(ic.a.a.toLanguageTags()));
    }
}
