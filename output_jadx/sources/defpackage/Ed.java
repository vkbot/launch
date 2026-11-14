package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import java.util.BitSet;

/* loaded from: classes.dex */
public class Ed extends Drawable implements InterfaceC0148fi {
    public static final /* synthetic */ int u = 0;
    public Dd a;
    public final AbstractC0097di[] b;
    public final AbstractC0097di[] c;
    public final BitSet d;
    public boolean e;
    public final Matrix f;
    public final Path g;
    public final Path h;
    public final RectF i;
    public final RectF j;
    public final Region k;
    public final Region l;
    public Vh m;
    public final Paint n;
    public final Paint o;
    public final L p;
    public final Xh q;
    public PorterDuffColorFilter r;
    public PorterDuffColorFilter s;
    public final RectF t;

    static {
        Paint paint = new Paint(1);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public Ed() {
        this(new Vh());
    }

    public final void a(RectF rectF, Path path) {
        Dd dd = this.a;
        this.q.a(dd.a, dd.i, rectF, this.p, path);
        if (this.a.h != 1.0f) {
            Matrix matrix = this.f;
            matrix.reset();
            float f = this.a.h;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.t, true);
    }

    public final int b(int i) {
        int i2;
        Dd dd = this.a;
        float f = dd.m + 0.0f + dd.l;
        V7 v7 = dd.b;
        if (v7 == null || !v7.a || U4.d(i, 255) != v7.d) {
            return i;
        }
        float min = (v7.e <= 0.0f || f <= 0.0f) ? 0.0f : Math.min(((((float) Math.log1p(f / r3)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        int alpha = Color.alpha(i);
        int A = C6.A(U4.d(i, 255), v7.b, min);
        if (min > 0.0f && (i2 = v7.c) != 0) {
            A = U4.b(U4.d(i2, V7.f), A);
        }
        return U4.d(A, alpha);
    }

    public final void c(Canvas canvas, Paint paint, Path path, Vh vh, RectF rectF) {
        if (!vh.d(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float a = vh.f.a(rectF) * this.a.i;
            canvas.drawRoundRect(rectF, a, a, paint);
        }
    }

    public void d(Canvas canvas) {
        Paint paint = this.o;
        Path path = this.h;
        Vh vh = this.m;
        RectF rectF = this.j;
        rectF.set(e());
        float strokeWidth = f() ? paint.getStrokeWidth() / 2.0f : 0.0f;
        rectF.inset(strokeWidth, strokeWidth);
        c(canvas, paint, path, vh, rectF);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint = this.n;
        paint.setColorFilter(this.r);
        int alpha = paint.getAlpha();
        int i = this.a.k;
        paint.setAlpha(((i + (i >>> 7)) * alpha) >>> 8);
        Paint paint2 = this.o;
        paint2.setColorFilter(this.s);
        paint2.setStrokeWidth(this.a.j);
        int alpha2 = paint2.getAlpha();
        int i2 = this.a.k;
        paint2.setAlpha(((i2 + (i2 >>> 7)) * alpha2) >>> 8);
        boolean z = this.e;
        Path path = this.g;
        if (z) {
            float f = -(f() ? paint2.getStrokeWidth() / 2.0f : 0.0f);
            Vh vh = this.a.a;
            Uh e = vh.e();
            InterfaceC0033b6 interfaceC0033b6 = vh.e;
            if (!(interfaceC0033b6 instanceof Ng)) {
                interfaceC0033b6 = new C0639z0(f, interfaceC0033b6);
            }
            e.e = interfaceC0033b6;
            InterfaceC0033b6 interfaceC0033b62 = vh.f;
            if (!(interfaceC0033b62 instanceof Ng)) {
                interfaceC0033b62 = new C0639z0(f, interfaceC0033b62);
            }
            e.f = interfaceC0033b62;
            InterfaceC0033b6 interfaceC0033b63 = vh.h;
            if (!(interfaceC0033b63 instanceof Ng)) {
                interfaceC0033b63 = new C0639z0(f, interfaceC0033b63);
            }
            e.h = interfaceC0033b63;
            InterfaceC0033b6 interfaceC0033b64 = vh.g;
            if (!(interfaceC0033b64 instanceof Ng)) {
                interfaceC0033b64 = new C0639z0(f, interfaceC0033b64);
            }
            e.g = interfaceC0033b64;
            Vh a = e.a();
            this.m = a;
            float f2 = this.a.i;
            RectF rectF = this.j;
            rectF.set(e());
            float strokeWidth = f() ? paint2.getStrokeWidth() / 2.0f : 0.0f;
            rectF.inset(strokeWidth, strokeWidth);
            this.q.a(a, f2, rectF, null, this.h);
            a(e(), path);
            this.e = false;
        }
        Dd dd = this.a;
        dd.getClass();
        if (dd.n > 0 && !this.a.a.d(e())) {
            path.isConvex();
        }
        Dd dd2 = this.a;
        Paint.Style style = dd2.p;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            c(canvas, paint, path, dd2.a, e());
        }
        if (f()) {
            d(canvas);
        }
        paint.setAlpha(alpha);
        paint2.setAlpha(alpha2);
    }

    public final RectF e() {
        RectF rectF = this.i;
        rectF.set(getBounds());
        return rectF;
    }

    public final boolean f() {
        Paint.Style style = this.a.p;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.o.getStrokeWidth() > 0.0f;
    }

    public final void g(Context context) {
        this.a.b = new V7(context);
        l();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.a.k;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.a.getClass();
        if (this.a.a.d(e())) {
            outline.setRoundRect(getBounds(), this.a.a.e.a(e()) * this.a.i);
            return;
        }
        RectF e = e();
        Path path = this.g;
        a(e, path);
        if (Build.VERSION.SDK_INT >= 30) {
            outline.setPath(path);
        } else {
            try {
                outline.setConvexPath(path);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.a.g;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.k;
        region.set(bounds);
        RectF e = e();
        Path path = this.g;
        a(e, path);
        Region region2 = this.l;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    public final void h(float f) {
        Dd dd = this.a;
        if (dd.m != f) {
            dd.m = f;
            l();
        }
    }

    public final void i(ColorStateList colorStateList) {
        Dd dd = this.a;
        if (dd.c != colorStateList) {
            dd.c = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.e = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        if (!super.isStateful() && ((colorStateList = this.a.e) == null || !colorStateList.isStateful())) {
            this.a.getClass();
            ColorStateList colorStateList3 = this.a.d;
            if ((colorStateList3 == null || !colorStateList3.isStateful()) && ((colorStateList2 = this.a.c) == null || !colorStateList2.isStateful())) {
                return false;
            }
        }
        return true;
    }

    public final boolean j(int[] iArr) {
        boolean z;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.a.c == null || color2 == (colorForState2 = this.a.c.getColorForState(iArr, (color2 = (paint2 = this.n).getColor())))) {
            z = false;
        } else {
            paint2.setColor(colorForState2);
            z = true;
        }
        if (this.a.d == null || color == (colorForState = this.a.d.getColorForState(iArr, (color = (paint = this.o).getColor())))) {
            return z;
        }
        paint.setColor(colorForState);
        return true;
    }

    public final boolean k() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.r;
        PorterDuffColorFilter porterDuffColorFilter3 = this.s;
        Dd dd = this.a;
        ColorStateList colorStateList = dd.e;
        PorterDuff.Mode mode = dd.f;
        Paint paint = this.n;
        if (colorStateList == null || mode == null) {
            int color = paint.getColor();
            int b = b(color);
            porterDuffColorFilter = b != color ? new PorterDuffColorFilter(b, PorterDuff.Mode.SRC_IN) : null;
        } else {
            porterDuffColorFilter = new PorterDuffColorFilter(b(colorStateList.getColorForState(getState(), 0)), mode);
        }
        this.r = porterDuffColorFilter;
        this.a.getClass();
        this.s = null;
        this.a.getClass();
        return (He.a(porterDuffColorFilter2, this.r) && He.a(porterDuffColorFilter3, this.s)) ? false : true;
    }

    public final void l() {
        Dd dd = this.a;
        float f = dd.m + 0.0f;
        dd.n = (int) Math.ceil(0.75f * f);
        this.a.o = (int) Math.ceil(f * 0.25f);
        k();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.a = new Dd(this.a);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.e = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z = j(iArr) || k();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Dd dd = this.a;
        if (dd.k != i) {
            dd.k = i;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.a.getClass();
        super.invalidateSelf();
    }

    @Override // defpackage.InterfaceC0148fi
    public final void setShapeAppearanceModel(Vh vh) {
        this.a.a = vh;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.a.e = colorStateList;
        k();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        Dd dd = this.a;
        if (dd.f != mode) {
            dd.f = mode;
            k();
            super.invalidateSelf();
        }
    }

    public Ed(Context context, AttributeSet attributeSet, int i, int i2) {
        this(Vh.b(context, attributeSet, i, i2).a());
    }

    public Ed(Vh vh) {
        this(new Dd(vh));
    }

    public Ed(Dd dd) {
        Xh xh;
        this.b = new AbstractC0097di[4];
        this.c = new AbstractC0097di[4];
        this.d = new BitSet(8);
        this.f = new Matrix();
        this.g = new Path();
        this.h = new Path();
        this.i = new RectF();
        this.j = new RectF();
        this.k = new Region();
        this.l = new Region();
        Paint paint = new Paint(1);
        this.n = paint;
        Paint paint2 = new Paint(1);
        this.o = paint2;
        new Th();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            xh = Wh.a;
        } else {
            xh = new Xh();
        }
        this.q = xh;
        this.t = new RectF();
        this.a = dd;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        k();
        j(getState());
        this.p = new L(20, this);
    }
}
