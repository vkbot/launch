package defpackage;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import com.google.android.material.textfield.TextInputLayout;
import com.omoda.launcher.R;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class P7 extends C8 {
    public final int e;
    public final int f;
    public final TimeInterpolator g;
    public AutoCompleteTextView h;
    public final ViewOnClickListenerC0616y2 i;
    public final D4 j;
    public final O7 k;
    public boolean l;
    public boolean m;
    public boolean n;
    public long o;
    public AccessibilityManager p;
    public ValueAnimator q;
    public ValueAnimator r;

    public P7(B8 b8) {
        super(b8);
        this.i = new ViewOnClickListenerC0616y2(3, this);
        this.j = new D4(this, 1);
        this.k = new O7(this);
        this.o = Long.MAX_VALUE;
        this.f = C6.L(b8.getContext(), R.attr.motionDurationShort3, 67);
        this.e = C6.L(b8.getContext(), R.attr.motionDurationShort3, 50);
        this.g = C6.M(b8.getContext(), R.attr.motionEasingLinearInterpolator, O0.a);
    }

    @Override // defpackage.C8
    public final void a() {
        if (this.p.isTouchExplorationEnabled() && C6.x(this.h) && !this.d.hasFocus()) {
            this.h.dismissDropDown();
        }
        this.h.post(new O(8, this));
    }

    @Override // defpackage.C8
    public final int c() {
        return R.string.exposed_dropdown_menu_content_description;
    }

    @Override // defpackage.C8
    public final int d() {
        return R.drawable.mtrl_dropdown_arrow;
    }

    @Override // defpackage.C8
    public final View.OnFocusChangeListener e() {
        return this.j;
    }

    @Override // defpackage.C8
    public final View.OnClickListener f() {
        return this.i;
    }

    @Override // defpackage.C8
    public final InterfaceC0588x h() {
        return this.k;
    }

    @Override // defpackage.C8
    public final boolean i(int i) {
        return i != 0;
    }

    @Override // defpackage.C8
    public final boolean j() {
        return this.l;
    }

    @Override // defpackage.C8
    public final boolean l() {
        return this.n;
    }

    @Override // defpackage.C8
    public final void m(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
        }
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
        this.h = autoCompleteTextView;
        autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: M7
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                P7 p7 = P7.this;
                p7.getClass();
                if (motionEvent.getAction() == 1) {
                    long currentTimeMillis = System.currentTimeMillis() - p7.o;
                    if (currentTimeMillis < 0 || currentTimeMillis > 300) {
                        p7.m = false;
                    }
                    p7.u();
                    p7.m = true;
                    p7.o = System.currentTimeMillis();
                }
                return false;
            }
        });
        this.h.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: N7
            @Override // android.widget.AutoCompleteTextView.OnDismissListener
            public final void onDismiss() {
                P7 p7 = P7.this;
                p7.m = true;
                p7.o = System.currentTimeMillis();
                p7.t(false);
            }
        });
        this.h.setThreshold(0);
        TextInputLayout textInputLayout = this.a;
        textInputLayout.setErrorIconDrawable((Drawable) null);
        if (!C6.x(editText) && this.p.isTouchExplorationEnabled()) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            Rm.s(this.d, 2);
        }
        textInputLayout.setEndIconVisible(true);
    }

    @Override // defpackage.C8
    public final void n(J j) {
        boolean x = C6.x(this.h);
        AccessibilityNodeInfo accessibilityNodeInfo = j.a;
        if (!x) {
            accessibilityNodeInfo.setClassName(Spinner.class.getName());
        }
        if (accessibilityNodeInfo.isShowingHintText()) {
            accessibilityNodeInfo.setHintText(null);
        }
    }

    @Override // defpackage.C8
    public final void o(AccessibilityEvent accessibilityEvent) {
        if (!this.p.isEnabled() || C6.x(this.h)) {
            return;
        }
        boolean z = accessibilityEvent.getEventType() == 32768 && this.n && !this.h.isPopupShowing();
        if (accessibilityEvent.getEventType() == 1 || z) {
            u();
            this.m = true;
            this.o = System.currentTimeMillis();
        }
    }

    @Override // defpackage.C8
    public final void r() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.g;
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.setDuration(this.f);
        ofFloat.addUpdateListener(new L7(this));
        this.r = ofFloat;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration(this.e);
        ofFloat2.addUpdateListener(new L7(this));
        this.q = ofFloat2;
        ofFloat2.addListener(new C0001a0(3, this));
        this.p = (AccessibilityManager) this.c.getSystemService("accessibility");
    }

    @Override // defpackage.C8
    public final void s() {
        AutoCompleteTextView autoCompleteTextView = this.h;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            this.h.setOnDismissListener(null);
        }
    }

    public final void t(boolean z) {
        if (this.n != z) {
            this.n = z;
            this.r.cancel();
            this.q.start();
        }
    }

    public final void u() {
        if (this.h == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis() - this.o;
        if (currentTimeMillis < 0 || currentTimeMillis > 300) {
            this.m = false;
        }
        if (this.m) {
            this.m = false;
            return;
        }
        t(!this.n);
        if (!this.n) {
            this.h.dismissDropDown();
        } else {
            this.h.requestFocus();
            this.h.showDropDown();
        }
    }
}
