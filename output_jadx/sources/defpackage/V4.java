package defpackage;

/* loaded from: classes.dex */
public final class V4 extends Nb implements InterfaceC0192ha {
    public static final V4 c = new V4(2, 0);
    public static final V4 d = new V4(2, 1);
    public static final V4 e = new V4(2, 2);
    public static final V4 f = new V4(2, 3);
    public static final V4 g = new V4(2, 4);
    public static final V4 h = new V4(2, 5);
    public static final V4 i = new V4(2, 6);
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ V4(int i2, int i3) {
        super(i2);
        this.b = i3;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        W4 w4;
        switch (this.b) {
            case 0:
                String str = (String) obj;
                InterfaceC0059c6 interfaceC0059c6 = (InterfaceC0059c6) obj2;
                AbstractC0348nb.r(str, "acc");
                AbstractC0348nb.r(interfaceC0059c6, "element");
                if (str.length() == 0) {
                    return interfaceC0059c6.toString();
                }
                return str + ", " + interfaceC0059c6;
            case 1:
                InterfaceC0110e6 interfaceC0110e6 = (InterfaceC0110e6) obj;
                InterfaceC0059c6 interfaceC0059c62 = (InterfaceC0059c6) obj2;
                AbstractC0348nb.r(interfaceC0110e6, "acc");
                AbstractC0348nb.r(interfaceC0059c62, "element");
                InterfaceC0110e6 d2 = interfaceC0110e6.d(interfaceC0059c62.getKey());
                C0497t8 c0497t8 = C0497t8.a;
                if (d2 == c0497t8) {
                    return interfaceC0059c62;
                }
                T7 t7 = T7.b;
                U5 u5 = (U5) d2.b(t7);
                if (u5 == null) {
                    w4 = new W4(d2, interfaceC0059c62);
                } else {
                    InterfaceC0110e6 d3 = d2.d(t7);
                    if (d3 == c0497t8) {
                        return new W4(interfaceC0059c62, u5);
                    }
                    w4 = new W4(new W4(d3, interfaceC0059c62), u5);
                }
                return w4;
            case 2:
                return ((InterfaceC0110e6) obj).f((InterfaceC0059c6) obj2);
            case 3:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                return bool;
            case 4:
                InterfaceC0059c6 interfaceC0059c63 = (InterfaceC0059c6) obj2;
                if (!(interfaceC0059c63 instanceof InterfaceC0150fk)) {
                    return obj;
                }
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                int intValue = num != null ? num.intValue() : 1;
                return intValue == 0 ? interfaceC0059c63 : Integer.valueOf(intValue + 1);
            case 5:
                InterfaceC0150fk interfaceC0150fk = (InterfaceC0150fk) obj;
                InterfaceC0059c6 interfaceC0059c64 = (InterfaceC0059c6) obj2;
                if (interfaceC0150fk != null) {
                    return interfaceC0150fk;
                }
                if (interfaceC0059c64 instanceof InterfaceC0150fk) {
                    return (InterfaceC0150fk) interfaceC0059c64;
                }
                return null;
            case 6:
                return (C0227ik) obj;
            default:
                return ((InterfaceC0110e6) obj).f((InterfaceC0059c6) obj2);
        }
    }
}
