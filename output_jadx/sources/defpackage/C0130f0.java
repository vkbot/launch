package defpackage;

import android.view.View;
import androidx.appcompat.view.menu.ActionMenuItemView;

/* renamed from: f0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0130f0 extends AbstractViewOnTouchListenerC0523u9 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ View k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0130f0(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.k = actionMenuItemView;
    }

    @Override // defpackage.AbstractViewOnTouchListenerC0523u9
    public final InterfaceC0200hi b() {
        C0182h0 c0182h0;
        switch (this.j) {
            case 0:
                AbstractC0156g0 abstractC0156g0 = ((ActionMenuItemView) this.k).l;
                if (abstractC0156g0 == null || (c0182h0 = ((C0208i0) abstractC0156g0).a.t) == null) {
                    return null;
                }
                return c0182h0.a();
            default:
                C0182h0 c0182h02 = ((C0259k0) this.k).d.s;
                if (c0182h02 == null) {
                    return null;
                }
                return c0182h02.a();
        }
    }

    @Override // defpackage.AbstractViewOnTouchListenerC0523u9
    public final boolean c() {
        InterfaceC0200hi b;
        switch (this.j) {
            case 0:
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) this.k;
                Kd kd = actionMenuItemView.j;
                return kd != null && kd.c(actionMenuItemView.g) && (b = b()) != null && b.a();
            default:
                ((C0259k0) this.k).d.l();
                return true;
        }
    }

    @Override // defpackage.AbstractViewOnTouchListenerC0523u9
    public boolean d() {
        switch (this.j) {
            case 1:
                C0285l0 c0285l0 = ((C0259k0) this.k).d;
                if (c0285l0.u != null) {
                    return false;
                }
                c0285l0.e();
                return true;
            default:
                return super.d();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0130f0(C0259k0 c0259k0, C0259k0 c0259k02) {
        super(c0259k02);
        this.k = c0259k0;
    }
}
