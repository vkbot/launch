package defpackage;

import android.view.Choreographer;

/* renamed from: mj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class ChoreographerFrameCallbackC0330mj implements Choreographer.FrameCallback {
    public final /* synthetic */ int a;
    public final /* synthetic */ S4 b;
    public final /* synthetic */ C0658zj c;

    public /* synthetic */ ChoreographerFrameCallbackC0330mj(int i, S4 s4, C0658zj c0658zj) {
        this.a = i;
        this.b = s4;
        this.c = c0658zj;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        S4 s4 = this.b;
        C0658zj c0658zj = this.c;
        AbstractC0348nb.r(c0658zj, "this$0");
        int i = this.a;
        if (i <= 1) {
            s4.d();
        } else {
            Choreographer.getInstance().postFrameCallback(new ChoreographerFrameCallbackC0330mj(i - 1, s4, c0658zj));
        }
    }
}
