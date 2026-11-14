package defpackage;

import android.os.LocaleList;
import android.widget.TextView;

/* renamed from: g2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0158g2 {
    public static LocaleList a(String str) {
        return LocaleList.forLanguageTags(str);
    }

    public static void b(TextView textView, LocaleList localeList) {
        textView.setTextLocales(localeList);
    }
}
