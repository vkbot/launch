package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import java.util.WeakHashMap;

/* renamed from: g4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0160g4 extends Xl {
    public static final C0057c4 A;
    public static final C0057c4 B;
    public static final String[] w = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    public static final C0057c4 x;
    public static final C0057c4 y;
    public static final C0057c4 z;

    /* JADX WARN: Type inference failed for: r0v2, types: [b4, android.util.Property] */
    static {
        new Property(PointF.class, "boundsOrigin").a = new Rect();
        x = new C0057c4(PointF.class, "topLeft", 0);
        y = new C0057c4(PointF.class, "bottomRight", 1);
        z = new C0057c4(PointF.class, "bottomRight", 2);
        A = new C0057c4(PointF.class, "topLeft", 3);
        B = new C0057c4(PointF.class, "position", 4);
    }

    public static void F(C0075cm c0075cm) {
        View view = c0075cm.b;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        if (!Um.c(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        HashMap hashMap = c0075cm.a;
        hashMap.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        hashMap.put("android:changeBounds:parent", c0075cm.b.getParent());
    }

    @Override // defpackage.Xl
    public final void c(C0075cm c0075cm) {
        F(c0075cm);
    }

    @Override // defpackage.Xl
    public final void f(C0075cm c0075cm) {
        F(c0075cm);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.lang.Object, f4] */
    @Override // defpackage.Xl
    public final Animator j(ViewGroup viewGroup, C0075cm c0075cm, C0075cm c0075cm2) {
        int i;
        C0160g4 c0160g4;
        ObjectAnimator ofObject;
        if (c0075cm == null || c0075cm2 == null) {
            return null;
        }
        HashMap hashMap = c0075cm.a;
        HashMap hashMap2 = c0075cm2.a;
        ViewGroup viewGroup2 = (ViewGroup) hashMap.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) hashMap2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        Rect rect = (Rect) hashMap.get("android:changeBounds:bounds");
        Rect rect2 = (Rect) hashMap2.get("android:changeBounds:bounds");
        int i2 = rect.left;
        int i3 = rect2.left;
        int i4 = rect.top;
        int i5 = rect2.top;
        int i6 = rect.right;
        int i7 = rect2.right;
        int i8 = rect.bottom;
        int i9 = rect2.bottom;
        int i10 = i6 - i2;
        int i11 = i8 - i4;
        int i12 = i7 - i3;
        int i13 = i9 - i5;
        Rect rect3 = (Rect) hashMap.get("android:changeBounds:clip");
        Rect rect4 = (Rect) hashMap2.get("android:changeBounds:clip");
        if ((i10 == 0 || i11 == 0) && (i12 == 0 || i13 == 0)) {
            i = 0;
        } else {
            i = (i2 == i3 && i4 == i5) ? 0 : 1;
            if (i6 != i7 || i8 != i9) {
                i++;
            }
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i++;
        }
        if (i <= 0) {
            return null;
        }
        C0057c4 c0057c4 = Cn.a;
        View view = c0075cm2.b;
        view.setLeftTopRightBottom(i2, i4, i6, i8);
        if (i != 2) {
            c0160g4 = this;
            if (i2 == i3 && i4 == i5) {
                c0160g4.s.getClass();
                ofObject = ObjectAnimator.ofObject(view, z, (TypeConverter) null, Of.d(i6, i8, i7, i9));
            } else {
                c0160g4.s.getClass();
                ofObject = ObjectAnimator.ofObject(view, A, (TypeConverter) null, Of.d(i2, i4, i3, i5));
            }
        } else if (i10 == i12 && i11 == i13) {
            c0160g4 = this;
            c0160g4.s.getClass();
            ofObject = ObjectAnimator.ofObject(view, B, (TypeConverter) null, Of.d(i2, i4, i3, i5));
        } else {
            c0160g4 = this;
            ?? obj = new Object();
            obj.e = view;
            c0160g4.s.getClass();
            ObjectAnimator ofObject2 = ObjectAnimator.ofObject(obj, x, (TypeConverter) null, Of.d(i2, i4, i3, i5));
            c0160g4.s.getClass();
            ObjectAnimator ofObject3 = ObjectAnimator.ofObject(obj, y, (TypeConverter) null, Of.d(i6, i8, i7, i9));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofObject2, ofObject3);
            animatorSet.addListener(new C0083d4(obj));
            ofObject = animatorSet;
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            viewGroup4.suppressLayout(true);
            c0160g4.a(new C0108e4(viewGroup4));
        }
        return ofObject;
    }

    @Override // defpackage.Xl
    public final String[] o() {
        return w;
    }
}
