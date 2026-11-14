package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.omoda.launcher.R;
import java.util.WeakHashMap;

/* renamed from: vj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0558vj implements X {
    public static final InterpolatorC0500tb c = new InterpolatorC0500tb(0);
    public static final InterpolatorC0500tb d = new InterpolatorC0500tb(1);
    public int a;
    public final Object b;

    public C0558vj(Context context) {
        int i = F0.i(context, 0);
        this.b = new B0(new ContextThemeWrapper(context, F0.i(context, i)));
        this.a = i;
    }

    public static int b(int i, int i2) {
        int i3;
        int i4 = i & 3158064;
        if (i4 == 0) {
            return i;
        }
        int i5 = i & (~i4);
        if (i2 == 0) {
            i3 = i4 >> 2;
        } else {
            int i6 = i4 >> 1;
            i5 |= (-3158065) & i6;
            i3 = (i6 & 3158064) >> 2;
        }
        return i5 | i3;
    }

    public static int c(int i, int i2) {
        int i3;
        int i4 = i & 789516;
        if (i4 == 0) {
            return i;
        }
        int i5 = i & (~i4);
        if (i2 == 0) {
            i3 = i4 << 2;
        } else {
            int i6 = i4 << 1;
            i5 |= (-789517) & i6;
            i3 = (i6 & 789516) << 2;
        }
        return i5 | i3;
    }

    public void a(RecyclerView recyclerView, Eg eg) {
        AbstractC0348nb.r(recyclerView, "rv");
        AbstractC0348nb.r(eg, "vh");
        View view = eg.a;
        Object tag = view.getTag(R.id.item_touch_helper_previous_elevation);
        if (tag instanceof Float) {
            float floatValue = ((Float) tag).floatValue();
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Xm.s(view, floatValue);
        }
        view.setTag(R.id.item_touch_helper_previous_elevation, null);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        view.setAlpha(1.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [android.widget.ListAdapter] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    public F0 d() {
        B0 b0 = (B0) this.b;
        F0 f0 = new F0(b0.a, this.a);
        View view = b0.e;
        E0 e0 = f0.f;
        if (view != null) {
            e0.n = view;
        } else {
            CharSequence charSequence = b0.d;
            if (charSequence != null) {
                e0.d = charSequence;
                TextView textView = e0.l;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = b0.c;
            if (drawable != null) {
                e0.j = drawable;
                ImageView imageView = e0.k;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    e0.k.setImageDrawable(drawable);
                }
            }
        }
        if (b0.g != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) b0.b.inflate(e0.r, (ViewGroup) null);
            int i = b0.i ? e0.s : e0.t;
            Object obj = b0.g;
            ?? r6 = obj;
            if (obj == null) {
                r6 = new ArrayAdapter(b0.a, i, android.R.id.text1, (Object[]) null);
            }
            e0.o = r6;
            e0.p = b0.j;
            if (b0.h != null) {
                alertController$RecycleListView.setOnItemClickListener(new A0(b0, e0));
            }
            if (b0.i) {
                alertController$RecycleListView.setChoiceMode(1);
            }
            e0.e = alertController$RecycleListView;
        }
        f0.setCancelable(true);
        f0.setCanceledOnTouchOutside(true);
        f0.setOnCancelListener(null);
        f0.setOnDismissListener(null);
        Md md = b0.f;
        if (md != null) {
            f0.setOnKeyListener(md);
        }
        return f0;
    }

    public int e(RecyclerView recyclerView, int i, int i2, long j) {
        if (this.a == -1) {
            this.a = recyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame);
        }
        int interpolation = (int) (c.getInterpolation(j <= 2000 ? ((float) j) / 2000.0f : 1.0f) * ((int) (d.getInterpolation(Math.min(1.0f, (Math.abs(i2) * 1.0f) / i)) * ((int) Math.signum(i2)) * this.a)));
        return interpolation == 0 ? i2 > 0 ? 1 : -1 : interpolation;
    }

    public void f(Canvas canvas, RecyclerView recyclerView, Eg eg, float f, float f2, boolean z) {
        AbstractC0348nb.r(canvas, "c");
        AbstractC0348nb.r(recyclerView, "rv");
        AbstractC0348nb.r(eg, "vh");
        View view = eg.a;
        if (z && view.getTag(R.id.item_touch_helper_previous_elevation) == null) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Float valueOf = Float.valueOf(Xm.i(view));
            int childCount = recyclerView.getChildCount();
            float f3 = 0.0f;
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                if (childAt != view) {
                    WeakHashMap weakHashMap2 = AbstractC0205hn.a;
                    float i2 = Xm.i(childAt);
                    if (i2 > f3) {
                        f3 = i2;
                    }
                }
            }
            Xm.s(view, f3 + 1.0f);
            view.setTag(R.id.item_touch_helper_previous_elevation, valueOf);
        }
        view.setTranslationX(f);
        view.setTranslationY(f2);
        float abs = Math.abs(f2) / view.getHeight();
        if (abs > 1.0f) {
            abs = 1.0f;
        }
        view.setAlpha(1.0f - abs);
    }

    @Override // defpackage.X
    public boolean h(View view) {
        ((BottomSheetBehavior) this.b).B(this.a);
        return true;
    }

    public C0558vj(int i, C0448r9[] c0448r9Arr) {
        this.a = i;
        this.b = c0448r9Arr;
    }

    public C0558vj(C0658zj c0658zj) {
        this.b = c0658zj;
        this.a = -1;
    }

    public C0558vj(BottomSheetBehavior bottomSheetBehavior, int i) {
        this.b = bottomSheetBehavior;
        this.a = i;
    }
}
