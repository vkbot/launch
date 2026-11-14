package defpackage;

import android.view.ContentInfo;
import android.view.View;
import java.util.Objects;

/* renamed from: en, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0127en {
    public static String[] a(View view) {
        return view.getReceiveContentMimeTypes();
    }

    public static K5 b(View view, K5 k5) {
        ContentInfo r = k5.a.r();
        Objects.requireNonNull(r);
        ContentInfo g = AbstractC0592x3.g(r);
        ContentInfo performReceiveContent = view.performReceiveContent(g);
        if (performReceiveContent == null) {
            return null;
        }
        return performReceiveContent == g ? k5 : new K5(new L(performReceiveContent));
    }

    public static void c(View view, String[] strArr, Se se) {
        if (se == null) {
            view.setOnReceiveContentListener(strArr, null);
        } else {
            view.setOnReceiveContentListener(strArr, new OnReceiveContentListenerC0153fn(se));
        }
    }
}
