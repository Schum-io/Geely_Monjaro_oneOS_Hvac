package com.geely.livewallpager.lotties;

import android.os.Handler;
import android.os.Looper;
import com.geely.livewallpager.lotties.utils.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public class LottieTask<T> {
    public static Executor EXECUTOR = Executors.newCachedThreadPool();
    private final Set<LottieListener<Throwable>> failureListeners;
    private final Handler handler;
    private volatile LottieResult<T> result;
    private final Set<LottieListener<T>> successListeners;

    public LottieTask(Callable<LottieResult<T>> runnable) {
        this(runnable, false);
    }

    LottieTask(Callable<LottieResult<T>> runnable, boolean runNow) {
        this.successListeners = new LinkedHashSet(1);
        this.failureListeners = new LinkedHashSet(1);
        this.handler = new Handler(Looper.getMainLooper());
        this.result = null;
        if (runNow) {
            try {
                setResult(runnable.call());
                return;
            } catch (Throwable th) {
                setResult(new LottieResult<>(th));
                return;
            }
        }
        EXECUTOR.execute(new LottieFutureTask(runnable));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResult(LottieResult<T> result) {
        if (this.result != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.result = result;
        notifyListeners();
    }

    public synchronized LottieTask<T> addListener(LottieListener<T> listener) {
        if (this.result != null && this.result.getValue() != null) {
            listener.onResult(this.result.getValue());
        }
        this.successListeners.add(listener);
        return this;
    }

    public synchronized LottieTask<T> removeListener(LottieListener<T> listener) {
        this.successListeners.remove(listener);
        return this;
    }

    public synchronized LottieTask<T> addFailureListener(LottieListener<Throwable> listener) {
        if (this.result != null && this.result.getException() != null) {
            listener.onResult(this.result.getException());
        }
        this.failureListeners.add(listener);
        return this;
    }

    public synchronized LottieTask<T> removeFailureListener(LottieListener<Throwable> listener) {
        this.failureListeners.remove(listener);
        return this;
    }

    private void notifyListeners() {
        this.handler.post(new Runnable() { // from class: com.geely.livewallpager.lotties.LottieTask.1
            @Override // java.lang.Runnable
            public void run() {
                if (LottieTask.this.result == null) {
                    return;
                }
                LottieResult<T> lottieResult = LottieTask.this.result;
                if (lottieResult.getValue() != null) {
                    LottieTask.this.notifySuccessListeners(lottieResult.getValue());
                } else {
                    LottieTask.this.notifyFailureListeners(lottieResult.getException());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void notifySuccessListeners(T value) {
        Iterator<LottieListener<T>> it = new ArrayList<>(this.successListeners).iterator();
        while (it.hasNext()) {
            it.next().onResult(value);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void notifyFailureListeners(Throwable e) {
        ArrayList<LottieListener<Throwable>> arrayList = new ArrayList<>(this.failureListeners);
        if (arrayList.isEmpty()) {
            Logger.warning("Lottie encountered an error but no failure listener was added:", e);
            return;
        }
        Iterator<LottieListener<Throwable>> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().onResult(e);
        }
    }

    private class LottieFutureTask extends FutureTask<LottieResult<T>> {
        LottieFutureTask(Callable<LottieResult<T>> callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            if (isCancelled()) {
                return;
            }
            try {
                LottieTask.this.setResult(get());
            } catch (InterruptedException | ExecutionException e) {
                LottieTask.this.setResult(new LottieResult<>(e));
            }
        }
    }
}
