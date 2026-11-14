package defpackage;

import java.nio.charset.Charset;

/* renamed from: h4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0186h4 {
    public static final Charset a;

    static {
        Charset forName = Charset.forName("UTF-8");
        AbstractC0348nb.q(forName, "forName(...)");
        a = forName;
        AbstractC0348nb.q(Charset.forName("UTF-16"), "forName(...)");
        AbstractC0348nb.q(Charset.forName("UTF-16BE"), "forName(...)");
        AbstractC0348nb.q(Charset.forName("UTF-16LE"), "forName(...)");
        AbstractC0348nb.q(Charset.forName("US-ASCII"), "forName(...)");
        AbstractC0348nb.q(Charset.forName("ISO-8859-1"), "forName(...)");
    }
}
