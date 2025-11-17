package com.geely.livewallpager.lotties.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import androidx.collection.LongSparseArray;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.LottieDrawable;
import com.geely.livewallpager.lotties.LottieProperty;
import com.geely.livewallpager.lotties.TextDelegate;
import com.geely.livewallpager.lotties.animation.content.ContentGroup;
import com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.TextKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.geely.livewallpager.lotties.model.DocumentData;
import com.geely.livewallpager.lotties.model.Font;
import com.geely.livewallpager.lotties.model.FontCharacter;
import com.geely.livewallpager.lotties.model.animatable.AnimatableTextProperties;
import com.geely.livewallpager.lotties.model.content.ShapeGroup;
import com.geely.livewallpager.lotties.utils.Utils;
import com.geely.livewallpager.lotties.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class TextLayer extends BaseLayer {
    private final LongSparseArray<String> codePointCache;
    private BaseKeyframeAnimation<Integer, Integer> colorAnimation;
    private BaseKeyframeAnimation<Integer, Integer> colorCallbackAnimation;
    private final LottieComposition composition;
    private final Map<FontCharacter, List<ContentGroup>> contentsForCharacter;
    private final Paint fillPaint;
    private final LottieDrawable lottieDrawable;
    private final Matrix matrix;
    private final RectF rectF;
    private final StringBuilder stringBuilder;
    private BaseKeyframeAnimation<Integer, Integer> strokeColorAnimation;
    private BaseKeyframeAnimation<Integer, Integer> strokeColorCallbackAnimation;
    private final Paint strokePaint;
    private BaseKeyframeAnimation<Float, Float> strokeWidthAnimation;
    private BaseKeyframeAnimation<Float, Float> strokeWidthCallbackAnimation;
    private final TextKeyframeAnimation textAnimation;
    private BaseKeyframeAnimation<Float, Float> textSizeAnimation;
    private BaseKeyframeAnimation<Float, Float> textSizeCallbackAnimation;
    private BaseKeyframeAnimation<Float, Float> trackingAnimation;
    private BaseKeyframeAnimation<Float, Float> trackingCallbackAnimation;

    TextLayer(LottieDrawable lottieDrawable, Layer layerModel) {
        super(lottieDrawable, layerModel);
        this.stringBuilder = new StringBuilder(2);
        this.rectF = new RectF();
        this.matrix = new Matrix();
        int i = 1;
        this.fillPaint = new Paint(i) { // from class: com.geely.livewallpager.lotties.model.layer.TextLayer.1
            {
                setStyle(Style.FILL);
            }
        };
        this.strokePaint = new Paint(i) { // from class: com.geely.livewallpager.lotties.model.layer.TextLayer.2
            {
                setStyle(Style.STROKE);
            }
        };
        this.contentsForCharacter = new HashMap();
        this.codePointCache = new LongSparseArray<>();
        this.lottieDrawable = lottieDrawable;
        this.composition = layerModel.getComposition();
        TextKeyframeAnimation textKeyframeAnimationCreateAnimation = layerModel.getText().createAnimation();
        this.textAnimation = textKeyframeAnimationCreateAnimation;
        textKeyframeAnimationCreateAnimation.addUpdateListener(this);
        addAnimation(textKeyframeAnimationCreateAnimation);
        AnimatableTextProperties textProperties = layerModel.getTextProperties();
        if (textProperties != null && textProperties.color != null) {
            BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimationCreateAnimation = textProperties.color.createAnimation();
            this.colorAnimation = baseKeyframeAnimationCreateAnimation;
            baseKeyframeAnimationCreateAnimation.addUpdateListener(this);
            addAnimation(this.colorAnimation);
        }
        if (textProperties != null && textProperties.stroke != null) {
            BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimationCreateAnimation2 = textProperties.stroke.createAnimation();
            this.strokeColorAnimation = baseKeyframeAnimationCreateAnimation2;
            baseKeyframeAnimationCreateAnimation2.addUpdateListener(this);
            addAnimation(this.strokeColorAnimation);
        }
        if (textProperties != null && textProperties.strokeWidth != null) {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation3 = textProperties.strokeWidth.createAnimation();
            this.strokeWidthAnimation = baseKeyframeAnimationCreateAnimation3;
            baseKeyframeAnimationCreateAnimation3.addUpdateListener(this);
            addAnimation(this.strokeWidthAnimation);
        }
        if (textProperties == null || textProperties.tracking == null) {
            return;
        }
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation4 = textProperties.tracking.createAnimation();
        this.trackingAnimation = baseKeyframeAnimationCreateAnimation4;
        baseKeyframeAnimationCreateAnimation4.addUpdateListener(this);
        addAnimation(this.trackingAnimation);
    }

    @Override // com.geely.livewallpager.lotties.model.layer.BaseLayer, com.geely.livewallpager.lotties.animation.content.DrawingContent
    public void getBounds(RectF outBounds, Matrix parentMatrix, boolean applyParents) {
        super.getBounds(outBounds, parentMatrix, applyParents);
        outBounds.set(0.0f, 0.0f, this.composition.getBounds().width(), this.composition.getBounds().height());
    }

    @Override // com.geely.livewallpager.lotties.model.layer.BaseLayer
    void drawLayer(Canvas canvas, Matrix parentMatrix, int parentAlpha) {
        canvas.save();
        if (!this.lottieDrawable.useTextGlyphs()) {
            canvas.setMatrix(parentMatrix);
        }
        DocumentData value = this.textAnimation.getValue();
        Font font = this.composition.getFonts().get(value.fontName);
        if (font == null) {
            canvas.restore();
            return;
        }
        BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation = this.colorCallbackAnimation;
        if (baseKeyframeAnimation != null) {
            this.fillPaint.setColor(baseKeyframeAnimation.getValue().intValue());
        } else {
            BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2 = this.colorAnimation;
            if (baseKeyframeAnimation2 != null) {
                this.fillPaint.setColor(baseKeyframeAnimation2.getValue().intValue());
            } else {
                this.fillPaint.setColor(value.color);
            }
        }
        BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation3 = this.strokeColorCallbackAnimation;
        if (baseKeyframeAnimation3 != null) {
            this.strokePaint.setColor(baseKeyframeAnimation3.getValue().intValue());
        } else {
            BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation4 = this.strokeColorAnimation;
            if (baseKeyframeAnimation4 != null) {
                this.strokePaint.setColor(baseKeyframeAnimation4.getValue().intValue());
            } else {
                this.strokePaint.setColor(value.strokeColor);
            }
        }
        int iIntValue = ((this.transform.getOpacity() == null ? 100 : this.transform.getOpacity().getValue().intValue()) * 255) / 100;
        this.fillPaint.setAlpha(iIntValue);
        this.strokePaint.setAlpha(iIntValue);
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation5 = this.strokeWidthCallbackAnimation;
        if (baseKeyframeAnimation5 != null) {
            this.strokePaint.setStrokeWidth(baseKeyframeAnimation5.getValue().floatValue());
        } else {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation6 = this.strokeWidthAnimation;
            if (baseKeyframeAnimation6 != null) {
                this.strokePaint.setStrokeWidth(baseKeyframeAnimation6.getValue().floatValue());
            } else {
                this.strokePaint.setStrokeWidth(value.strokeWidth * Utils.dpScale() * Utils.getScale(parentMatrix));
            }
        }
        if (this.lottieDrawable.useTextGlyphs()) {
            drawTextGlyphs(value, parentMatrix, font, canvas);
        } else {
            drawTextWithFont(value, font, parentMatrix, canvas);
        }
        canvas.restore();
    }

    private void drawTextGlyphs(DocumentData documentData, Matrix parentMatrix, Font font, Canvas canvas) {
        float fFloatValue;
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation = this.textSizeCallbackAnimation;
        if (baseKeyframeAnimation != null) {
            fFloatValue = baseKeyframeAnimation.getValue().floatValue();
        } else {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation2 = this.textSizeAnimation;
            if (baseKeyframeAnimation2 != null) {
                fFloatValue = baseKeyframeAnimation2.getValue().floatValue();
            } else {
                fFloatValue = documentData.size;
            }
        }
        float f = fFloatValue / 100.0f;
        float scale = Utils.getScale(parentMatrix);
        String str = documentData.text;
        float fDpScale = documentData.lineHeight * Utils.dpScale();
        List<String> textLines = getTextLines(str);
        int size = textLines.size();
        for (int i = 0; i < size; i++) {
            String str2 = textLines.get(i);
            float textLineWidthForGlyphs = getTextLineWidthForGlyphs(str2, font, f, scale);
            canvas.save();
            applyJustification(documentData.justification, canvas, textLineWidthForGlyphs);
            canvas.translate(0.0f, (i * fDpScale) - (((size - 1) * fDpScale) / 2.0f));
            drawGlyphTextLine(str2, documentData, parentMatrix, font, canvas, scale, f);
            canvas.restore();
        }
    }

    private void drawGlyphTextLine(String text, DocumentData documentData, Matrix parentMatrix, Font font, Canvas canvas, float parentScale, float fontScale) {
        for (int i = 0; i < text.length(); i++) {
            FontCharacter fontCharacter = this.composition.getCharacters().get(FontCharacter.hashFor(text.charAt(i), font.getFamily(), font.getStyle()));
            if (fontCharacter != null) {
                drawCharacterAsGlyph(fontCharacter, parentMatrix, fontScale, documentData, canvas);
                float width = ((float) fontCharacter.getWidth()) * fontScale * Utils.dpScale() * parentScale;
                float f = documentData.tracking / 10.0f;
                float fFloatValue = 0.0f;
                BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation = this.trackingCallbackAnimation;
                if (baseKeyframeAnimation != null) {
                    fFloatValue = baseKeyframeAnimation.getValue().floatValue();
                } else {
                    BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation2 = this.trackingAnimation;
                    if (baseKeyframeAnimation2 != null) {
                        fFloatValue = baseKeyframeAnimation2.getValue().floatValue();
                    }
                }
                f += fFloatValue;
                canvas.translate(width + (f * parentScale), 0.0f);
            }
        }
    }

    private void drawTextWithFont(DocumentData documentData, Font font, Matrix parentMatrix, Canvas canvas) {
        float fFloatValue;
        float scale = Utils.getScale(parentMatrix);
        Typeface typeface = this.lottieDrawable.getTypeface(font.getFamily(), font.getStyle());
        if (typeface == null) {
            return;
        }
        String textInternal = documentData.text;
        TextDelegate textDelegate = this.lottieDrawable.getTextDelegate();
        if (textDelegate != null) {
            textInternal = textDelegate.getTextInternal(textInternal);
        }
        this.fillPaint.setTypeface(typeface);
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation = this.textSizeCallbackAnimation;
        if (baseKeyframeAnimation != null) {
            fFloatValue = baseKeyframeAnimation.getValue().floatValue();
        } else {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation2 = this.textSizeAnimation;
            if (baseKeyframeAnimation2 != null) {
                fFloatValue = baseKeyframeAnimation2.getValue().floatValue();
            } else {
                fFloatValue = documentData.size;
            }
        }
        this.fillPaint.setTextSize(fFloatValue * Utils.dpScale());
        this.strokePaint.setTypeface(this.fillPaint.getTypeface());
        this.strokePaint.setTextSize(this.fillPaint.getTextSize());
        float fDpScale = documentData.lineHeight * Utils.dpScale();
        List<String> textLines = getTextLines(textInternal);
        int size = textLines.size();
        for (int i = 0; i < size; i++) {
            String str = textLines.get(i);
            applyJustification(documentData.justification, canvas, this.strokePaint.measureText(str));
            canvas.translate(0.0f, (i * fDpScale) - (((size - 1) * fDpScale) / 2.0f));
            drawFontTextLine(str, documentData, canvas, scale);
            canvas.setMatrix(parentMatrix);
        }
    }

    private List<String> getTextLines(String text) {
        return Arrays.asList(text.replaceAll("\r\n", "\r").replaceAll("\n", "\r").split("\r"));
    }

    private void drawFontTextLine(String text, DocumentData documentData, Canvas canvas, float parentScale) {
        int length = 0;
        while (length < text.length()) {
            String strCodePointToString = codePointToString(text, length);
            length += strCodePointToString.length();
            drawCharacterFromFont(strCodePointToString, documentData, canvas);
            float fMeasureText = this.fillPaint.measureText(strCodePointToString, 0, 1);
            float f = documentData.tracking / 10.0f;
            float fFloatValue = 0.0f;
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation = this.trackingCallbackAnimation;
            if (baseKeyframeAnimation != null) {
                fFloatValue = baseKeyframeAnimation.getValue().floatValue();
            } else {
                BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation2 = this.trackingAnimation;
                if (baseKeyframeAnimation2 != null) {
                    fFloatValue = baseKeyframeAnimation2.getValue().floatValue();
                }
            }
            f += fFloatValue;
            canvas.translate(fMeasureText + (f * parentScale), 0.0f);
        }
    }

    private float getTextLineWidthForGlyphs(String textLine, Font font, float fontScale, float parentScale) {
        float width = 0.0f;
        for (int i = 0; i < textLine.length(); i++) {
            FontCharacter fontCharacter = this.composition.getCharacters().get(FontCharacter.hashFor(textLine.charAt(i), font.getFamily(), font.getStyle()));
            if (fontCharacter != null) {
                width = (float) (width + (fontCharacter.getWidth() * fontScale * Utils.dpScale() * parentScale));
            }
        }
        return width;
    }

    /* renamed from: com.geely.livewallpager.lotties.model.layer.TextLayer$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$geely$livewallpager$lotties$model$DocumentData$Justification;

        static {
            int[] iArr = new int[DocumentData.Justification.values().length];
            $SwitchMap$com$geely$livewallpager$lotties$model$DocumentData$Justification = iArr;
            try {
                iArr[DocumentData.Justification.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$geely$livewallpager$lotties$model$DocumentData$Justification[DocumentData.Justification.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$geely$livewallpager$lotties$model$DocumentData$Justification[DocumentData.Justification.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private void applyJustification(DocumentData.Justification justification, Canvas canvas, float textLineWidth) {
        int i = AnonymousClass3.$SwitchMap$com$geely$livewallpager$lotties$model$DocumentData$Justification[justification.ordinal()];
        if (i == 2) {
            canvas.translate(-textLineWidth, 0.0f);
        } else {
            if (i != 3) {
                return;
            }
            canvas.translate((-textLineWidth) / 2.0f, 0.0f);
        }
    }

    private void drawCharacterAsGlyph(FontCharacter character, Matrix parentMatrix, float fontScale, DocumentData documentData, Canvas canvas) {
        List<ContentGroup> contentsForCharacter = getContentsForCharacter(character);
        for (int i = 0; i < contentsForCharacter.size(); i++) {
            Path path = contentsForCharacter.get(i).getPath();
            path.computeBounds(this.rectF, false);
            this.matrix.set(parentMatrix);
            this.matrix.preTranslate(0.0f, (-documentData.baselineShift) * Utils.dpScale());
            this.matrix.preScale(fontScale, fontScale);
            path.transform(this.matrix);
            if (documentData.strokeOverFill) {
                drawGlyph(path, this.fillPaint, canvas);
                drawGlyph(path, this.strokePaint, canvas);
            } else {
                drawGlyph(path, this.strokePaint, canvas);
                drawGlyph(path, this.fillPaint, canvas);
            }
        }
    }

    private void drawGlyph(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void drawCharacterFromFont(String character, DocumentData documentData, Canvas canvas) {
        if (documentData.strokeOverFill) {
            drawCharacter(character, this.fillPaint, canvas);
            drawCharacter(character, this.strokePaint, canvas);
        } else {
            drawCharacter(character, this.strokePaint, canvas);
            drawCharacter(character, this.fillPaint, canvas);
        }
    }

    private void drawCharacter(String character, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(character, 0, character.length(), 0.0f, 0.0f, paint);
    }

    private List<ContentGroup> getContentsForCharacter(FontCharacter character) {
        if (this.contentsForCharacter.containsKey(character)) {
            return this.contentsForCharacter.get(character);
        }
        List<ShapeGroup> shapes = character.getShapes();
        int size = shapes.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new ContentGroup(this.lottieDrawable, this, shapes.get(i)));
        }
        this.contentsForCharacter.put(character, arrayList);
        return arrayList;
    }

    private String codePointToString(String text, int startIndex) {
        int iCodePointAt = text.codePointAt(startIndex);
        int iCharCount = Character.charCount(iCodePointAt) + startIndex;
        while (iCharCount < text.length()) {
            int iCodePointAt2 = text.codePointAt(iCharCount);
            if (!isModifier(iCodePointAt2)) {
                break;
            }
            iCharCount += Character.charCount(iCodePointAt2);
            iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
        }
        long j = iCodePointAt;
        if (this.codePointCache.containsKey(j)) {
            return this.codePointCache.get(j);
        }
        this.stringBuilder.setLength(0);
        while (startIndex < iCharCount) {
            int iCodePointAt3 = text.codePointAt(startIndex);
            this.stringBuilder.appendCodePoint(iCodePointAt3);
            startIndex += Character.charCount(iCodePointAt3);
        }
        String string = this.stringBuilder.toString();
        this.codePointCache.put(j, string);
        return string;
    }

    private boolean isModifier(int codePoint) {
        return Character.getType(codePoint) == 16 || Character.getType(codePoint) == 27 || Character.getType(codePoint) == 6 || Character.getType(codePoint) == 28 || Character.getType(codePoint) == 19;
    }

    @Override // com.geely.livewallpager.lotties.model.layer.BaseLayer, com.geely.livewallpager.lotties.model.KeyPathElement
    public <T> void addValueCallback(T property, LottieValueCallback<T> callback) {
        super.addValueCallback(property, callback);
        if (property == LottieProperty.COLOR) {
            BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation = this.colorCallbackAnimation;
            if (baseKeyframeAnimation != null) {
                removeAnimation(baseKeyframeAnimation);
            }
            if (callback == null) {
                this.colorCallbackAnimation = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = new ValueCallbackKeyframeAnimation(callback);
            this.colorCallbackAnimation = valueCallbackKeyframeAnimation;
            valueCallbackKeyframeAnimation.addUpdateListener(this);
            addAnimation(this.colorCallbackAnimation);
            return;
        }
        if (property == LottieProperty.STROKE_COLOR) {
            BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2 = this.strokeColorCallbackAnimation;
            if (baseKeyframeAnimation2 != null) {
                removeAnimation(baseKeyframeAnimation2);
            }
            if (callback == null) {
                this.strokeColorCallbackAnimation = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(callback);
            this.strokeColorCallbackAnimation = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.addUpdateListener(this);
            addAnimation(this.strokeColorCallbackAnimation);
            return;
        }
        if (property == LottieProperty.STROKE_WIDTH) {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation3 = this.strokeWidthCallbackAnimation;
            if (baseKeyframeAnimation3 != null) {
                removeAnimation(baseKeyframeAnimation3);
            }
            if (callback == null) {
                this.strokeWidthCallbackAnimation = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation3 = new ValueCallbackKeyframeAnimation(callback);
            this.strokeWidthCallbackAnimation = valueCallbackKeyframeAnimation3;
            valueCallbackKeyframeAnimation3.addUpdateListener(this);
            addAnimation(this.strokeWidthCallbackAnimation);
            return;
        }
        if (property == LottieProperty.TEXT_TRACKING) {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation4 = this.trackingCallbackAnimation;
            if (baseKeyframeAnimation4 != null) {
                removeAnimation(baseKeyframeAnimation4);
            }
            if (callback == null) {
                this.trackingCallbackAnimation = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation4 = new ValueCallbackKeyframeAnimation(callback);
            this.trackingCallbackAnimation = valueCallbackKeyframeAnimation4;
            valueCallbackKeyframeAnimation4.addUpdateListener(this);
            addAnimation(this.trackingCallbackAnimation);
            return;
        }
        if (property == LottieProperty.TEXT_SIZE) {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation5 = this.textSizeCallbackAnimation;
            if (baseKeyframeAnimation5 != null) {
                removeAnimation(baseKeyframeAnimation5);
            }
            if (callback == null) {
                this.textSizeCallbackAnimation = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation5 = new ValueCallbackKeyframeAnimation(callback);
            this.textSizeCallbackAnimation = valueCallbackKeyframeAnimation5;
            valueCallbackKeyframeAnimation5.addUpdateListener(this);
            addAnimation(this.textSizeCallbackAnimation);
        }
    }
}
