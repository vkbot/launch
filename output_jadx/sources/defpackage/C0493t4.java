package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.google.android.material.chip.Chip;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* renamed from: t4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0493t4 extends Ed implements Drawable.Callback, Hj {
    public static final int[] D0 = {R.attr.state_enabled};
    public static final ShapeDrawable E0 = new ShapeDrawable(new OvalShape());
    public float A;
    public boolean A0;
    public ColorStateList B;
    public int B0;
    public CharSequence C;
    public boolean C0;
    public boolean D;
    public Drawable E;
    public ColorStateList F;
    public float G;
    public boolean H;
    public boolean I;
    public Drawable J;
    public RippleDrawable K;
    public ColorStateList L;
    public float M;
    public SpannableStringBuilder N;
    public boolean O;
    public boolean P;
    public Drawable Q;
    public ColorStateList R;
    public C0403pe S;
    public C0403pe T;
    public float U;
    public float V;
    public float W;
    public float X;
    public float Y;
    public float Z;
    public float a0;
    public float b0;
    public final Context c0;
    public final Paint d0;
    public final Paint.FontMetrics e0;
    public final RectF f0;
    public final PointF g0;
    public final Path h0;
    public final Ij i0;
    public int j0;
    public int k0;
    public int l0;
    public int m0;
    public int n0;
    public int o0;
    public boolean p0;
    public int q0;
    public int r0;
    public ColorFilter s0;
    public PorterDuffColorFilter t0;
    public ColorStateList u0;
    public ColorStateList v;
    public PorterDuff.Mode v0;
    public ColorStateList w;
    public int[] w0;
    public float x;
    public ColorStateList x0;
    public float y;
    public WeakReference y0;
    public ColorStateList z;
    public TextUtils.TruncateAt z0;

    public C0493t4(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.omoda.launcher.R.attr.chipStyle, com.omoda.launcher.R.style.Widget_MaterialComponents_Chip_Action);
        this.y = -1.0f;
        this.d0 = new Paint(1);
        this.e0 = new Paint.FontMetrics();
        this.f0 = new RectF();
        this.g0 = new PointF();
        this.h0 = new Path();
        this.r0 = 255;
        this.v0 = PorterDuff.Mode.SRC_IN;
        this.y0 = new WeakReference(null);
        g(context);
        this.c0 = context;
        Ij ij = new Ij(this);
        this.i0 = ij;
        this.C = "";
        ij.a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = D0;
        setState(iArr);
        if (!Arrays.equals(this.w0, iArr)) {
            this.w0 = iArr;
            if (S()) {
                u(getState(), iArr);
            }
        }
        this.A0 = true;
        E0.setTint(-1);
    }

    public static void T(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public static boolean r(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    public static boolean s(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void A(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.E;
        if (drawable3 != 0) {
            boolean z = drawable3 instanceof Lo;
            drawable2 = drawable3;
            if (z) {
                drawable2 = null;
            }
        } else {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float o = o();
            this.E = drawable != null ? drawable.mutate() : null;
            float o2 = o();
            T(drawable2);
            if (R()) {
                m(this.E);
            }
            invalidateSelf();
            if (o != o2) {
                t();
            }
        }
    }

    public final void B(float f) {
        if (this.G != f) {
            float o = o();
            this.G = f;
            float o2 = o();
            invalidateSelf();
            if (o != o2) {
                t();
            }
        }
    }

    public final void C(ColorStateList colorStateList) {
        this.H = true;
        if (this.F != colorStateList) {
            this.F = colorStateList;
            if (R()) {
                B7.h(this.E, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void D(boolean z) {
        if (this.D != z) {
            boolean R = R();
            this.D = z;
            boolean R2 = R();
            if (R != R2) {
                if (R2) {
                    m(this.E);
                } else {
                    T(this.E);
                }
                invalidateSelf();
                t();
            }
        }
    }

    public final void E(ColorStateList colorStateList) {
        if (this.z != colorStateList) {
            this.z = colorStateList;
            if (this.C0) {
                Dd dd = this.a;
                if (dd.d != colorStateList) {
                    dd.d = colorStateList;
                    onStateChange(getState());
                }
            }
            onStateChange(getState());
        }
    }

    public final void F(float f) {
        if (this.A != f) {
            this.A = f;
            this.d0.setStrokeWidth(f);
            if (this.C0) {
                this.a.j = f;
                invalidateSelf();
            }
            invalidateSelf();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void G(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.J;
        if (drawable3 != 0) {
            boolean z = drawable3 instanceof Lo;
            drawable2 = drawable3;
            if (z) {
                drawable2 = null;
            }
        } else {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float p = p();
            this.J = drawable != null ? drawable.mutate() : null;
            ColorStateList colorStateList = this.B;
            if (colorStateList == null) {
                colorStateList = ColorStateList.valueOf(0);
            }
            this.K = new RippleDrawable(colorStateList, this.J, E0);
            float p2 = p();
            T(drawable2);
            if (S()) {
                m(this.J);
            }
            invalidateSelf();
            if (p != p2) {
                t();
            }
        }
    }

    public final void H(float f) {
        if (this.a0 != f) {
            this.a0 = f;
            invalidateSelf();
            if (S()) {
                t();
            }
        }
    }

    public final void I(float f) {
        if (this.M != f) {
            this.M = f;
            invalidateSelf();
            if (S()) {
                t();
            }
        }
    }

    public final void J(float f) {
        if (this.Z != f) {
            this.Z = f;
            invalidateSelf();
            if (S()) {
                t();
            }
        }
    }

    public final void K(ColorStateList colorStateList) {
        if (this.L != colorStateList) {
            this.L = colorStateList;
            if (S()) {
                B7.h(this.J, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void L(boolean z) {
        if (this.I != z) {
            boolean S = S();
            this.I = z;
            boolean S2 = S();
            if (S != S2) {
                if (S2) {
                    m(this.J);
                } else {
                    T(this.J);
                }
                invalidateSelf();
                t();
            }
        }
    }

    public final void M(float f) {
        if (this.W != f) {
            float o = o();
            this.W = f;
            float o2 = o();
            invalidateSelf();
            if (o != o2) {
                t();
            }
        }
    }

    public final void N(float f) {
        if (this.V != f) {
            float o = o();
            this.V = f;
            float o2 = o();
            invalidateSelf();
            if (o != o2) {
                t();
            }
        }
    }

    public final void O(ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            this.x0 = null;
            onStateChange(getState());
        }
    }

    public final void P(Fj fj) {
        Ij ij = this.i0;
        if (ij.f != fj) {
            ij.f = fj;
            if (fj != null) {
                TextPaint textPaint = ij.a;
                Context context = this.c0;
                C0393p4 c0393p4 = ij.b;
                fj.f(context, textPaint, c0393p4);
                Hj hj = (Hj) ij.e.get();
                if (hj != null) {
                    textPaint.drawableState = hj.getState();
                }
                fj.e(context, textPaint, c0393p4);
                ij.d = true;
            }
            Hj hj2 = (Hj) ij.e.get();
            if (hj2 != null) {
                C0493t4 c0493t4 = (C0493t4) hj2;
                c0493t4.t();
                c0493t4.invalidateSelf();
                c0493t4.onStateChange(hj2.getState());
            }
        }
    }

    public final boolean Q() {
        return this.P && this.Q != null && this.p0;
    }

    public final boolean R() {
        return this.D && this.E != null;
    }

    public final boolean S() {
        return this.I && this.J != null;
    }

    @Override // defpackage.Ed, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i;
        RectF rectF;
        int i2;
        int i3;
        int i4;
        RectF rectF2;
        int i5;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || (i = this.r0) == 0) {
            return;
        }
        int saveLayerAlpha = i < 255 ? canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i) : 0;
        boolean z = this.C0;
        Paint paint = this.d0;
        RectF rectF3 = this.f0;
        if (!z) {
            paint.setColor(this.j0);
            paint.setStyle(Paint.Style.FILL);
            rectF3.set(bounds);
            canvas.drawRoundRect(rectF3, q(), q(), paint);
        }
        if (!this.C0) {
            paint.setColor(this.k0);
            paint.setStyle(Paint.Style.FILL);
            ColorFilter colorFilter = this.s0;
            if (colorFilter == null) {
                colorFilter = this.t0;
            }
            paint.setColorFilter(colorFilter);
            rectF3.set(bounds);
            canvas.drawRoundRect(rectF3, q(), q(), paint);
        }
        if (this.C0) {
            super.draw(canvas);
        }
        if (this.A > 0.0f && !this.C0) {
            paint.setColor(this.m0);
            paint.setStyle(Paint.Style.STROKE);
            if (!this.C0) {
                ColorFilter colorFilter2 = this.s0;
                if (colorFilter2 == null) {
                    colorFilter2 = this.t0;
                }
                paint.setColorFilter(colorFilter2);
            }
            float f = bounds.left;
            float f2 = this.A / 2.0f;
            rectF3.set(f + f2, bounds.top + f2, bounds.right - f2, bounds.bottom - f2);
            float f3 = this.y - (this.A / 2.0f);
            canvas.drawRoundRect(rectF3, f3, f3, paint);
        }
        paint.setColor(this.n0);
        paint.setStyle(Paint.Style.FILL);
        rectF3.set(bounds);
        if (this.C0) {
            RectF rectF4 = new RectF(bounds);
            Path path = this.h0;
            Dd dd = this.a;
            this.q.a(dd.a, dd.i, rectF4, this.p, path);
            c(canvas, paint, path, this.a.a, e());
        } else {
            canvas.drawRoundRect(rectF3, q(), q(), paint);
        }
        if (R()) {
            n(bounds, rectF3);
            float f4 = rectF3.left;
            float f5 = rectF3.top;
            canvas.translate(f4, f5);
            this.E.setBounds(0, 0, (int) rectF3.width(), (int) rectF3.height());
            this.E.draw(canvas);
            canvas.translate(-f4, -f5);
        }
        if (Q()) {
            n(bounds, rectF3);
            float f6 = rectF3.left;
            float f7 = rectF3.top;
            canvas.translate(f6, f7);
            this.Q.setBounds(0, 0, (int) rectF3.width(), (int) rectF3.height());
            this.Q.draw(canvas);
            canvas.translate(-f6, -f7);
        }
        if (!this.A0 || this.C == null) {
            rectF = rectF3;
            i2 = saveLayerAlpha;
            i3 = 0;
            i4 = 255;
        } else {
            PointF pointF = this.g0;
            pointF.set(0.0f, 0.0f);
            Paint.Align align = Paint.Align.LEFT;
            CharSequence charSequence = this.C;
            Ij ij = this.i0;
            if (charSequence != null) {
                float o = o() + this.U + this.X;
                if (C7.a(this) == 0) {
                    pointF.x = bounds.left + o;
                } else {
                    pointF.x = bounds.right - o;
                    align = Paint.Align.RIGHT;
                }
                float centerY = bounds.centerY();
                TextPaint textPaint = ij.a;
                Paint.FontMetrics fontMetrics = this.e0;
                textPaint.getFontMetrics(fontMetrics);
                pointF.y = centerY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
            }
            rectF3.setEmpty();
            if (this.C != null) {
                float o2 = o() + this.U + this.X;
                float p = p() + this.b0 + this.Y;
                if (C7.a(this) == 0) {
                    rectF3.left = bounds.left + o2;
                    rectF3.right = bounds.right - p;
                } else {
                    rectF3.left = bounds.left + p;
                    rectF3.right = bounds.right - o2;
                }
                rectF3.top = bounds.top;
                rectF3.bottom = bounds.bottom;
            }
            Fj fj = ij.f;
            TextPaint textPaint2 = ij.a;
            if (fj != null) {
                textPaint2.drawableState = getState();
                ij.f.e(this.c0, textPaint2, ij.b);
            }
            textPaint2.setTextAlign(align);
            boolean z2 = Math.round(ij.a(this.C.toString())) > Math.round(rectF3.width());
            if (z2) {
                i5 = canvas.save();
                canvas.clipRect(rectF3);
            } else {
                i5 = 0;
            }
            CharSequence charSequence2 = this.C;
            if (z2 && this.z0 != null) {
                charSequence2 = TextUtils.ellipsize(charSequence2, textPaint2, rectF3.width(), this.z0);
            }
            CharSequence charSequence3 = charSequence2;
            int length = charSequence3.length();
            float f8 = pointF.x;
            float f9 = pointF.y;
            rectF = rectF3;
            i2 = saveLayerAlpha;
            i3 = 0;
            i4 = 255;
            canvas.drawText(charSequence3, 0, length, f8, f9, textPaint2);
            if (z2) {
                canvas.restoreToCount(i5);
            }
        }
        if (S()) {
            rectF.setEmpty();
            if (S()) {
                float f10 = this.b0 + this.a0;
                if (C7.a(this) == 0) {
                    float f11 = bounds.right - f10;
                    rectF2 = rectF;
                    rectF2.right = f11;
                    rectF2.left = f11 - this.M;
                } else {
                    rectF2 = rectF;
                    float f12 = bounds.left + f10;
                    rectF2.left = f12;
                    rectF2.right = f12 + this.M;
                }
                float exactCenterY = bounds.exactCenterY();
                float f13 = this.M;
                float f14 = exactCenterY - (f13 / 2.0f);
                rectF2.top = f14;
                rectF2.bottom = f14 + f13;
            } else {
                rectF2 = rectF;
            }
            float f15 = rectF2.left;
            float f16 = rectF2.top;
            canvas.translate(f15, f16);
            this.J.setBounds(i3, i3, (int) rectF2.width(), (int) rectF2.height());
            this.K.setBounds(this.J.getBounds());
            this.K.jumpToCurrentState();
            this.K.draw(canvas);
            canvas.translate(-f15, -f16);
        }
        if (this.r0 < i4) {
            canvas.restoreToCount(i2);
        }
    }

    @Override // defpackage.Ed, android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.r0;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.s0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.x;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.min(Math.round(p() + this.i0.a(this.C.toString()) + o() + this.U + this.X + this.Y + this.b0), this.B0);
    }

    @Override // defpackage.Ed, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // defpackage.Ed, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        if (this.C0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.x, this.y);
        } else {
            outline.setRoundRect(bounds, this.y);
        }
        outline.setAlpha(this.r0 / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // defpackage.Ed, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Fj fj;
        ColorStateList colorStateList;
        return r(this.v) || r(this.w) || r(this.z) || !((fj = this.i0.f) == null || (colorStateList = fj.j) == null || !colorStateList.isStateful()) || ((this.P && this.Q != null && this.O) || s(this.E) || s(this.Q) || r(this.u0));
    }

    public final void m(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        C7.b(drawable, C7.a(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.J) {
            if (drawable.isStateful()) {
                drawable.setState(this.w0);
            }
            B7.h(drawable, this.L);
            return;
        }
        Drawable drawable2 = this.E;
        if (drawable == drawable2 && this.H) {
            B7.h(drawable2, this.F);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    public final void n(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (R() || Q()) {
            float f = this.U + this.V;
            Drawable drawable = this.p0 ? this.Q : this.E;
            float f2 = this.G;
            if (f2 <= 0.0f && drawable != null) {
                f2 = drawable.getIntrinsicWidth();
            }
            if (C7.a(this) == 0) {
                float f3 = rect.left + f;
                rectF.left = f3;
                rectF.right = f3 + f2;
            } else {
                float f4 = rect.right - f;
                rectF.right = f4;
                rectF.left = f4 - f2;
            }
            Drawable drawable2 = this.p0 ? this.Q : this.E;
            float f5 = this.G;
            if (f5 <= 0.0f && drawable2 != null) {
                f5 = (float) Math.ceil(TypedValue.applyDimension(1, 24, this.c0.getResources().getDisplayMetrics()));
                if (drawable2.getIntrinsicHeight() <= f5) {
                    f5 = drawable2.getIntrinsicHeight();
                }
            }
            float exactCenterY = rect.exactCenterY() - (f5 / 2.0f);
            rectF.top = exactCenterY;
            rectF.bottom = exactCenterY + f5;
        }
    }

    public final float o() {
        if (!R() && !Q()) {
            return 0.0f;
        }
        float f = this.V;
        Drawable drawable = this.p0 ? this.Q : this.E;
        float f2 = this.G;
        if (f2 <= 0.0f && drawable != null) {
            f2 = drawable.getIntrinsicWidth();
        }
        return f2 + f + this.W;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (R()) {
            onLayoutDirectionChanged |= C7.b(this.E, i);
        }
        if (Q()) {
            onLayoutDirectionChanged |= C7.b(this.Q, i);
        }
        if (S()) {
            onLayoutDirectionChanged |= C7.b(this.J, i);
        }
        if (!onLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        if (R()) {
            onLevelChange |= this.E.setLevel(i);
        }
        if (Q()) {
            onLevelChange |= this.Q.setLevel(i);
        }
        if (S()) {
            onLevelChange |= this.J.setLevel(i);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    @Override // defpackage.Ed, android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        if (this.C0) {
            super.onStateChange(iArr);
        }
        return u(iArr, this.w0);
    }

    public final float p() {
        if (S()) {
            return this.Z + this.M + this.a0;
        }
        return 0.0f;
    }

    public final float q() {
        return this.C0 ? this.a.a.e.a(e()) : this.y;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // defpackage.Ed, android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.r0 != i) {
            this.r0 = i;
            invalidateSelf();
        }
    }

    @Override // defpackage.Ed, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.s0 != colorFilter) {
            this.s0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // defpackage.Ed, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.u0 != colorStateList) {
            this.u0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // defpackage.Ed, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.v0 != mode) {
            this.v0 = mode;
            ColorStateList colorStateList = this.u0;
            this.t0 = (colorStateList == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (R()) {
            visible |= this.E.setVisible(z, z2);
        }
        if (Q()) {
            visible |= this.Q.setVisible(z, z2);
        }
        if (S()) {
            visible |= this.J.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    public final void t() {
        InterfaceC0468s4 interfaceC0468s4 = (InterfaceC0468s4) this.y0.get();
        if (interfaceC0468s4 != null) {
            Chip chip = (Chip) interfaceC0468s4;
            chip.b(chip.p);
            chip.requestLayout();
            chip.invalidateOutline();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0141  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean u(int[] r12, int[] r13) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0493t4.u(int[], int[]):boolean");
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final void v(boolean z) {
        if (this.O != z) {
            this.O = z;
            float o = o();
            if (!z && this.p0) {
                this.p0 = false;
            }
            float o2 = o();
            invalidateSelf();
            if (o != o2) {
                t();
            }
        }
    }

    public final void w(Drawable drawable) {
        if (this.Q != drawable) {
            float o = o();
            this.Q = drawable;
            float o2 = o();
            T(this.Q);
            m(this.Q);
            invalidateSelf();
            if (o != o2) {
                t();
            }
        }
    }

    public final void x(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.R != colorStateList) {
            this.R = colorStateList;
            if (this.P && (drawable = this.Q) != null && this.O) {
                B7.h(drawable, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void y(boolean z) {
        if (this.P != z) {
            boolean Q = Q();
            this.P = z;
            boolean Q2 = Q();
            if (Q != Q2) {
                if (Q2) {
                    m(this.Q);
                } else {
                    T(this.Q);
                }
                invalidateSelf();
                t();
            }
        }
    }

    public final void z(float f) {
        if (this.y != f) {
            this.y = f;
            Uh e = this.a.a.e();
            e.e = new C0103e(f);
            e.f = new C0103e(f);
            e.g = new C0103e(f);
            e.h = new C0103e(f);
            setShapeAppearanceModel(e.a());
        }
    }
}
