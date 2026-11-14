package defpackage;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceConfigurationError;

/* renamed from: h6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0188h6 {
    public static final List a;

    static {
        try {
            Iterator it = Arrays.asList(new I0()).iterator();
            AbstractC0348nb.r(it, "<this>");
            a = Nh.x(new C0368o5(new C0401pc(1, it)));
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }
}
