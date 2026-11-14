package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.ColorStateListDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsetsController;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.internal.CheckableImageButton;
import com.omoda.launcher.R;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class Bd<S> extends DialogInterfaceOnCancelListenerC0396p7 {
    public CharSequence A0;
    public CharSequence B0;
    public final LinkedHashSet e0;
    public final LinkedHashSet f0;
    public int g0;
    public AbstractC0479sf h0;
    public H3 i0;
    public C0552vd j0;
    public int k0;
    public CharSequence l0;
    public boolean m0;
    public int n0;
    public int o0;
    public CharSequence p0;
    public int q0;
    public CharSequence r0;
    public int s0;
    public CharSequence t0;
    public int u0;
    public CharSequence v0;
    public TextView w0;
    public CheckableImageButton x0;
    public Ed y0;
    public boolean z0;

    public Bd() {
        new LinkedHashSet();
        new LinkedHashSet();
        this.e0 = new LinkedHashSet();
        this.f0 = new LinkedHashSet();
    }

    public static int D(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        Calendar b = AbstractC0561vm.b();
        b.set(5, 1);
        Calendar a = AbstractC0561vm.a(b);
        a.get(2);
        a.get(1);
        int maximum = a.getMaximum(7);
        a.getActualMaximum(5);
        a.getTimeInMillis();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width) * maximum;
        return ((maximum - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding)) + dimensionPixelSize + (dimensionPixelOffset * 2);
    }

    public static boolean E(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(AbstractC0152fm.J(context, R.attr.materialCalendarStyle, C0552vd.class.getCanonicalName()).data, new int[]{i});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    @Override // defpackage.DialogInterfaceOnCancelListenerC0396p7
    public final Dialog B() {
        Context w = w();
        w();
        int i = this.g0;
        if (i == 0) {
            C();
            throw null;
        }
        Dialog dialog = new Dialog(w, i);
        Context context = dialog.getContext();
        this.m0 = E(context, android.R.attr.windowFullscreen);
        this.y0 = new Ed(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, Yf.l, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        int color = obtainStyledAttributes.getColor(1, 0);
        obtainStyledAttributes.recycle();
        this.y0.g(context);
        this.y0.i(ColorStateList.valueOf(color));
        Ed ed = this.y0;
        View decorView = dialog.getWindow().getDecorView();
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        ed.h(Xm.i(decorView));
        return dialog;
    }

    public final void C() {
        if (this.f.getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
    }

    @Override // defpackage.DialogInterfaceOnCancelListenerC0396p7, defpackage.AbstractComponentCallbacksC0598x9
    public final void m(Bundle bundle) {
        super.m(bundle);
        if (bundle == null) {
            bundle = this.f;
        }
        this.g0 = bundle.getInt("OVERRIDE_THEME_RES_ID");
        if (bundle.getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.i0 = (H3) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.k0 = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.l0 = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.n0 = bundle.getInt("INPUT_MODE_KEY");
        this.o0 = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.p0 = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.q0 = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.r0 = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        this.s0 = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.t0 = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        this.u0 = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.v0 = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        CharSequence charSequence = this.l0;
        if (charSequence == null) {
            charSequence = w().getResources().getText(this.k0);
        }
        this.A0 = charSequence;
        if (charSequence != null) {
            CharSequence[] split = TextUtils.split(String.valueOf(charSequence), "\n");
            if (split.length > 1) {
                charSequence = split[0];
            }
        } else {
            charSequence = null;
        }
        this.B0 = charSequence;
    }

    @Override // defpackage.AbstractComponentCallbacksC0598x9
    public final View n(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(this.m0 ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = inflate.getContext();
        if (this.m0) {
            inflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(D(context), -2));
        } else {
            inflate.findViewById(R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(D(context), -1));
        }
        TextView textView = (TextView) inflate.findViewById(R.id.mtrl_picker_header_selection_text);
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Um.f(textView, 1);
        this.x0 = (CheckableImageButton) inflate.findViewById(R.id.mtrl_picker_header_toggle);
        this.w0 = (TextView) inflate.findViewById(R.id.mtrl_picker_title_text);
        this.x0.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.x0;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, C6.n(context, R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], C6.n(context, R.drawable.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.x0.setChecked(this.n0 != 0);
        AbstractC0205hn.h(this.x0, null);
        CheckableImageButton checkableImageButton2 = this.x0;
        this.x0.setContentDescription(this.n0 == 1 ? checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
        this.x0.setOnClickListener(new ViewOnClickListenerC0616y2(4, this));
        C();
        throw null;
    }

    @Override // defpackage.DialogInterfaceOnCancelListenerC0396p7, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.e0.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
    }

    @Override // defpackage.DialogInterfaceOnCancelListenerC0396p7, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f0.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) this.E;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, G3] */
    @Override // defpackage.DialogInterfaceOnCancelListenerC0396p7, defpackage.AbstractComponentCallbacksC0598x9
    public final void r(Bundle bundle) {
        super.r(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.g0);
        bundle.putParcelable("DATE_SELECTOR_KEY", null);
        H3 h3 = this.i0;
        ?? obj = new Object();
        int i = G3.b;
        int i2 = G3.b;
        long j = h3.a.f;
        long j2 = h3.b.f;
        obj.a = Long.valueOf(h3.d.f);
        C0552vd c0552vd = this.j0;
        C0325me c0325me = c0552vd == null ? null : c0552vd.U;
        if (c0325me != null) {
            obj.a = Long.valueOf(c0325me.f);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", h3.c);
        C0325me b = C0325me.b(j);
        C0325me b2 = C0325me.b(j2);
        C0645z6 c0645z6 = (C0645z6) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l = obj.a;
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new H3(b, b2, c0645z6, l == null ? null : C0325me.b(l.longValue()), h3.e));
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.k0);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.l0);
        bundle.putInt("INPUT_MODE_KEY", this.n0);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.o0);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.p0);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.q0);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.r0);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.s0);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.t0);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.u0);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.v0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.DialogInterfaceOnCancelListenerC0396p7, defpackage.AbstractComponentCallbacksC0598x9
    public final void s() {
        zo zoVar;
        zo zoVar2;
        WindowInsetsController insetsController;
        WindowInsetsController insetsController2;
        super.s();
        Dialog dialog = this.a0;
        if (dialog == null) {
            throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
        }
        Window window = dialog.getWindow();
        if (this.m0) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.y0);
            if (!this.z0) {
                View findViewById = x().findViewById(R.id.fullscreen_header);
                Drawable background = findViewById.getBackground();
                ColorStateList valueOf = background instanceof ColorDrawable ? ColorStateList.valueOf(((ColorDrawable) background).getColor()) : background instanceof ColorStateListDrawable ? ((ColorStateListDrawable) background).getColorStateList() : null;
                Integer valueOf2 = valueOf != null ? Integer.valueOf(valueOf.getDefaultColor()) : null;
                int i = Build.VERSION.SDK_INT;
                boolean z = valueOf2 == null || valueOf2.intValue() == 0;
                int l = C6.l(window.getContext(), android.R.attr.colorBackground, -16777216);
                if (z) {
                    valueOf2 = Integer.valueOf(l);
                }
                if (i >= 30) {
                    Zn.a(window, false);
                } else {
                    Yn.a(window, false);
                }
                window.getContext();
                window.getContext();
                window.setStatusBarColor(0);
                window.setNavigationBarColor(0);
                boolean z2 = C6.w(0) || C6.w(valueOf2.intValue());
                Of of = new Of(window.getDecorView(), 6);
                if (Build.VERSION.SDK_INT >= 30) {
                    insetsController2 = window.getInsetsController();
                    Bo bo = new Bo(insetsController2, of);
                    bo.b = window;
                    zoVar = bo;
                } else {
                    zoVar = new zo(window, of);
                }
                zoVar.D(z2);
                boolean z3 = C6.w(0) || C6.w(l);
                Of of2 = new Of(window.getDecorView(), 6);
                if (Build.VERSION.SDK_INT >= 30) {
                    insetsController = window.getInsetsController();
                    Bo bo2 = new Bo(insetsController, of2);
                    bo2.b = window;
                    zoVar2 = bo2;
                } else {
                    zoVar2 = new zo(window, of2);
                }
                zoVar2.C(z3);
                Ad ad = new Ad(findViewById, findViewById.getLayoutParams().height, findViewById.getPaddingTop());
                WeakHashMap weakHashMap = AbstractC0205hn.a;
                Xm.u(findViewById, ad);
                this.z0 = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = w().getResources().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.y0, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            View decorView = window.getDecorView();
            Dialog dialog2 = this.a0;
            if (dialog2 == null) {
                throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
            }
            decorView.setOnTouchListener(new ViewOnTouchListenerC0038bb(dialog2, rect));
        }
        w();
        int i2 = this.g0;
        if (i2 == 0) {
            C();
            throw null;
        }
        C();
        H3 h3 = this.i0;
        C0552vd c0552vd = new C0552vd();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i2);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", h3);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", h3.d);
        c0552vd.A(bundle);
        this.j0 = c0552vd;
        AbstractC0479sf abstractC0479sf = c0552vd;
        if (this.n0 == 1) {
            C();
            H3 h32 = this.i0;
            AbstractC0479sf fd = new Fd();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("THEME_RES_ID_KEY", i2);
            bundle2.putParcelable("DATE_SELECTOR_KEY", null);
            bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", h32);
            fd.A(bundle2);
            abstractC0479sf = fd;
        }
        this.h0 = abstractC0479sf;
        this.w0.setText((this.n0 == 1 && w().getResources().getConfiguration().orientation == 2) ? this.B0 : this.A0);
        C();
        throw null;
    }

    @Override // defpackage.DialogInterfaceOnCancelListenerC0396p7, defpackage.AbstractComponentCallbacksC0598x9
    public final void t() {
        this.h0.R.clear();
        super.t();
    }
}
