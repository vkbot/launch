package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.style.ReplacementSpan;
import java.nio.ByteBuffer;

/* renamed from: im, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0229im extends ReplacementSpan {
    public final C0267k8 b;
    public final Paint.FontMetricsInt a = new Paint.FontMetricsInt();
    public float c = 1.0f;

    public C0229im(C0267k8 c0267k8) {
        AbstractC0145ff.f(c0267k8, "metadata cannot be null");
        this.b = c0267k8;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        C0035b8.a().getClass();
        C0267k8 c0267k8 = this.b;
        C0446r7 c0446r7 = c0267k8.b;
        Typeface typeface = (Typeface) c0446r7.d;
        Typeface typeface2 = paint.getTypeface();
        paint.setTypeface(typeface);
        canvas.drawText((char[]) c0446r7.b, c0267k8.a * 2, 2, f, i4, paint);
        paint.setTypeface(typeface2);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        Paint.FontMetricsInt fontMetricsInt2 = this.a;
        paint.getFontMetricsInt(fontMetricsInt2);
        float abs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        C0267k8 c0267k8 = this.b;
        this.c = abs / (c0267k8.c().a(14) != 0 ? ((ByteBuffer) r8.d).getShort(r1 + r8.a) : (short) 0);
        C0222ie c = c0267k8.c();
        int a = c.a(14);
        if (a != 0) {
            ((ByteBuffer) c.d).getShort(a + c.a);
        }
        short s = (short) ((c0267k8.c().a(12) != 0 ? ((ByteBuffer) r5.d).getShort(r7 + r5.a) : (short) 0) * this.c);
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return s;
    }
}
