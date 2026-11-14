package defpackage;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class Co implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Io b;
    public final /* synthetic */ Map c;

    public /* synthetic */ Co(Io io, Map map, int i) {
        this.a = i;
        this.b = io;
        this.c = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                Io io = this.b;
                AbstractC0348nb.r(io, "this$0");
                io.b.postDelayed(new Co(io, this.c, 1), 2000L);
                return;
            default:
                Io io2 = this.b;
                AbstractC0348nb.r(io2, "this$0");
                Map map = this.c;
                io2.i = false;
                for (Map.Entry entry : map.entrySet()) {
                    Jo jo = (Jo) entry.getKey();
                    C0016af c0016af = (C0016af) entry.getValue();
                    String str = (String) c0016af.a;
                    Rect rect = (Rect) c0016af.b;
                    Integer f = io2.f(str);
                    int intValue = f != null ? f.intValue() : 0;
                    C0051bo c0051bo = io2.k;
                    C0092dd a = c0051bo.a(str);
                    if (a != null) {
                        a.b = intValue;
                        AbstractC0348nb.r(rect, "<set-?>");
                        a.c = rect;
                    } else {
                        ((ArrayList) c0051bo.a).add(new C0092dd(str, intValue, rect, jo));
                    }
                }
                io2.c();
                return;
        }
    }
}
