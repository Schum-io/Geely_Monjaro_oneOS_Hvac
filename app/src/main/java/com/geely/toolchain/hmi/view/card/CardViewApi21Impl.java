package com.geely.toolchain.hmi.view.card;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;

/* loaded from: classes.dex */
public class CardViewApi21Impl implements CardViewImpl {
    @Override // com.geely.toolchain.hmi.view.card.CardViewImpl
    public void initStatic() {
    }

    @Override // com.geely.toolchain.hmi.view.card.CardViewImpl
    public void initialize(CardViewDelegate cardView, Context context, ColorStateList backgroundColor, float radius, float elevation, float maxElevation) {
        cardView.setCardBackground(new RoundRectDrawable(backgroundColor, radius));
        View cardView2 = cardView.getCardView();
        cardView2.setClipToOutline(true);
        cardView2.setElevation(elevation);
        setMaxElevation(cardView, maxElevation);
    }

    @Override // com.geely.toolchain.hmi.view.card.CardViewImpl
    public void setRadius(CardViewDelegate cardView, float radius) {
        getCardBackground(cardView).setRadius(radius);
    }

    @Override // com.geely.toolchain.hmi.view.card.CardViewImpl
    public void setMaxElevation(CardViewDelegate cardView, float maxElevation) {
        getCardBackground(cardView).setPadding(maxElevation, cardView.getUseCompatPadding(), cardView.getPreventCornerOverlap());
        updatePadding(cardView);
    }

    @Override // com.geely.toolchain.hmi.view.card.CardViewImpl
    public float getMaxElevation(CardViewDelegate cardView) {
        return getCardBackground(cardView).getPadding();
    }

    @Override // com.geely.toolchain.hmi.view.card.CardViewImpl
    public float getMinWidth(CardViewDelegate cardView) {
        return getRadius(cardView) * 2.0f;
    }

    @Override // com.geely.toolchain.hmi.view.card.CardViewImpl
    public float getMinHeight(CardViewDelegate cardView) {
        return getRadius(cardView) * 2.0f;
    }

    @Override // com.geely.toolchain.hmi.view.card.CardViewImpl
    public float getRadius(CardViewDelegate cardView) {
        return getCardBackground(cardView).getRadius();
    }

    @Override // com.geely.toolchain.hmi.view.card.CardViewImpl
    public void setElevation(CardViewDelegate cardView, float elevation) {
        cardView.getCardView().setElevation(elevation);
    }

    @Override // com.geely.toolchain.hmi.view.card.CardViewImpl
    public float getElevation(CardViewDelegate cardView) {
        return cardView.getCardView().getElevation();
    }

    @Override // com.geely.toolchain.hmi.view.card.CardViewImpl
    public void updatePadding(CardViewDelegate cardView) {
        if (!cardView.getUseCompatPadding()) {
            cardView.setShadowPadding(0, 0, 0, 0);
            return;
        }
        float maxElevation = getMaxElevation(cardView);
        float radius = getRadius(cardView);
        int iCeil = (int) Math.ceil(RoundRectDrawableWithShadow.calculateHorizontalPadding(maxElevation, radius, cardView.getPreventCornerOverlap()));
        int iCeil2 = (int) Math.ceil(RoundRectDrawableWithShadow.calculateVerticalPadding(maxElevation, radius, cardView.getPreventCornerOverlap()));
        cardView.setShadowPadding(iCeil, iCeil2, iCeil, iCeil2);
    }

    @Override // com.geely.toolchain.hmi.view.card.CardViewImpl
    public void onCompatPaddingChanged(CardViewDelegate cardView) {
        setMaxElevation(cardView, getMaxElevation(cardView));
    }

    @Override // com.geely.toolchain.hmi.view.card.CardViewImpl
    public void onPreventCornerOverlapChanged(CardViewDelegate cardView) {
        setMaxElevation(cardView, getMaxElevation(cardView));
    }

    @Override // com.geely.toolchain.hmi.view.card.CardViewImpl
    public void setBackgroundColor(CardViewDelegate cardView, ColorStateList color) {
        getCardBackground(cardView).setColor(color);
    }

    @Override // com.geely.toolchain.hmi.view.card.CardViewImpl
    public ColorStateList getBackgroundColor(CardViewDelegate cardView) {
        return getCardBackground(cardView).getColor();
    }

    private RoundRectDrawable getCardBackground(CardViewDelegate cardView) {
        return (RoundRectDrawable) cardView.getCardBackground();
    }
}
