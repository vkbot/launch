package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.ColorStateListDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.Menu;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.omoda.launcher.R;
import defpackage.AbstractC0152fm;
import defpackage.AbstractC0205hn;
import defpackage.AbstractC0348nb;
import defpackage.B7;
import defpackage.C6;
import defpackage.Ed;
import defpackage.G0;
import defpackage.Ld;
import defpackage.Rm;
import defpackage.Xm;
import defpackage.Yf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class MaterialToolbar extends Toolbar {
    public static final ImageView.ScaleType[] W = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    public Integer R;
    public boolean S;
    public boolean T;
    public ImageView.ScaleType U;
    public Boolean V;

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        super(AbstractC0152fm.R(context, attributeSet, R.attr.toolbarStyle, R.style.Widget_MaterialComponents_Toolbar), attributeSet, 0);
        Context context2 = getContext();
        TypedArray Q = AbstractC0348nb.Q(context2, attributeSet, Yf.s, R.attr.toolbarStyle, R.style.Widget_MaterialComponents_Toolbar, new int[0]);
        if (Q.hasValue(2)) {
            setNavigationIconTint(Q.getColor(2, -1));
        }
        this.S = Q.getBoolean(4, false);
        this.T = Q.getBoolean(3, false);
        int i = Q.getInt(1, -1);
        if (i >= 0) {
            ImageView.ScaleType[] scaleTypeArr = W;
            if (i < scaleTypeArr.length) {
                this.U = scaleTypeArr[i];
            }
        }
        if (Q.hasValue(0)) {
            this.V = Boolean.valueOf(Q.getBoolean(0, false));
        }
        Q.recycle();
        Drawable background = getBackground();
        ColorStateList valueOf = background == null ? ColorStateList.valueOf(0) : background instanceof ColorDrawable ? ColorStateList.valueOf(((ColorDrawable) background).getColor()) : background instanceof ColorStateListDrawable ? ((ColorStateListDrawable) background).getColorStateList() : null;
        if (valueOf != null) {
            Ed ed = new Ed();
            ed.i(valueOf);
            ed.g(context2);
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            ed.h(Xm.i(this));
            Rm.q(this, ed);
        }
    }

    public ImageView.ScaleType getLogoScaleType() {
        return this.U;
    }

    public Integer getNavigationIconTint() {
        return this.R;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public final void n(int i) {
        Menu menu = getMenu();
        boolean z = menu instanceof Ld;
        if (z) {
            ((Ld) menu).w();
        }
        super.n(i);
        if (z) {
            ((Ld) menu).v();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof Ed) {
            AbstractC0152fm.N(this, (Ed) background);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ImageView imageView;
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        int i5 = 0;
        ImageView imageView2 = null;
        if (this.S || this.T) {
            ArrayList s = C6.s(this, getTitle());
            boolean isEmpty = s.isEmpty();
            G0 g0 = C6.v;
            TextView textView = isEmpty ? null : (TextView) Collections.min(s, g0);
            ArrayList s2 = C6.s(this, getSubtitle());
            TextView textView2 = s2.isEmpty() ? null : (TextView) Collections.max(s2, g0);
            if (textView != null || textView2 != null) {
                int measuredWidth = getMeasuredWidth();
                int i6 = measuredWidth / 2;
                int paddingLeft = getPaddingLeft();
                int paddingRight = measuredWidth - getPaddingRight();
                for (int i7 = 0; i7 < getChildCount(); i7++) {
                    View childAt = getChildAt(i7);
                    if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                        if (childAt.getRight() < i6 && childAt.getRight() > paddingLeft) {
                            paddingLeft = childAt.getRight();
                        }
                        if (childAt.getLeft() > i6 && childAt.getLeft() < paddingRight) {
                            paddingRight = childAt.getLeft();
                        }
                    }
                }
                Pair pair = new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
                if (this.S && textView != null) {
                    w(textView, pair);
                }
                if (this.T && textView2 != null) {
                    w(textView2, pair);
                }
            }
        }
        Drawable logo = getLogo();
        if (logo != null) {
            while (true) {
                if (i5 >= getChildCount()) {
                    break;
                }
                View childAt2 = getChildAt(i5);
                if ((childAt2 instanceof ImageView) && (drawable = (imageView = (ImageView) childAt2).getDrawable()) != null && drawable.getConstantState() != null && drawable.getConstantState().equals(logo.getConstantState())) {
                    imageView2 = imageView;
                    break;
                }
                i5++;
            }
        }
        if (imageView2 != null) {
            Boolean bool = this.V;
            if (bool != null) {
                imageView2.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.U;
            if (scaleType != null) {
                imageView2.setScaleType(scaleType);
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        Drawable background = getBackground();
        if (background instanceof Ed) {
            ((Ed) background).h(f);
        }
    }

    public void setLogoAdjustViewBounds(boolean z) {
        Boolean bool = this.V;
        if (bool == null || bool.booleanValue() != z) {
            this.V = Boolean.valueOf(z);
            requestLayout();
        }
    }

    public void setLogoScaleType(ImageView.ScaleType scaleType) {
        if (this.U != scaleType) {
            this.U = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.R != null) {
            drawable = drawable.mutate();
            B7.g(drawable, this.R.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(int i) {
        this.R = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z) {
        if (this.T != z) {
            this.T = z;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z) {
        if (this.S != z) {
            this.S = z;
            requestLayout();
        }
    }

    public final void w(TextView textView, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = textView.getMeasuredWidth();
        int i = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i2 = measuredWidth2 + i;
        int max = Math.max(Math.max(((Integer) pair.first).intValue() - i, 0), Math.max(i2 - ((Integer) pair.second).intValue(), 0));
        if (max > 0) {
            i += max;
            i2 -= max;
            textView.measure(View.MeasureSpec.makeMeasureSpec(i2 - i, 1073741824), textView.getMeasuredHeightAndState());
        }
        textView.layout(i, textView.getTop(), i2, textView.getBottom());
    }
}
