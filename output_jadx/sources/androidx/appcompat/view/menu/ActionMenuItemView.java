package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import defpackage.AbstractC0156g0;
import defpackage.C0130f0;
import defpackage.C0287l2;
import defpackage.Ek;
import defpackage.InterfaceC0144fe;
import defpackage.InterfaceC0311m0;
import defpackage.Kd;
import defpackage.Ld;
import defpackage.Pd;
import defpackage.Zf;

/* loaded from: classes.dex */
public class ActionMenuItemView extends C0287l2 implements InterfaceC0144fe, View.OnClickListener, InterfaceC0311m0 {
    public Pd g;
    public CharSequence h;
    public Drawable i;
    public Kd j;
    public C0130f0 k;
    public AbstractC0156g0 l;
    public boolean m;
    public boolean n;
    public final int o;
    public int p;
    public final int q;

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Resources resources = context.getResources();
        this.m = g();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Zf.c, 0, 0);
        this.o = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        this.q = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.p = -1;
        setSaveEnabled(false);
    }

    @Override // defpackage.InterfaceC0311m0
    public final boolean a() {
        return !TextUtils.isEmpty(getText()) && this.g.getIcon() == null;
    }

    @Override // defpackage.InterfaceC0311m0
    public final boolean b() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // defpackage.InterfaceC0144fe
    public final void d(Pd pd) {
        this.g = pd;
        setIcon(pd.getIcon());
        setTitle(pd.getTitleCondensed());
        setId(pd.a);
        setVisibility(pd.isVisible() ? 0 : 8);
        setEnabled(pd.isEnabled());
        if (pd.hasSubMenu() && this.k == null) {
            this.k = new C0130f0(this);
        }
    }

    public final boolean g() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // defpackage.InterfaceC0144fe
    public Pd getItemData() {
        return this.g;
    }

    public final void h() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.h);
        if (this.i != null && ((this.g.y & 4) != 4 || (!this.m && !this.n))) {
            z = false;
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.h : null);
        CharSequence charSequence = this.g.q;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z3 ? null : this.g.e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.g.r;
        if (TextUtils.isEmpty(charSequence2)) {
            Ek.a(this, z3 ? null : this.g.e);
        } else {
            Ek.a(this, charSequence2);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Kd kd = this.j;
        if (kd != null) {
            kd.c(this.g);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.m = g();
        h();
    }

    @Override // defpackage.C0287l2, android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        boolean isEmpty = TextUtils.isEmpty(getText());
        if (!isEmpty && (i3 = this.p) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int i4 = this.o;
        int min = mode == Integer.MIN_VALUE ? Math.min(size, i4) : i4;
        if (mode != 1073741824 && i4 > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (!isEmpty || this.i == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.i.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        C0130f0 c0130f0;
        if (this.g.hasSubMenu() && (c0130f0 = this.k) != null && c0130f0.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.n != z) {
            this.n = z;
            Pd pd = this.g;
            if (pd != null) {
                Ld ld = pd.n;
                ld.k = true;
                ld.p(true);
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.i = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.q;
            if (intrinsicWidth > i) {
                intrinsicHeight = (int) (intrinsicHeight * (i / intrinsicWidth));
                intrinsicWidth = i;
            }
            if (intrinsicHeight > i) {
                intrinsicWidth = (int) (intrinsicWidth * (i / intrinsicHeight));
            } else {
                i = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i);
        }
        setCompoundDrawables(drawable, null, null, null);
        h();
    }

    public void setItemInvoker(Kd kd) {
        this.j = kd;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        this.p = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(AbstractC0156g0 abstractC0156g0) {
        this.l = abstractC0156g0;
    }

    public void setTitle(CharSequence charSequence) {
        this.h = charSequence;
        h();
    }
}
