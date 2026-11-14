package defpackage;

import android.text.TextPaint;

/* loaded from: classes.dex */
public final class I6 {
    public static final ThreadLocal b = new ThreadLocal();
    public final TextPaint a;

    public I6() {
        TextPaint textPaint = new TextPaint();
        this.a = textPaint;
        textPaint.setTextSize(10.0f);
    }
}
