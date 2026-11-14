package defpackage;

import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public abstract class S1 {
    public static void a(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }
}
