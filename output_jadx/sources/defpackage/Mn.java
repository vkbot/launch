package defpackage;

import android.media.AudioManager;
import android.net.Uri;
import android.os.SystemClock;
import android.util.Log;
import java.util.List;

/* loaded from: classes.dex */
public final class Mn extends AudioManager.AudioRecordingCallback {
    @Override // android.media.AudioManager.AudioRecordingCallback
    public final void onRecordingConfigChanged(List list) {
        AbstractC0348nb.r(list, "configs");
        Uri uri = Nn.a;
        if (AbstractC0348nb.g(Nn.d(list), Boolean.TRUE)) {
            Nn.d = SystemClock.elapsedRealtime();
            if (Nn.b) {
                Log.i("VoiceMic", "the navigator records: the microphone is its again");
                Nn.b = false;
            }
        }
    }
}
