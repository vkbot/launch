package defpackage;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import java.lang.reflect.Method;

/* renamed from: d1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0080d1 extends Button {
    public final C0614y0 a;
    public final C0235j2 b;
    public E1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0080d1(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        AbstractC0459rk.a(context);
        AbstractC0124ek.a(this, getContext());
        C0614y0 c0614y0 = new C0614y0(this);
        this.a = c0614y0;
        c0614y0.k(attributeSet, i);
        C0235j2 c0235j2 = new C0235j2(this);
        this.b = c0235j2;
        c0235j2.f(attributeSet, i);
        c0235j2.b();
        getEmojiTextViewHelper().a(attributeSet, i);
    }

    private E1 getEmojiTextViewHelper() {
        if (this.c == null) {
            this.c = new E1(this);
        }
        return this.c;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.a();
        }
        C0235j2 c0235j2 = this.b;
        if (c0235j2 != null) {
            c0235j2.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        Method method = Dn.a;
        return super.getAutoSizeMaxTextSize();
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        Method method = Dn.a;
        return super.getAutoSizeMinTextSize();
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        Method method = Dn.a;
        return super.getAutoSizeStepGranularity();
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        Method method = Dn.a;
        return super.getAutoSizeTextAvailableSizes();
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        Method method = Dn.a;
        return super.getAutoSizeTextType() == 1 ? 1 : 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return super.getCustomSelectionActionModeCallback();
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            return c0614y0.h();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            return c0614y0.i();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.b.e();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0235j2 c0235j2 = this.b;
        if (c0235j2 != null) {
            c0235j2.getClass();
            Method method = Dn.a;
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.b != null) {
            Method method = Dn.a;
        }
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().b(z);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        Method method = Dn.a;
        super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        Method method = Dn.a;
        super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        Method method = Dn.a;
        super.setAutoSizeTextTypeWithDefaults(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.m();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.n(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().c(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(((C6) getEmojiTextViewHelper().b.b).o(inputFilterArr));
    }

    public void setSupportAllCaps(boolean z) {
        C0235j2 c0235j2 = this.b;
        if (c0235j2 != null) {
            c0235j2.a.setAllCaps(z);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.s(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0614y0 c0614y0 = this.a;
        if (c0614y0 != null) {
            c0614y0.t(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C0235j2 c0235j2 = this.b;
        c0235j2.i(colorStateList);
        c0235j2.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C0235j2 c0235j2 = this.b;
        c0235j2.j(mode);
        c0235j2.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0235j2 c0235j2 = this.b;
        if (c0235j2 != null) {
            c0235j2.g(context, i);
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f) {
        Method method = Dn.a;
        super.setTextSize(i, f);
    }
}
