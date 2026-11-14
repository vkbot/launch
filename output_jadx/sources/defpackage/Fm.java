package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import java.util.ArrayDeque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class Fm extends AbstractC0586wm {
    public static final PorterDuff.Mode j = PorterDuff.Mode.SRC_IN;
    public Dm b;
    public PorterDuffColorFilter c;
    public ColorFilter d;
    public boolean e;
    public boolean f;
    public final float[] g;
    public final Matrix h;
    public final Rect i;

    /* JADX WARN: Type inference failed for: r0v5, types: [android.graphics.drawable.Drawable$ConstantState, Dm] */
    public Fm() {
        this.f = true;
        this.g = new float[9];
        this.h = new Matrix();
        this.i = new Rect();
        ?? constantState = new Drawable.ConstantState();
        constantState.c = null;
        constantState.d = j;
        constantState.b = new Cm();
        this.b = constantState;
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.a;
        if (drawable == null) {
            return false;
        }
        B7.b(drawable);
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect = this.i;
        copyBounds(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.d;
        if (colorFilter == null) {
            colorFilter = this.c;
        }
        Matrix matrix = this.h;
        canvas.getMatrix(matrix);
        float[] fArr = this.g;
        matrix.getValues(fArr);
        float abs = Math.abs(fArr[0]);
        float abs2 = Math.abs(fArr[4]);
        float abs3 = Math.abs(fArr[1]);
        float abs4 = Math.abs(fArr[3]);
        if (abs3 != 0.0f || abs4 != 0.0f) {
            abs = 1.0f;
            abs2 = 1.0f;
        }
        int width = (int) (rect.width() * abs);
        int min = Math.min(2048, width);
        int min2 = Math.min(2048, (int) (rect.height() * abs2));
        if (min <= 0 || min2 <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(rect.left, rect.top);
        if (isAutoMirrored() && C7.a(this) == 1) {
            canvas.translate(rect.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        rect.offsetTo(0, 0);
        Dm dm = this.b;
        Bitmap bitmap = dm.f;
        if (bitmap == null || min != bitmap.getWidth() || min2 != dm.f.getHeight()) {
            dm.f = Bitmap.createBitmap(min, min2, Bitmap.Config.ARGB_8888);
            dm.k = true;
        }
        if (this.f) {
            Dm dm2 = this.b;
            if (dm2.k || dm2.g != dm2.c || dm2.h != dm2.d || dm2.j != dm2.e || dm2.i != dm2.b.getRootAlpha()) {
                Dm dm3 = this.b;
                dm3.f.eraseColor(0);
                Canvas canvas2 = new Canvas(dm3.f);
                Cm cm = dm3.b;
                cm.a(cm.g, Cm.p, canvas2, min, min2);
                Dm dm4 = this.b;
                dm4.g = dm4.c;
                dm4.h = dm4.d;
                dm4.i = dm4.b.getRootAlpha();
                dm4.j = dm4.e;
                dm4.k = false;
            }
        } else {
            Dm dm5 = this.b;
            dm5.f.eraseColor(0);
            Canvas canvas3 = new Canvas(dm5.f);
            Cm cm2 = dm5.b;
            cm2.a(cm2.g, Cm.p, canvas3, min, min2);
        }
        Dm dm6 = this.b;
        if (dm6.b.getRootAlpha() >= 255 && colorFilter == null) {
            paint = null;
        } else {
            if (dm6.l == null) {
                Paint paint2 = new Paint();
                dm6.l = paint2;
                paint2.setFilterBitmap(true);
            }
            dm6.l.setAlpha(dm6.b.getRootAlpha());
            dm6.l.setColorFilter(colorFilter);
            paint = dm6.l;
        }
        canvas.drawBitmap(dm6.f, (Rect) null, rect, paint);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.a;
        return drawable != null ? A7.a(drawable) : this.b.b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return this.b.getChangingConfigurations() | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.a;
        return drawable != null ? B7.c(drawable) : this.d;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.a != null) {
            return new Em(this.a.getConstantState());
        }
        this.b.a = getChangingConfigurations();
        return this.b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.b.b.i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.b.b.h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.a;
        return drawable != null ? A7.d(drawable) : this.b.e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (!super.isStateful()) {
            Dm dm = this.b;
            if (dm != null) {
                Cm cm = dm.b;
                if (cm.n == null) {
                    cm.n = Boolean.valueOf(cm.g.a());
                }
                if (cm.n.booleanValue() || ((colorStateList = this.b.c) != null && colorStateList.isStateful())) {
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.graphics.drawable.Drawable$ConstantState, Dm] */
    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.e && super.mutate() == this) {
            Dm dm = this.b;
            ?? constantState = new Drawable.ConstantState();
            constantState.c = null;
            constantState.d = j;
            if (dm != null) {
                constantState.a = dm.a;
                Cm cm = new Cm(dm.b);
                constantState.b = cm;
                if (dm.b.e != null) {
                    cm.e = new Paint(dm.b.e);
                }
                if (dm.b.d != null) {
                    constantState.b.d = new Paint(dm.b.d);
                }
                constantState.c = dm.c;
                constantState.d = dm.d;
                constantState.e = dm.e;
            }
            this.b = constantState;
            this.e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z;
        PorterDuff.Mode mode;
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Dm dm = this.b;
        ColorStateList colorStateList = dm.c;
        if (colorStateList == null || (mode = dm.d) == null) {
            z = false;
        } else {
            this.c = a(colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        Cm cm = dm.b;
        if (cm.n == null) {
            cm.n = Boolean.valueOf(cm.g.a());
        }
        if (cm.n.booleanValue()) {
            boolean b = dm.b.g.b(iArr);
            dm.k |= b;
            if (b) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j2) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.b.b.getRootAlpha() != i) {
            this.b.b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.a;
        if (drawable != null) {
            A7.e(drawable, z);
        } else {
            this.b.e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.d = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = this.a;
        if (drawable != null) {
            AbstractC0348nb.c0(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.a;
        if (drawable != null) {
            B7.h(drawable, colorStateList);
            return;
        }
        Dm dm = this.b;
        if (dm.c != colorStateList) {
            dm.c = colorStateList;
            this.c = a(colorStateList, dm.d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.a;
        if (drawable != null) {
            B7.i(drawable, mode);
            return;
        }
        Dm dm = this.b;
        if (dm.d != mode) {
            dm.d = mode;
            this.c = a(dm.c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.a;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v19, types: [ym, java.lang.Object, Bm] */
    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        Cm cm;
        int i;
        int i2;
        boolean z;
        int i3;
        boolean z2;
        Paint.Join join;
        Paint.Cap cap;
        Paint.Join join2;
        Drawable drawable = this.a;
        if (drawable != null) {
            B7.d(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        Dm dm = this.b;
        dm.b = new Cm();
        TypedArray l = AbstractC0171gf.l(resources, theme, attributeSet, C6.a);
        Dm dm2 = this.b;
        Cm cm2 = dm2.b;
        int i4 = !AbstractC0171gf.i(xmlPullParser, "tintMode") ? -1 : l.getInt(6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        int i5 = 3;
        if (i4 == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (i4 != 5) {
            if (i4 != 9) {
                switch (i4) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        dm2.d = mode;
        int i6 = 1;
        ColorStateList colorStateList = null;
        boolean z3 = false;
        if (AbstractC0171gf.i(xmlPullParser, "tint")) {
            TypedValue typedValue = new TypedValue();
            l.getValue(1, typedValue);
            int i7 = typedValue.type;
            if (i7 == 2) {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            }
            if (i7 >= 28 && i7 <= 31) {
                colorStateList = ColorStateList.valueOf(typedValue.data);
            } else {
                Resources resources2 = l.getResources();
                int resourceId = l.getResourceId(1, 0);
                ThreadLocal threadLocal = T4.a;
                try {
                    colorStateList = T4.a(resources2, resources2.getXml(resourceId), theme);
                } catch (Exception e) {
                    Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
                }
            }
        }
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList2 != null) {
            dm2.c = colorStateList2;
        }
        boolean z4 = dm2.e;
        if (AbstractC0171gf.i(xmlPullParser, "autoMirrored")) {
            z4 = l.getBoolean(5, z4);
        }
        dm2.e = z4;
        float f = cm2.j;
        if (AbstractC0171gf.i(xmlPullParser, "viewportWidth")) {
            f = l.getFloat(7, f);
        }
        cm2.j = f;
        float f2 = cm2.k;
        if (AbstractC0171gf.i(xmlPullParser, "viewportHeight")) {
            f2 = l.getFloat(8, f2);
        }
        cm2.k = f2;
        if (cm2.j <= 0.0f) {
            throw new XmlPullParserException(l.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f2 > 0.0f) {
            cm2.h = l.getDimension(3, cm2.h);
            float dimension = l.getDimension(2, cm2.i);
            cm2.i = dimension;
            if (cm2.h <= 0.0f) {
                throw new XmlPullParserException(l.getPositionDescription() + "<vector> tag requires width > 0");
            }
            if (dimension > 0.0f) {
                float alpha = cm2.getAlpha();
                if (AbstractC0171gf.i(xmlPullParser, "alpha")) {
                    alpha = l.getFloat(4, alpha);
                }
                cm2.setAlpha(alpha);
                String string = l.getString(0);
                if (string != null) {
                    cm2.m = string;
                    cm2.o.put(string, cm2);
                }
                l.recycle();
                dm.a = getChangingConfigurations();
                dm.k = true;
                Dm dm3 = this.b;
                Cm cm3 = dm3.b;
                ArrayDeque arrayDeque = new ArrayDeque();
                arrayDeque.push(cm3.g);
                int eventType = xmlPullParser.getEventType();
                int depth = xmlPullParser.getDepth() + 1;
                boolean z5 = true;
                while (eventType != i6 && (xmlPullParser.getDepth() >= depth || eventType != i5)) {
                    if (eventType == 2) {
                        String name = xmlPullParser.getName();
                        C0661zm c0661zm = (C0661zm) arrayDeque.peek();
                        boolean equals = "path".equals(name);
                        i = depth;
                        W2 w2 = cm3.o;
                        if (equals) {
                            ?? bm = new Bm();
                            bm.e = 0.0f;
                            bm.g = 1.0f;
                            bm.h = 1.0f;
                            bm.i = 0.0f;
                            bm.j = 1.0f;
                            bm.k = 0.0f;
                            Paint.Cap cap2 = Paint.Cap.BUTT;
                            bm.l = cap2;
                            Paint.Join join3 = Paint.Join.MITER;
                            bm.m = join3;
                            cm = cm3;
                            bm.n = 4.0f;
                            TypedArray l2 = AbstractC0171gf.l(resources, theme, attributeSet, C6.c);
                            if (AbstractC0171gf.i(xmlPullParser, "pathData")) {
                                String string2 = l2.getString(0);
                                if (string2 != null) {
                                    bm.b = string2;
                                }
                                String string3 = l2.getString(2);
                                if (string3 != null) {
                                    bm.a = AbstractC0145ff.k(string3);
                                }
                                bm.f = AbstractC0171gf.f(l2, xmlPullParser, theme, "fillColor", 1);
                                float f3 = bm.h;
                                if (AbstractC0171gf.i(xmlPullParser, "fillAlpha")) {
                                    f3 = l2.getFloat(12, f3);
                                }
                                bm.h = f3;
                                int i8 = !AbstractC0171gf.i(xmlPullParser, "strokeLineCap") ? -1 : l2.getInt(8, -1);
                                Paint.Cap cap3 = bm.l;
                                if (i8 != 0) {
                                    join = join3;
                                    if (i8 != 1) {
                                        cap = i8 != 2 ? cap3 : Paint.Cap.SQUARE;
                                    } else {
                                        cap = Paint.Cap.ROUND;
                                    }
                                } else {
                                    join = join3;
                                    cap = cap2;
                                }
                                bm.l = cap;
                                int i9 = !AbstractC0171gf.i(xmlPullParser, "strokeLineJoin") ? -1 : l2.getInt(9, -1);
                                Paint.Join join4 = bm.m;
                                if (i9 == 0) {
                                    join2 = join;
                                } else if (i9 != 1) {
                                    join2 = i9 != 2 ? join4 : Paint.Join.BEVEL;
                                } else {
                                    join2 = Paint.Join.ROUND;
                                }
                                bm.m = join2;
                                float f4 = bm.n;
                                if (AbstractC0171gf.i(xmlPullParser, "strokeMiterLimit")) {
                                    f4 = l2.getFloat(10, f4);
                                }
                                bm.n = f4;
                                bm.d = AbstractC0171gf.f(l2, xmlPullParser, theme, "strokeColor", 3);
                                float f5 = bm.g;
                                if (AbstractC0171gf.i(xmlPullParser, "strokeAlpha")) {
                                    f5 = l2.getFloat(11, f5);
                                }
                                bm.g = f5;
                                float f6 = bm.e;
                                if (AbstractC0171gf.i(xmlPullParser, "strokeWidth")) {
                                    f6 = l2.getFloat(4, f6);
                                }
                                bm.e = f6;
                                float f7 = bm.j;
                                if (AbstractC0171gf.i(xmlPullParser, "trimPathEnd")) {
                                    f7 = l2.getFloat(6, f7);
                                }
                                bm.j = f7;
                                float f8 = bm.k;
                                if (AbstractC0171gf.i(xmlPullParser, "trimPathOffset")) {
                                    f8 = l2.getFloat(7, f8);
                                }
                                bm.k = f8;
                                float f9 = bm.i;
                                if (AbstractC0171gf.i(xmlPullParser, "trimPathStart")) {
                                    f9 = l2.getFloat(5, f9);
                                }
                                bm.i = f9;
                                int i10 = bm.c;
                                if (AbstractC0171gf.i(xmlPullParser, "fillType")) {
                                    i10 = l2.getInt(13, i10);
                                }
                                bm.c = i10;
                            }
                            l2.recycle();
                            c0661zm.b.add(bm);
                            if (bm.getPathName() != null) {
                                w2.put(bm.getPathName(), bm);
                            }
                            dm3.a = dm3.a;
                            z2 = false;
                            i2 = 1;
                            z5 = false;
                        } else {
                            cm = cm3;
                            if ("clip-path".equals(name)) {
                                Bm bm2 = new Bm();
                                if (AbstractC0171gf.i(xmlPullParser, "pathData")) {
                                    TypedArray l3 = AbstractC0171gf.l(resources, theme, attributeSet, C6.d);
                                    String string4 = l3.getString(0);
                                    if (string4 != null) {
                                        bm2.b = string4;
                                    }
                                    String string5 = l3.getString(1);
                                    if (string5 != null) {
                                        bm2.a = AbstractC0145ff.k(string5);
                                    }
                                    bm2.c = !AbstractC0171gf.i(xmlPullParser, "fillType") ? 0 : l3.getInt(2, 0);
                                    l3.recycle();
                                }
                                c0661zm.b.add(bm2);
                                if (bm2.getPathName() != null) {
                                    w2.put(bm2.getPathName(), bm2);
                                }
                                dm3.a = dm3.a;
                            } else if ("group".equals(name)) {
                                C0661zm c0661zm2 = new C0661zm();
                                TypedArray l4 = AbstractC0171gf.l(resources, theme, attributeSet, C6.b);
                                float f10 = c0661zm2.c;
                                if (AbstractC0171gf.i(xmlPullParser, "rotation")) {
                                    f10 = l4.getFloat(5, f10);
                                }
                                c0661zm2.c = f10;
                                i2 = 1;
                                c0661zm2.d = l4.getFloat(1, c0661zm2.d);
                                c0661zm2.e = l4.getFloat(2, c0661zm2.e);
                                float f11 = c0661zm2.f;
                                if (AbstractC0171gf.i(xmlPullParser, "scaleX")) {
                                    f11 = l4.getFloat(3, f11);
                                }
                                c0661zm2.f = f11;
                                float f12 = c0661zm2.g;
                                if (AbstractC0171gf.i(xmlPullParser, "scaleY")) {
                                    f12 = l4.getFloat(4, f12);
                                }
                                c0661zm2.g = f12;
                                float f13 = c0661zm2.h;
                                if (AbstractC0171gf.i(xmlPullParser, "translateX")) {
                                    f13 = l4.getFloat(6, f13);
                                }
                                c0661zm2.h = f13;
                                float f14 = c0661zm2.i;
                                if (AbstractC0171gf.i(xmlPullParser, "translateY")) {
                                    f14 = l4.getFloat(7, f14);
                                }
                                c0661zm2.i = f14;
                                z2 = false;
                                String string6 = l4.getString(0);
                                if (string6 != null) {
                                    c0661zm2.k = string6;
                                }
                                c0661zm2.c();
                                l4.recycle();
                                c0661zm.b.add(c0661zm2);
                                arrayDeque.push(c0661zm2);
                                if (c0661zm2.getGroupName() != null) {
                                    w2.put(c0661zm2.getGroupName(), c0661zm2);
                                }
                                dm3.a = dm3.a;
                            }
                            z2 = false;
                            i2 = 1;
                        }
                        z = z2;
                        i3 = 3;
                    } else {
                        cm = cm3;
                        i = depth;
                        i2 = i6;
                        z = z3;
                        i3 = 3;
                        if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                            arrayDeque.pop();
                        }
                    }
                    eventType = xmlPullParser.next();
                    i5 = i3;
                    z3 = z;
                    i6 = i2;
                    depth = i;
                    cm3 = cm;
                }
                if (!z5) {
                    this.c = a(dm.c, dm.d);
                    return;
                }
                throw new XmlPullParserException("no path defined");
            }
            throw new XmlPullParserException(l.getPositionDescription() + "<vector> tag requires height > 0");
        }
        throw new XmlPullParserException(l.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
    }

    public Fm(Dm dm) {
        this.f = true;
        this.g = new float[9];
        this.h = new Matrix();
        this.i = new Rect();
        this.b = dm;
        this.c = a(dm.c, dm.d);
    }
}
