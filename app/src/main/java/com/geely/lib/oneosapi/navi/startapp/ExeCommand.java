package com.geely.lib.oneosapi.navi.startapp;

import android.util.Log;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public class ExeCommand {
    private boolean bRunning;
    private boolean bSynchronous;
    private BufferedReader errorResult;
    public ReadWriteLock lock;
    private DataOutputStream os;
    private Process process;
    private StringBuffer result;
    private BufferedReader successResult;

    public ExeCommand(boolean synchronous) {
        this.bRunning = false;
        this.lock = new ReentrantReadWriteLock();
        this.result = new StringBuffer();
        this.bSynchronous = synchronous;
    }

    public String getResult() {
        Lock lock = this.lock.readLock();
        lock.lock();
        try {
            Log.i("auto", "getResult");
            return new String(this.result);
        } finally {
            lock.unlock();
        }
    }

    public boolean isRunning() {
        return this.bRunning;
    }

    public ExeCommand run(String command, final int maxTime) throws InterruptedException, IOException {
        Log.i("auto", "run command:" + command + ",maxtime:" + maxTime);
        if (command != null && command.length() != 0) {
            try {
                this.process = Runtime.getRuntime().exec("sh");
                this.bRunning = true;
                this.successResult = new BufferedReader(new InputStreamReader(this.process.getInputStream()));
                this.errorResult = new BufferedReader(new InputStreamReader(this.process.getErrorStream()));
                DataOutputStream dataOutputStream = new DataOutputStream(this.process.getOutputStream());
                this.os = dataOutputStream;
                try {
                    dataOutputStream.write(command.getBytes());
                    this.os.writeBytes("\n");
                    this.os.flush();
                    this.os.writeBytes("exit\n");
                    this.os.flush();
                    this.os.close();
                    if (maxTime > 0) {
                        new Thread(new Runnable() { // from class: com.geely.lib.oneosapi.navi.startapp.ExeCommand.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    Thread.sleep(maxTime);
                                } catch (Exception unused) {
                                }
                                try {
                                    Log.i("auto", "exitValue Stream over" + ExeCommand.this.process.exitValue());
                                } catch (IllegalThreadStateException unused2) {
                                    Log.i("auto", "take maxTime,forced to destroy process");
                                    ExeCommand.this.process.destroy();
                                }
                            }
                        }).start();
                    }
                    final Thread thread = new Thread(new Runnable() { // from class: com.geely.lib.oneosapi.navi.startapp.ExeCommand.2
                        @Override // java.lang.Runnable
                        public void run() {
                            Lock lockWriteLock = ExeCommand.this.lock.writeLock();
                            while (true) {
                                try {
                                    try {
                                        String line = ExeCommand.this.successResult.readLine();
                                        if (line == null) {
                                            try {
                                                ExeCommand.this.successResult.close();
                                                Log.i("auto", "read InputStream over");
                                                return;
                                            } catch (Exception e) {
                                                Log.i("auto", "close InputStream exception:" + e.toString());
                                                return;
                                            }
                                        }
                                        lockWriteLock.lock();
                                        ExeCommand.this.result.append(line + "\n");
                                        lockWriteLock.unlock();
                                    } catch (Throwable th) {
                                        try {
                                            ExeCommand.this.successResult.close();
                                            Log.i("auto", "read InputStream over");
                                        } catch (Exception e2) {
                                            Log.i("auto", "close InputStream exception:" + e2.toString());
                                        }
                                        throw th;
                                    }
                                } catch (Exception e3) {
                                    Log.i("auto", "read InputStream exception:" + e3.toString());
                                    try {
                                        ExeCommand.this.successResult.close();
                                        Log.i("auto", "read InputStream over");
                                        return;
                                    } catch (Exception e4) {
                                        Log.i("auto", "close InputStream exception:" + e4.toString());
                                        return;
                                    }
                                }
                            }
                        }
                    });
                    thread.start();
                    final Thread thread2 = new Thread(new Runnable() { // from class: com.geely.lib.oneosapi.navi.startapp.ExeCommand.3
                        @Override // java.lang.Runnable
                        public void run() {
                            Lock lockWriteLock = ExeCommand.this.lock.writeLock();
                            while (true) {
                                try {
                                    try {
                                        String line = ExeCommand.this.errorResult.readLine();
                                        if (line == null) {
                                            try {
                                                ExeCommand.this.errorResult.close();
                                                Log.i("auto", "read ErrorStream over");
                                                return;
                                            } catch (Exception e) {
                                                Log.i("auto", "read ErrorStream exception:" + e.toString());
                                                return;
                                            }
                                        }
                                        lockWriteLock.lock();
                                        ExeCommand.this.result.append(line + "\n");
                                        lockWriteLock.unlock();
                                    } catch (Throwable th) {
                                        try {
                                            ExeCommand.this.errorResult.close();
                                            Log.i("auto", "read ErrorStream over");
                                        } catch (Exception e2) {
                                            Log.i("auto", "read ErrorStream exception:" + e2.toString());
                                        }
                                        throw th;
                                    }
                                } catch (Exception e3) {
                                    Log.i("auto", "read ErrorStream exception:" + e3.toString());
                                    try {
                                        ExeCommand.this.errorResult.close();
                                        Log.i("auto", "read ErrorStream over");
                                        return;
                                    } catch (Exception e4) {
                                        Log.i("auto", "read ErrorStream exception:" + e4.toString());
                                        return;
                                    }
                                }
                            }
                        }
                    });
                    thread2.start();
                    Thread thread3 = new Thread(new Runnable() { // from class: com.geely.lib.oneosapi.navi.startapp.ExeCommand.4
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                thread.join();
                                thread2.join();
                                ExeCommand.this.process.waitFor();
                            } catch (Exception unused) {
                            } finally {
                                ExeCommand.this.bRunning = false;
                                Log.i("auto", "run command process end");
                            }
                        }
                    });
                    thread3.start();
                    if (this.bSynchronous) {
                        Log.i("auto", "run is go to end");
                        thread3.join();
                        Log.i("auto", "run is end");
                    }
                } catch (Exception e) {
                    Log.i("auto", "run command process exception:" + e.toString());
                }
            } catch (Exception unused) {
            }
        }
        return this;
    }

    public ExeCommand() {
        this.bRunning = false;
        this.lock = new ReentrantReadWriteLock();
        this.result = new StringBuffer();
        this.bSynchronous = true;
    }
}
