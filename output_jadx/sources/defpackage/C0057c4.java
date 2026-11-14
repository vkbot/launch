package defpackage;

import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import java.util.WeakHashMap;

/* renamed from: c4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0057c4 extends Property {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0057c4(Class cls, String str, int i) {
        super(cls, str);
        this.a = i;
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.a) {
            case 0:
                return null;
            case 1:
                return null;
            case 2:
                return null;
            case 3:
                return null;
            case 4:
                return null;
            case 5:
                return Float.valueOf(((View) obj).getTransitionAlpha());
            default:
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                return Tm.a((View) obj);
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                C0134f4 c0134f4 = (C0134f4) obj;
                PointF pointF = (PointF) obj2;
                c0134f4.getClass();
                c0134f4.a = Math.round(pointF.x);
                int round = Math.round(pointF.y);
                c0134f4.b = round;
                int i = c0134f4.f + 1;
                c0134f4.f = i;
                if (i == c0134f4.g) {
                    int i2 = c0134f4.a;
                    int i3 = c0134f4.c;
                    int i4 = c0134f4.d;
                    C0057c4 c0057c4 = Cn.a;
                    c0134f4.e.setLeftTopRightBottom(i2, round, i3, i4);
                    c0134f4.f = 0;
                    c0134f4.g = 0;
                    return;
                }
                return;
            case 1:
                C0134f4 c0134f42 = (C0134f4) obj;
                PointF pointF2 = (PointF) obj2;
                c0134f42.getClass();
                c0134f42.c = Math.round(pointF2.x);
                int round2 = Math.round(pointF2.y);
                c0134f42.d = round2;
                int i5 = c0134f42.g + 1;
                c0134f42.g = i5;
                if (c0134f42.f == i5) {
                    int i6 = c0134f42.a;
                    int i7 = c0134f42.b;
                    int i8 = c0134f42.c;
                    C0057c4 c0057c42 = Cn.a;
                    c0134f42.e.setLeftTopRightBottom(i6, i7, i8, round2);
                    c0134f42.f = 0;
                    c0134f42.g = 0;
                    return;
                }
                return;
            case 2:
                View view = (View) obj;
                PointF pointF3 = (PointF) obj2;
                int left = view.getLeft();
                int top = view.getTop();
                int round3 = Math.round(pointF3.x);
                int round4 = Math.round(pointF3.y);
                C0057c4 c0057c43 = Cn.a;
                view.setLeftTopRightBottom(left, top, round3, round4);
                return;
            case 3:
                View view2 = (View) obj;
                PointF pointF4 = (PointF) obj2;
                int round5 = Math.round(pointF4.x);
                int round6 = Math.round(pointF4.y);
                int right = view2.getRight();
                int bottom = view2.getBottom();
                C0057c4 c0057c44 = Cn.a;
                view2.setLeftTopRightBottom(round5, round6, right, bottom);
                return;
            case 4:
                View view3 = (View) obj;
                PointF pointF5 = (PointF) obj2;
                int round7 = Math.round(pointF5.x);
                int round8 = Math.round(pointF5.y);
                int width = view3.getWidth() + round7;
                int height = view3.getHeight() + round8;
                C0057c4 c0057c45 = Cn.a;
                view3.setLeftTopRightBottom(round7, round8, width, height);
                return;
            case 5:
                ((View) obj).setTransitionAlpha(((Float) obj2).floatValue());
                return;
            default:
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                Tm.c((View) obj, (Rect) obj2);
                return;
        }
    }
}
