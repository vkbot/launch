package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* renamed from: j2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0235j2 {
    public final TextView a;
    public C0484sk b;
    public C0484sk c;
    public C0484sk d;
    public C0484sk e;
    public C0484sk f;
    public C0484sk g;
    public C0484sk h;
    public final C0391p2 i;
    public int j = 0;
    public int k = -1;
    public Typeface l;
    public boolean m;

    public C0235j2(TextView textView) {
        this.a = textView;
        this.i = new C0391p2(textView);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [sk, java.lang.Object] */
    public static C0484sk c(Context context, B1 b1, int i) {
        ColorStateList f;
        synchronized (b1) {
            f = b1.a.f(context, i);
        }
        if (f == null) {
            return null;
        }
        ?? obj = new Object();
        obj.d = true;
        obj.a = f;
        return obj;
    }

    public static void h(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30 || inputConnection == null) {
            return;
        }
        CharSequence text = textView.getText();
        if (i >= 30) {
            U7.a(editorInfo, text);
            return;
        }
        text.getClass();
        if (i >= 30) {
            U7.a(editorInfo, text);
            return;
        }
        int i2 = editorInfo.initialSelStart;
        int i3 = editorInfo.initialSelEnd;
        int i4 = i2 > i3 ? i3 : i2;
        if (i2 <= i3) {
            i2 = i3;
        }
        int length = text.length();
        if (i4 < 0 || i2 > length) {
            AbstractC0348nb.b0(editorInfo, null, 0, 0);
            return;
        }
        int i5 = editorInfo.inputType & 4095;
        if (i5 == 129 || i5 == 225 || i5 == 18) {
            AbstractC0348nb.b0(editorInfo, null, 0, 0);
            return;
        }
        if (length <= 2048) {
            AbstractC0348nb.b0(editorInfo, text, i4, i2);
            return;
        }
        int i6 = i2 - i4;
        int i7 = i6 > 1024 ? 0 : i6;
        int i8 = 2048 - i7;
        int min = Math.min(text.length() - i2, i8 - Math.min(i4, (int) (i8 * 0.8d)));
        int min2 = Math.min(i4, i8 - min);
        int i9 = i4 - min2;
        if (Character.isLowSurrogate(text.charAt(i9))) {
            i9++;
            min2--;
        }
        if (Character.isHighSurrogate(text.charAt((i2 + min) - 1))) {
            min--;
        }
        int i10 = min2 + i7;
        AbstractC0348nb.b0(editorInfo, i7 != i6 ? TextUtils.concat(text.subSequence(i9, i9 + min2), text.subSequence(i2, min + i2)) : text.subSequence(i9, i10 + min + i9), min2, i10);
    }

    public final void a(Drawable drawable, C0484sk c0484sk) {
        if (drawable == null || c0484sk == null) {
            return;
        }
        B1.e(drawable, c0484sk, this.a.getDrawableState());
    }

    public final void b() {
        C0484sk c0484sk = this.b;
        TextView textView = this.a;
        if (c0484sk != null || this.c != null || this.d != null || this.e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.c);
            a(compoundDrawables[2], this.d);
            a(compoundDrawables[3], this.e);
        }
        if (this.f == null && this.g == null) {
            return;
        }
        Drawable[] a = AbstractC0132f2.a(textView);
        a(a[0], this.f);
        a(a[2], this.g);
    }

    public final ColorStateList d() {
        C0484sk c0484sk = this.h;
        if (c0484sk != null) {
            return c0484sk.a;
        }
        return null;
    }

    public final PorterDuff.Mode e() {
        C0484sk c0484sk = this.h;
        if (c0484sk != null) {
            return c0484sk.b;
        }
        return null;
    }

    public final void f(AttributeSet attributeSet, int i) {
        boolean z;
        boolean z2;
        String str;
        String str2;
        boolean z3;
        int i2;
        int i3;
        ColorStateList colorStateList;
        int resourceId;
        int i4;
        int resourceId2;
        TextView textView = this.a;
        Context context = textView.getContext();
        B1 a = B1.a();
        int[] iArr = Zf.h;
        C0491t2 q = C0491t2.q(context, attributeSet, iArr, i);
        Context context2 = textView.getContext();
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        AbstractC0076cn.d(textView, context2, iArr, attributeSet, (TypedArray) q.a, i, 0);
        TypedArray typedArray = (TypedArray) q.a;
        int resourceId3 = typedArray.getResourceId(0, -1);
        if (typedArray.hasValue(3)) {
            this.b = c(context, a, typedArray.getResourceId(3, 0));
        }
        if (typedArray.hasValue(1)) {
            this.c = c(context, a, typedArray.getResourceId(1, 0));
        }
        if (typedArray.hasValue(4)) {
            this.d = c(context, a, typedArray.getResourceId(4, 0));
        }
        if (typedArray.hasValue(2)) {
            this.e = c(context, a, typedArray.getResourceId(2, 0));
        }
        if (typedArray.hasValue(5)) {
            this.f = c(context, a, typedArray.getResourceId(5, 0));
        }
        if (typedArray.hasValue(6)) {
            this.g = c(context, a, typedArray.getResourceId(6, 0));
        }
        q.r();
        boolean z4 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        int[] iArr2 = Zf.w;
        if (resourceId3 != -1) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(resourceId3, iArr2);
            C0491t2 c0491t2 = new C0491t2(context, obtainStyledAttributes);
            if (z4 || !obtainStyledAttributes.hasValue(14)) {
                z = false;
                z2 = false;
            } else {
                z2 = obtainStyledAttributes.getBoolean(14, false);
                z = true;
            }
            k(context, c0491t2);
            str2 = obtainStyledAttributes.hasValue(15) ? obtainStyledAttributes.getString(15) : null;
            str = obtainStyledAttributes.hasValue(13) ? obtainStyledAttributes.getString(13) : null;
            c0491t2.r();
        } else {
            z = false;
            z2 = false;
            str = null;
            str2 = null;
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i, 0);
        C0491t2 c0491t22 = new C0491t2(context, obtainStyledAttributes2);
        if (z4 || !obtainStyledAttributes2.hasValue(14)) {
            z3 = z2;
        } else {
            z3 = obtainStyledAttributes2.getBoolean(14, false);
            z = true;
        }
        if (obtainStyledAttributes2.hasValue(15)) {
            str2 = obtainStyledAttributes2.getString(15);
        }
        if (obtainStyledAttributes2.hasValue(13)) {
            str = obtainStyledAttributes2.getString(13);
        }
        if (obtainStyledAttributes2.hasValue(0) && obtainStyledAttributes2.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        k(context, c0491t22);
        c0491t22.r();
        if (!z4 && z) {
            textView.setAllCaps(z3);
        }
        Typeface typeface = this.l;
        if (typeface != null) {
            if (this.k == -1) {
                textView.setTypeface(typeface, this.j);
            } else {
                textView.setTypeface(typeface);
            }
        }
        if (str != null) {
            AbstractC0184h2.d(textView, str);
        }
        if (str2 != null) {
            AbstractC0158g2.b(textView, AbstractC0158g2.a(str2));
        }
        int[] iArr3 = Zf.i;
        C0391p2 c0391p2 = this.i;
        Context context3 = c0391p2.h;
        TypedArray obtainStyledAttributes3 = context3.obtainStyledAttributes(attributeSet, iArr3, i, 0);
        TextView textView2 = c0391p2.g;
        AbstractC0076cn.d(textView2, textView2.getContext(), iArr3, attributeSet, obtainStyledAttributes3, i, 0);
        if (obtainStyledAttributes3.hasValue(5)) {
            c0391p2.a = obtainStyledAttributes3.getInt(5, 0);
        }
        float dimension = obtainStyledAttributes3.hasValue(4) ? obtainStyledAttributes3.getDimension(4, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes3.hasValue(2) ? obtainStyledAttributes3.getDimension(2, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes3.hasValue(1) ? obtainStyledAttributes3.getDimension(1, -1.0f) : -1.0f;
        if (obtainStyledAttributes3.hasValue(3) && (resourceId2 = obtainStyledAttributes3.getResourceId(3, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes3.getResources().obtainTypedArray(resourceId2);
            int length = obtainTypedArray.length();
            int[] iArr4 = new int[length];
            if (length > 0) {
                for (int i5 = 0; i5 < length; i5++) {
                    iArr4[i5] = obtainTypedArray.getDimensionPixelSize(i5, -1);
                }
                int[] a2 = C0391p2.a(iArr4);
                c0391p2.e = a2;
                boolean z5 = a2.length > 0;
                c0391p2.f = z5;
                if (z5) {
                    c0391p2.a = 1;
                    c0391p2.c = a2[0];
                    c0391p2.d = a2[r9 - 1];
                    c0391p2.b = -1.0f;
                }
            }
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes3.recycle();
        if (!c0391p2.b()) {
            c0391p2.a = 0;
        } else if (c0391p2.a == 1) {
            if (!c0391p2.f) {
                DisplayMetrics displayMetrics = context3.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    i4 = 2;
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                } else {
                    i4 = 2;
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(i4, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                if (dimension2 <= 0.0f) {
                    throw new IllegalArgumentException("Minimum auto-size text size (" + dimension2 + "px) is less or equal to (0px)");
                }
                if (dimension3 <= dimension2) {
                    throw new IllegalArgumentException("Maximum auto-size text size (" + dimension3 + "px) is less or equal to minimum auto-size text size (" + dimension2 + "px)");
                }
                if (dimension <= 0.0f) {
                    throw new IllegalArgumentException("The auto-size step granularity (" + dimension + "px) is less or equal to (0px)");
                }
                c0391p2.a = 1;
                c0391p2.c = dimension2;
                c0391p2.d = dimension3;
                c0391p2.b = dimension;
                c0391p2.f = false;
            }
            if (c0391p2.b() && c0391p2.a == 1 && (!c0391p2.f || c0391p2.e.length == 0)) {
                int floor = ((int) Math.floor((c0391p2.d - c0391p2.c) / c0391p2.b)) + 1;
                int[] iArr5 = new int[floor];
                for (int i6 = 0; i6 < floor; i6++) {
                    iArr5[i6] = Math.round((i6 * c0391p2.b) + c0391p2.c);
                }
                c0391p2.e = C0391p2.a(iArr5);
            }
        }
        Method method = Dn.a;
        if (c0391p2.a != 0) {
            int[] iArr6 = c0391p2.e;
            if (iArr6.length > 0) {
                if (AbstractC0184h2.a(textView) != -1.0f) {
                    AbstractC0184h2.b(textView, Math.round(c0391p2.c), Math.round(c0391p2.d), Math.round(c0391p2.b), 0);
                } else {
                    AbstractC0184h2.c(textView, iArr6, 0);
                }
            }
        }
        TypedArray obtainStyledAttributes4 = context.obtainStyledAttributes(attributeSet, iArr3);
        int resourceId4 = obtainStyledAttributes4.getResourceId(8, -1);
        Drawable b = resourceId4 != -1 ? a.b(context, resourceId4) : null;
        int resourceId5 = obtainStyledAttributes4.getResourceId(13, -1);
        Drawable b2 = resourceId5 != -1 ? a.b(context, resourceId5) : null;
        int resourceId6 = obtainStyledAttributes4.getResourceId(9, -1);
        Drawable b3 = resourceId6 != -1 ? a.b(context, resourceId6) : null;
        int resourceId7 = obtainStyledAttributes4.getResourceId(6, -1);
        Drawable b4 = resourceId7 != -1 ? a.b(context, resourceId7) : null;
        int resourceId8 = obtainStyledAttributes4.getResourceId(10, -1);
        Drawable b5 = resourceId8 != -1 ? a.b(context, resourceId8) : null;
        int resourceId9 = obtainStyledAttributes4.getResourceId(7, -1);
        Drawable b6 = resourceId9 != -1 ? a.b(context, resourceId9) : null;
        if (b5 != null || b6 != null) {
            Drawable[] a3 = AbstractC0132f2.a(textView);
            if (b5 == null) {
                b5 = a3[0];
            }
            if (b2 == null) {
                b2 = a3[1];
            }
            if (b6 == null) {
                b6 = a3[2];
            }
            if (b4 == null) {
                b4 = a3[3];
            }
            AbstractC0132f2.b(textView, b5, b2, b6, b4);
        } else if (b != null || b2 != null || b3 != null || b4 != null) {
            Drawable[] a4 = AbstractC0132f2.a(textView);
            Drawable drawable = a4[0];
            if (drawable == null && a4[2] == null) {
                Drawable[] compoundDrawables = textView.getCompoundDrawables();
                if (b == null) {
                    b = compoundDrawables[0];
                }
                if (b2 == null) {
                    b2 = compoundDrawables[1];
                }
                if (b3 == null) {
                    b3 = compoundDrawables[2];
                }
                if (b4 == null) {
                    b4 = compoundDrawables[3];
                }
                textView.setCompoundDrawablesWithIntrinsicBounds(b, b2, b3, b4);
            } else {
                if (b2 == null) {
                    b2 = a4[1];
                }
                Drawable drawable2 = a4[2];
                if (b4 == null) {
                    b4 = a4[3];
                }
                AbstractC0132f2.b(textView, drawable, b2, drawable2, b4);
            }
        }
        if (obtainStyledAttributes4.hasValue(11)) {
            if (!obtainStyledAttributes4.hasValue(11) || (resourceId = obtainStyledAttributes4.getResourceId(11, 0)) == 0 || (colorStateList = AbstractC0152fm.m(context, resourceId)) == null) {
                colorStateList = obtainStyledAttributes4.getColorStateList(11);
            }
            Rj.f(textView, colorStateList);
        }
        if (obtainStyledAttributes4.hasValue(12)) {
            i2 = -1;
            Rj.g(textView, D7.b(obtainStyledAttributes4.getInt(12, -1), null));
        } else {
            i2 = -1;
        }
        int dimensionPixelSize = obtainStyledAttributes4.getDimensionPixelSize(15, i2);
        int dimensionPixelSize2 = obtainStyledAttributes4.getDimensionPixelSize(18, i2);
        int dimensionPixelSize3 = obtainStyledAttributes4.getDimensionPixelSize(19, i2);
        obtainStyledAttributes4.recycle();
        if (dimensionPixelSize != i2) {
            AbstractC0145ff.e(dimensionPixelSize);
            Sj.d(textView, dimensionPixelSize);
        }
        if (dimensionPixelSize2 != i2) {
            AbstractC0145ff.e(dimensionPixelSize2);
            Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
            int i7 = Pj.a(textView) ? fontMetricsInt.bottom : fontMetricsInt.descent;
            if (dimensionPixelSize2 > Math.abs(i7)) {
                textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), dimensionPixelSize2 - i7);
            }
            i3 = -1;
        } else {
            i3 = i2;
        }
        if (dimensionPixelSize3 != i3) {
            AbstractC0145ff.e(dimensionPixelSize3);
            if (dimensionPixelSize3 != textView.getPaint().getFontMetricsInt(null)) {
                textView.setLineSpacing(dimensionPixelSize3 - r0, 1.0f);
            }
        }
    }

    public final void g(Context context, int i) {
        String string;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, Zf.w);
        C0491t2 c0491t2 = new C0491t2(context, obtainStyledAttributes);
        boolean hasValue = obtainStyledAttributes.hasValue(14);
        TextView textView = this.a;
        if (hasValue) {
            textView.setAllCaps(obtainStyledAttributes.getBoolean(14, false));
        }
        if (obtainStyledAttributes.hasValue(0) && obtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        k(context, c0491t2);
        if (obtainStyledAttributes.hasValue(13) && (string = obtainStyledAttributes.getString(13)) != null) {
            AbstractC0184h2.d(textView, string);
        }
        c0491t2.r();
        Typeface typeface = this.l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.j);
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [sk, java.lang.Object] */
    public final void i(ColorStateList colorStateList) {
        if (this.h == null) {
            this.h = new Object();
        }
        C0484sk c0484sk = this.h;
        c0484sk.a = colorStateList;
        c0484sk.d = colorStateList != null;
        this.b = c0484sk;
        this.c = c0484sk;
        this.d = c0484sk;
        this.e = c0484sk;
        this.f = c0484sk;
        this.g = c0484sk;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [sk, java.lang.Object] */
    public final void j(PorterDuff.Mode mode) {
        if (this.h == null) {
            this.h = new Object();
        }
        C0484sk c0484sk = this.h;
        c0484sk.b = mode;
        c0484sk.c = mode != null;
        this.b = c0484sk;
        this.c = c0484sk;
        this.d = c0484sk;
        this.e = c0484sk;
        this.f = c0484sk;
        this.g = c0484sk;
    }

    public final void k(Context context, C0491t2 c0491t2) {
        String string;
        int i = this.j;
        TypedArray typedArray = (TypedArray) c0491t2.a;
        this.j = typedArray.getInt(2, i);
        int i2 = typedArray.getInt(11, -1);
        this.k = i2;
        if (i2 != -1) {
            this.j &= 2;
        }
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.m = false;
                int i3 = typedArray.getInt(1, 1);
                if (i3 == 1) {
                    this.l = Typeface.SANS_SERIF;
                    return;
                } else if (i3 == 2) {
                    this.l = Typeface.SERIF;
                    return;
                } else {
                    if (i3 != 3) {
                        return;
                    }
                    this.l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.l = null;
        int i4 = typedArray.hasValue(12) ? 12 : 10;
        int i5 = this.k;
        int i6 = this.j;
        if (!context.isRestricted()) {
            try {
                Typeface j = c0491t2.j(i4, this.j, new C0081d2(this, i5, i6, new WeakReference(this.a)));
                if (j != null) {
                    if (this.k != -1) {
                        this.l = AbstractC0210i2.a(Typeface.create(j, 0), this.k, (this.j & 2) != 0);
                    } else {
                        this.l = j;
                    }
                }
                this.m = this.l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.l != null || (string = typedArray.getString(i4)) == null) {
            return;
        }
        if (this.k != -1) {
            this.l = AbstractC0210i2.a(Typeface.create(string, 0), this.k, (this.j & 2) != 0);
        } else {
            this.l = Typeface.create(string, this.j);
        }
    }
}
