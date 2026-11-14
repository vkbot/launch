package defpackage;

import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class Ij {
    public float c;
    public final WeakReference e;
    public Fj f;
    public final TextPaint a = new TextPaint(1);
    public final C0393p4 b = new C0393p4(1, this);
    public boolean d = true;

    public Ij(C0493t4 c0493t4) {
        this.e = new WeakReference(null);
        this.e = new WeakReference(c0493t4);
    }

    public final float a(String str) {
        if (!this.d) {
            return this.c;
        }
        TextPaint textPaint = this.a;
        this.c = str == null ? 0.0f : textPaint.measureText((CharSequence) str, 0, str.length());
        if (str != null) {
            Math.abs(textPaint.getFontMetrics().ascent);
        }
        this.d = false;
        return this.c;
    }
}
