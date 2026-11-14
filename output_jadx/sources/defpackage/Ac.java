package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class Ac implements InterfaceC0200hi {
    public final Context a;
    public ListAdapter b;
    public K7 c;
    public int f;
    public int g;
    public boolean i;
    public boolean j;
    public boolean k;
    public C0470s6 n;
    public View o;
    public AdapterView.OnItemClickListener p;
    public AdapterView.OnItemSelectedListener q;
    public final Handler v;
    public Rect x;
    public boolean y;
    public final J1 z;
    public final int d = -2;
    public int e = -2;
    public final int h = 1002;
    public int l = 0;
    public final int m = Integer.MAX_VALUE;
    public final RunnableC0601xc r = new RunnableC0601xc(this, 1);
    public final ViewOnTouchListenerC0651zc s = new ViewOnTouchListenerC0651zc(0, this);
    public final C0626yc t = new C0626yc(this);
    public final RunnableC0601xc u = new RunnableC0601xc(this, 0);
    public final Rect w = new Rect();

    /* JADX WARN: Type inference failed for: r1v9, types: [J1, android.widget.PopupWindow] */
    public Ac(Context context, AttributeSet attributeSet, int i) {
        int resourceId;
        this.a = context;
        this.v = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Zf.o, i, 0);
        this.f = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.i = true;
        }
        obtainStyledAttributes.recycle();
        ?? popupWindow = new PopupWindow(context, attributeSet, i, 0);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, Zf.s, i, 0);
        if (obtainStyledAttributes2.hasValue(2)) {
            Af.c(popupWindow, obtainStyledAttributes2.getBoolean(2, false));
        }
        popupWindow.setBackgroundDrawable((!obtainStyledAttributes2.hasValue(0) || (resourceId = obtainStyledAttributes2.getResourceId(0, 0)) == 0) ? obtainStyledAttributes2.getDrawable(0) : C6.n(context, resourceId));
        obtainStyledAttributes2.recycle();
        this.z = popupWindow;
        popupWindow.setInputMethodMode(1);
    }

    @Override // defpackage.InterfaceC0200hi
    public final boolean a() {
        return this.z.isShowing();
    }

    public final void c(int i) {
        this.f = i;
    }

    public final int d() {
        return this.f;
    }

    @Override // defpackage.InterfaceC0200hi
    public final void dismiss() {
        J1 j1 = this.z;
        j1.dismiss();
        j1.setContentView(null);
        this.c = null;
        this.v.removeCallbacks(this.r);
    }

    @Override // defpackage.InterfaceC0200hi
    public final K7 e() {
        return this.c;
    }

    @Override // defpackage.InterfaceC0200hi
    public final void h() {
        int i;
        int paddingBottom;
        K7 k7;
        K7 k72 = this.c;
        J1 j1 = this.z;
        Context context = this.a;
        if (k72 == null) {
            K7 p = p(context, !this.y);
            this.c = p;
            p.setAdapter(this.b);
            this.c.setOnItemClickListener(this.p);
            this.c.setFocusable(true);
            this.c.setFocusableInTouchMode(true);
            this.c.setOnItemSelectedListener(new C0526uc(0, this));
            this.c.setOnScrollListener(this.t);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.q;
            if (onItemSelectedListener != null) {
                this.c.setOnItemSelectedListener(onItemSelectedListener);
            }
            j1.setContentView(this.c);
        }
        Drawable background = j1.getBackground();
        Rect rect = this.w;
        if (background != null) {
            background.getPadding(rect);
            int i2 = rect.top;
            i = rect.bottom + i2;
            if (!this.i) {
                this.g = -i2;
            }
        } else {
            rect.setEmpty();
            i = 0;
        }
        int a = AbstractC0551vc.a(j1, this.o, this.g, j1.getInputMethodMode() == 2);
        int i3 = this.d;
        if (i3 == -1) {
            paddingBottom = a + i;
        } else {
            int i4 = this.e;
            int a2 = this.c.a(i4 != -2 ? i4 != -1 ? View.MeasureSpec.makeMeasureSpec(i4, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE), a);
            paddingBottom = a2 + (a2 > 0 ? this.c.getPaddingBottom() + this.c.getPaddingTop() + i : 0);
        }
        boolean z = this.z.getInputMethodMode() == 2;
        Af.d(j1, this.h);
        if (j1.isShowing()) {
            View view = this.o;
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            if (Um.b(view)) {
                int i5 = this.e;
                if (i5 == -1) {
                    i5 = -1;
                } else if (i5 == -2) {
                    i5 = this.o.getWidth();
                }
                if (i3 == -1) {
                    i3 = z ? paddingBottom : -1;
                    if (z) {
                        j1.setWidth(this.e == -1 ? -1 : 0);
                        j1.setHeight(0);
                    } else {
                        j1.setWidth(this.e == -1 ? -1 : 0);
                        j1.setHeight(-1);
                    }
                } else if (i3 == -2) {
                    i3 = paddingBottom;
                }
                j1.setOutsideTouchable(true);
                j1.update(this.o, this.f, this.g, i5 < 0 ? -1 : i5, i3 < 0 ? -1 : i3);
                return;
            }
            return;
        }
        int i6 = this.e;
        if (i6 == -1) {
            i6 = -1;
        } else if (i6 == -2) {
            i6 = this.o.getWidth();
        }
        if (i3 == -1) {
            i3 = -1;
        } else if (i3 == -2) {
            i3 = paddingBottom;
        }
        j1.setWidth(i6);
        j1.setHeight(i3);
        AbstractC0576wc.b(j1, true);
        j1.setOutsideTouchable(true);
        j1.setTouchInterceptor(this.s);
        if (this.k) {
            Af.c(j1, this.j);
        }
        AbstractC0576wc.a(j1, this.x);
        AbstractC0654zf.a(j1, this.o, this.f, this.g, this.l);
        this.c.setSelection(-1);
        if ((!this.y || this.c.isInTouchMode()) && (k7 = this.c) != null) {
            k7.setListSelectionHidden(true);
            k7.requestLayout();
        }
        if (this.y) {
            return;
        }
        this.v.post(this.u);
    }

    public final int i() {
        if (this.i) {
            return this.g;
        }
        return 0;
    }

    public final void j(Drawable drawable) {
        this.z.setBackgroundDrawable(drawable);
    }

    public final void k(int i) {
        this.g = i;
        this.i = true;
    }

    public final Drawable l() {
        return this.z.getBackground();
    }

    public void m(ListAdapter listAdapter) {
        C0470s6 c0470s6 = this.n;
        if (c0470s6 == null) {
            this.n = new C0470s6(1, this);
        } else {
            ListAdapter listAdapter2 = this.b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(c0470s6);
            }
        }
        this.b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.n);
        }
        K7 k7 = this.c;
        if (k7 != null) {
            k7.setAdapter(this.b);
        }
    }

    public K7 p(Context context, boolean z) {
        return new K7(context, z);
    }

    public final void r(int i) {
        Drawable background = this.z.getBackground();
        if (background == null) {
            this.e = i;
            return;
        }
        Rect rect = this.w;
        background.getPadding(rect);
        this.e = rect.left + rect.right + i;
    }
}
