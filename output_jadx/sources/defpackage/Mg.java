package defpackage;

/* loaded from: classes.dex */
public final class Mg {
    public static String a(InterfaceC0425qa interfaceC0425qa) {
        String obj = interfaceC0425qa.getClass().getGenericInterfaces()[0].toString();
        return obj.startsWith("kotlin.jvm.functions.") ? obj.substring(21) : obj;
    }
}
