package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class G1 {
    public int a;
    public final Object b;
    public Object c;

    public G1(ImageView imageView) {
        this.a = 0;
        this.b = imageView;
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x01c8, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r3.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.G1 b(android.content.res.Resources r29, int r30, android.content.res.Resources.Theme r31) {
        /*
            Method dump skipped, instructions count: 659
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.G1.b(android.content.res.Resources, int, android.content.res.Resources$Theme):G1");
    }

    public void a() {
        C0484sk c0484sk;
        ImageView imageView = (ImageView) this.b;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            D7.a(drawable);
        }
        if (drawable == null || (c0484sk = (C0484sk) this.c) == null) {
            return;
        }
        B1.e(drawable, c0484sk, imageView.getDrawableState());
    }

    public boolean c() {
        ColorStateList colorStateList;
        return ((Shader) this.b) == null && (colorStateList = (ColorStateList) this.c) != null && colorStateList.isStateful();
    }

    public void d(AttributeSet attributeSet, int i) {
        int resourceId;
        ImageView imageView = (ImageView) this.b;
        Context context = imageView.getContext();
        int[] iArr = Zf.f;
        C0491t2 q = C0491t2.q(context, attributeSet, iArr, i);
        Context context2 = imageView.getContext();
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        AbstractC0076cn.d(imageView, context2, iArr, attributeSet, (TypedArray) q.a, i, 0);
        try {
            Drawable drawable = imageView.getDrawable();
            TypedArray typedArray = (TypedArray) q.a;
            if (drawable == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable = C6.n(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                D7.a(drawable);
            }
            if (typedArray.hasValue(2)) {
                Oa.c(imageView, q.g(2));
            }
            if (typedArray.hasValue(3)) {
                Oa.d(imageView, D7.b(typedArray.getInt(3, -1), null));
            }
            q.r();
        } catch (Throwable th) {
            q.r();
            throw th;
        }
    }

    public G1(Shader shader, ColorStateList colorStateList, int i) {
        this.b = shader;
        this.c = colorStateList;
        this.a = i;
    }

    public G1(int i, Integer num, Rect rect) {
        this.a = i;
        this.b = num;
        this.c = rect;
    }
}
