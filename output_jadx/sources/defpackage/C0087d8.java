package defpackage;

import java.util.concurrent.ThreadPoolExecutor;

/* renamed from: d8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0087d8 extends AbstractC0152fm {
    public final /* synthetic */ AbstractC0152fm q;
    public final /* synthetic */ ThreadPoolExecutor r;

    public C0087d8(AbstractC0152fm abstractC0152fm, ThreadPoolExecutor threadPoolExecutor) {
        this.q = abstractC0152fm;
        this.r = threadPoolExecutor;
    }

    @Override // defpackage.AbstractC0152fm
    public final void y(Throwable th) {
        ThreadPoolExecutor threadPoolExecutor = this.r;
        try {
            this.q.y(th);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    @Override // defpackage.AbstractC0152fm
    public final void z(C0446r7 c0446r7) {
        ThreadPoolExecutor threadPoolExecutor = this.r;
        try {
            this.q.z(c0446r7);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
