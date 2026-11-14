package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import defpackage.AbstractC0147fh;
import defpackage.AbstractC0205hn;
import defpackage.AbstractC0473s9;
import defpackage.B7;
import defpackage.C0142fc;
import defpackage.C0212i4;
import defpackage.Ek;
import defpackage.InterfaceC0144fe;
import defpackage.Pd;
import defpackage.Qj;
import defpackage.Rm;
import defpackage.Zg;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class NavigationMenuItemView extends AbstractC0473s9 implements InterfaceC0144fe {
    public static final int[] G = {R.attr.state_checked};
    public FrameLayout A;
    public Pd B;
    public ColorStateList C;
    public boolean D;
    public Drawable E;
    public final C0212i4 F;
    public int v;
    public boolean w;
    public boolean x;
    public final boolean y;
    public final CheckedTextView z;

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.y = true;
        C0212i4 c0212i4 = new C0212i4(3, this);
        this.F = c0212i4;
        setOrientation(0);
        LayoutInflater.from(context).inflate(com.omoda.launcher.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(com.omoda.launcher.R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(com.omoda.launcher.R.id.design_menu_item_text);
        this.z = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        AbstractC0205hn.h(checkedTextView, c0212i4);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.A == null) {
                this.A = (FrameLayout) ((ViewStub) findViewById(com.omoda.launcher.R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.A.removeAllViews();
            this.A.addView(view);
        }
    }

    @Override // defpackage.InterfaceC0144fe
    public final void d(Pd pd) {
        StateListDrawable stateListDrawable;
        this.B = pd;
        int i = pd.a;
        if (i > 0) {
            setId(i);
        }
        setVisibility(pd.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(com.omoda.launcher.R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(G, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Rm.q(this, stateListDrawable);
        }
        setCheckable(pd.isCheckable());
        setChecked(pd.isChecked());
        setEnabled(pd.isEnabled());
        setTitle(pd.e);
        setIcon(pd.getIcon());
        setActionView(pd.getActionView());
        setContentDescription(pd.q);
        Ek.a(this, pd.r);
        Pd pd2 = this.B;
        CharSequence charSequence = pd2.e;
        CheckedTextView checkedTextView = this.z;
        if (charSequence == null && pd2.getIcon() == null && this.B.getActionView() != null) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.A;
            if (frameLayout != null) {
                C0142fc c0142fc = (C0142fc) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) c0142fc).width = -1;
                this.A.setLayoutParams(c0142fc);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.A;
        if (frameLayout2 != null) {
            C0142fc c0142fc2 = (C0142fc) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) c0142fc2).width = -2;
            this.A.setLayoutParams(c0142fc2);
        }
    }

    @Override // defpackage.InterfaceC0144fe
    public Pd getItemData() {
        return this.B;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        Pd pd = this.B;
        if (pd != null && pd.isCheckable() && this.B.isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, G);
        }
        return onCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.x != z) {
            this.x = z;
            this.F.h(this.z, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        CheckedTextView checkedTextView = this.z;
        checkedTextView.setChecked(z);
        checkedTextView.setTypeface(checkedTextView.getTypeface(), (z && this.y) ? 1 : 0);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, getPaddingTop(), i, getPaddingBottom());
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.D) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = drawable.mutate();
                B7.h(drawable, this.C);
            }
            int i = this.v;
            drawable.setBounds(0, 0, i, i);
        } else if (this.w) {
            if (this.E == null) {
                Resources resources = getResources();
                Resources.Theme theme = getContext().getTheme();
                ThreadLocal threadLocal = AbstractC0147fh.a;
                Drawable a = Zg.a(resources, com.omoda.launcher.R.drawable.navigation_empty_icon, theme);
                this.E = a;
                if (a != null) {
                    int i2 = this.v;
                    a.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.E;
        }
        Qj.e(this.z, drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.z.setCompoundDrawablePadding(i);
    }

    public void setIconSize(int i) {
        this.v = i;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.C = colorStateList;
        this.D = colorStateList != null;
        Pd pd = this.B;
        if (pd != null) {
            setIcon(pd.getIcon());
        }
    }

    public void setMaxLines(int i) {
        this.z.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.w = z;
    }

    public void setTextAppearance(int i) {
        this.z.setTextAppearance(i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.z.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.z.setText(charSequence);
    }
}
