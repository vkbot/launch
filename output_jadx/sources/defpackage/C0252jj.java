package defpackage;

/* renamed from: jj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0252jj extends AbstractRunnableC0226ij {
    public final Runnable c;

    public C0252jj(Runnable runnable, long j, Th th) {
        super(j, th);
        this.c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.c.run();
        } finally {
            this.b.getClass();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.c;
        sb.append(runnable.getClass().getSimpleName());
        sb.append('@');
        sb.append(C6.p(runnable));
        sb.append(", ");
        sb.append(this.a);
        sb.append(", ");
        sb.append(this.b);
        sb.append(']');
        return sb.toString();
    }
}
