package defpackage;

import android.util.Log;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.List;

/* loaded from: classes.dex */
public abstract class Ge {
    public static final List a = M4.p0("ru.pool.ntp.org", "ntp1.vniiftri.ru", "time.windows.com");
    public static final List b = M4.p0("http://www.msftconnecttest.com/connecttest.txt", "http://mail.ru", "http://ya.ru");

    /* JADX WARN: Removed duplicated region for block: B:39:0x0140 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[LOOP:1: B:29:0x009e->B:41:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.Fe a(long r17) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Ge.a(long):Fe");
    }

    public static boolean b(long j, long j2) {
        return j > 0 && (j2 <= 0 || (j >= j2 && j <= j2 + 157680000000L));
    }

    public static Long c(String str) {
        InetAddress byName = InetAddress.getByName(str);
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            datagramSocket.setSoTimeout(5000);
            byte[] bArr = new byte[48];
            bArr[0] = 35;
            datagramSocket.send(new DatagramPacket(bArr, 48, byName, 123));
            DatagramPacket datagramPacket = new DatagramPacket(bArr, 48);
            datagramSocket.receive(datagramPacket);
            if (datagramPacket.getLength() < 48) {
                Log.w("NtpTimeSync", str + ": short reply (" + datagramPacket.getLength() + " B)");
                C6.c(datagramSocket, null);
                return null;
            }
            byte b2 = bArr[0];
            int i = (b2 >> 6) & 3;
            int i2 = b2 & 7;
            int i3 = bArr[1] & 255;
            if (i2 != 4) {
                Log.w("NtpTimeSync", str + ": mode=" + i2 + ", not a server reply");
                C6.c(datagramSocket, null);
                return null;
            }
            if (i == 3) {
                Log.w("NtpTimeSync", str + ": LI=3, clock unsynchronised");
                C6.c(datagramSocket, null);
                return null;
            }
            if (i3 < 1 || i3 > 15) {
                Log.w("NtpTimeSync", str + ": stratum=" + i3);
                C6.c(datagramSocket, null);
                return null;
            }
            long d = d(bArr, 40);
            long d2 = d(bArr, 44);
            if (d != 0) {
                Long valueOf = Long.valueOf(((d - 2208988800L) * 1000) + ((d2 * 1000) >>> 32));
                C6.c(datagramSocket, null);
                return valueOf;
            }
            Log.w("NtpTimeSync", str + ": zero transmit timestamp");
            C6.c(datagramSocket, null);
            return null;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                C6.c(datagramSocket, th);
                throw th2;
            }
        }
    }

    public static long d(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
