package com.geely.toolchain.hmi.util;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ThreadPoolUtils {
    private final int corePoolSize;
    private ThreadPoolExecutor executor;
    private final long keepAliveTime;
    private final int maxPoolSize;

    private ThreadPoolUtils() {
        this.keepAliveTime = 1L;
        int iAvailableProcessors = (Runtime.getRuntime().availableProcessors() * 2) + 1;
        this.corePoolSize = iAvailableProcessors;
        this.maxPoolSize = iAvailableProcessors;
        this.executor = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 1L, TimeUnit.HOURS, new LinkedBlockingQueue(), new DefaultThreadFactory(5, "thread-pool-"), new ThreadPoolExecutor.AbortPolicy());
    }

    static class SingletonHolder {
        static ThreadPoolUtils instance = new ThreadPoolUtils();

        SingletonHolder() {
        }
    }

    public static ThreadPoolUtils getInstance() {
        return SingletonHolder.instance;
    }

    public void execute(Runnable runnable) {
        if (this.executor == null) {
            this.executor = new ThreadPoolExecutor(this.corePoolSize, this.maxPoolSize, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new DefaultThreadFactory(5, "thread-pool-"), new ThreadPoolExecutor.AbortPolicy());
        }
        if (runnable != null) {
            this.executor.execute(runnable);
        }
    }

    public void remove(Runnable runnable) {
        if (runnable != null) {
            this.executor.remove(runnable);
        }
    }

    private static class DefaultThreadFactory implements ThreadFactory {
        private static final AtomicInteger POOL_NUMBER = new AtomicInteger(1);
        private final String namePrefix;
        private final int threadPriority;
        private final AtomicInteger threadNumber = new AtomicInteger(1);
        private final ThreadGroup group = Thread.currentThread().getThreadGroup();

        DefaultThreadFactory(int threadPriority, String threadNamePrefix) {
            this.threadPriority = threadPriority;
            this.namePrefix = threadNamePrefix + POOL_NUMBER.getAndIncrement() + "-thread-";
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r) {
            Thread thread = new Thread(this.group, r, this.namePrefix + this.threadNumber.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            thread.setPriority(this.threadPriority);
            return thread;
        }
    }
}
