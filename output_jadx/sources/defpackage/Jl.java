package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class Jl extends Nb implements InterfaceC0192ha {
    public final /* synthetic */ TextView b;
    public final /* synthetic */ TextView c;
    public final /* synthetic */ ArrayList d;
    public final /* synthetic */ TextView e;
    public final /* synthetic */ TextView f;
    public final /* synthetic */ float g;
    public final /* synthetic */ TopOverlayAccessibilityService h;
    public final /* synthetic */ TextView i;
    public final /* synthetic */ LinearLayout j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Jl(TextView textView, TextView textView2, ArrayList arrayList, TextView textView3, TextView textView4, float f, TopOverlayAccessibilityService topOverlayAccessibilityService, TextView textView5, LinearLayout linearLayout) {
        super(2);
        this.b = textView;
        this.c = textView2;
        this.d = arrayList;
        this.e = textView3;
        this.f = textView4;
        this.g = f;
        this.h = topOverlayAccessibilityService;
        this.i = textView5;
        this.j = linearLayout;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        final S9 s9 = (S9) obj;
        S9 s92 = (S9) obj2;
        AbstractC0348nb.r(s9, "proceed");
        AbstractC0348nb.r(s92, "abandon");
        C0461rm c0461rm = Ki.n;
        if (c0461rm == null) {
            AbstractC0348nb.j0("uninstall");
            throw null;
        }
        TextView textView = this.i;
        String str = c0461rm.c;
        ArrayList arrayList = this.d;
        TextView textView2 = this.e;
        final TextView textView3 = this.f;
        final TextView textView4 = this.b;
        final TextView textView5 = this.c;
        TopOverlayAccessibilityService.i0(arrayList, textView2, textView3, this.g, this.h, textView4, textView5, textView, str);
        textView4.setOnClickListener(new View.OnClickListener() { // from class: Il
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextView textView6 = textView4;
                TextView textView7 = textView5;
                TextView textView8 = textView3;
                S9 s93 = s9;
                AbstractC0348nb.r(s93, "$proceed");
                textView6.setEnabled(false);
                textView7.setEnabled(false);
                Ki ki = Ki.a;
                textView8.setText(Ki.e().e);
                s93.d();
            }
        });
        textView5.setOnClickListener(new ViewOnClickListenerC0408pj(s92, this.h, this.j, 5));
        return C0486sm.a;
    }
}
