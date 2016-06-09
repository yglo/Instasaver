.class public Landroid/support/v7/internal/widget/ActionBarContextView;
.super Landroid/support/v7/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private mAnimateInOnLayout:Z

.field private mAnimationMode:I

.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCurrentAnimation:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

.field private mCustomView:Landroid/view/View;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 75
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionModeStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->ActionMode:[I

    invoke-static {p1, p2, v0, p3, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v0

    .line 83
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionMode_background:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionMode_titleTextStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 87
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionMode_subtitleTextStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 90
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionMode_height:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 93
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionMode_backgroundSplit:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 96
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionMode_closeItemLayout:I

    sget v2, Landroid/support/v7/appcompat/R$layout;->abc_action_mode_close_item_material:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    .line 100
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 101
    return-void
.end method

.method private finishAnimation()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 275
    if-eqz v0, :cond_0

    .line 276
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 277
    invoke-virtual {v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 279
    :cond_0
    return-void
.end method

.method private initTitle()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 184
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 185
    sget v3, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_title_item:I

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 186
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 187
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v3, Landroid/support/v7/appcompat/R$id;->action_bar_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v3, Landroid/support/v7/appcompat/R$id;->action_bar_subtitle:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 189
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 192
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 197
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 201
    :goto_0
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 202
    :goto_1
    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v4, v2

    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 205
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 207
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 200
    goto :goto_0

    :cond_6
    move v1, v2

    .line 201
    goto :goto_1

    :cond_7
    move v3, v4

    .line 202
    goto :goto_2
.end method

.method private makeInAnimation()Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 409
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v2, v0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 411
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 412
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 413
    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 414
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 416
    new-instance v2, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v2}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 417
    invoke-virtual {v2, v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 419
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v0

    .line 421
    if-lez v0, :cond_0

    .line 422
    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ltz v1, :cond_0

    .line 423
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 424
    invoke-static {v3, v6}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 425
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 426
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 427
    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 422
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_0
    return-object v2
.end method

.method private makeOutAnimation()Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 4

    .prologue
    .line 436
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v2, v0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 439
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 440
    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 441
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 443
    new-instance v1, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 444
    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 446
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v0

    .line 448
    if-lez v0, :cond_0

    .line 459
    :cond_0
    return-object v1
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public bridge synthetic canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public closeMode()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 258
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimationMode:I

    if-ne v0, v1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_1

    .line 263
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->killMode()V

    goto :goto_0

    .line 267
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 268
    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 269
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->makeOutAnimation()Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 270
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    goto :goto_0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 320
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Landroid/support/v7/view/ActionMode;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 210
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_2

    .line 211
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 212
    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 213
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 218
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    sget v1, Landroid/support/v7/appcompat/R$id;->action_mode_close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    new-instance v1, Landroid/support/v7/internal/widget/ActionBarContextView$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView$1;-><init>(Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 226
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 229
    :cond_1
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 230
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 232
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 234
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v2, :cond_3

    .line 235
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 236
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 237
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    :goto_1
    iput-boolean v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 255
    return-void

    .line 214
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 244
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 246
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 247
    iget v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 248
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 249
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 250
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public bridge synthetic isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 283
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 284
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 287
    :cond_0
    iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 288
    iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 290
    return-void
.end method

.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 506
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 507
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->killMode()V

    .line 509
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 510
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 106
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 108
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 110
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 523
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 524
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 526
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 527
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 528
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 464
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    .line 465
    if-eqz v5, :cond_4

    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    move v1, v0

    .line 466
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 467
    sub-int v0, p5, p3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    sub-int v4, v0, v2

    .line 469
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_0

    .line 470
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 471
    if-eqz v5, :cond_5

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 472
    :goto_1
    if-eqz v5, :cond_6

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v6, v0

    .line 473
    :goto_2
    invoke-static {v1, v2, v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 474
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v0, v2

    .line 475
    invoke-static {v0, v6, v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v1

    .line 477
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v0, :cond_0

    .line 478
    iput v7, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 479
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->makeInAnimation()Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 480
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 481
    iput-boolean v8, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    :cond_0
    move v2, v1

    .line 485
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_1

    .line 486
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 489
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 490
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v0, v2

    .line 493
    :cond_2
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 495
    :goto_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_3

    .line 496
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v5, :cond_8

    move v5, v7

    :goto_4
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v0, v2

    .line 498
    :cond_3
    return-void

    .line 465
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    .line 471
    :cond_5
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 472
    :cond_6
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v6, v0

    goto :goto_2

    .line 493
    :cond_7
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_3

    :cond_8
    move v5, v8

    .line 496
    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/4 v11, -0x2

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v3, 0x0

    .line 330
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 331
    if-eq v0, v4, :cond_0

    .line 332
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 337
    if-nez v0, :cond_1

    .line 338
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "with android:layout_height=\"wrap_content\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 344
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    if-lez v0, :cond_8

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    move v1, v0

    .line 347
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v0, v2

    .line 348
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 349
    sub-int v6, v1, v8

    .line 350
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 352
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v9, :cond_2

    .line 353
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v9, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v9

    .line 354
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 355
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v10

    sub-int v0, v9, v0

    .line 358
    :cond_2
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-ne v9, p0, :cond_3

    .line 359
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, v9, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v0

    .line 363
    :cond_3
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v9, :cond_5

    .line 364
    iget-boolean v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eqz v9, :cond_b

    .line 365
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 366
    iget-object v10, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 367
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    .line 368
    if-gt v9, v0, :cond_9

    const/4 v2, 0x1

    .line 369
    :goto_1
    if-eqz v2, :cond_4

    .line 370
    sub-int/2addr v0, v9

    .line 372
    :cond_4
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_a

    move v2, v3

    :goto_2
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    :cond_5
    :goto_3
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 379
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 380
    iget v2, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v11, :cond_c

    move v2, v4

    .line 382
    :goto_4
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v10, :cond_6

    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 384
    :cond_6
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v10, v11, :cond_d

    .line 386
    :goto_5
    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v5, :cond_e

    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 388
    :goto_6
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    .line 392
    :cond_7
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    if-gtz v0, :cond_10

    .line 394
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v2

    move v1, v3

    .line 395
    :goto_7
    if-ge v3, v2, :cond_f

    .line 396
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v8

    .line 398
    if-le v0, v1, :cond_11

    .line 395
    :goto_8
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_7

    .line 344
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_9
    move v2, v3

    .line 368
    goto :goto_1

    .line 372
    :cond_a
    const/16 v2, 0x8

    goto :goto_2

    .line 374
    :cond_b
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v9, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v0

    goto :goto_3

    :cond_c
    move v2, v5

    .line 380
    goto :goto_4

    :cond_d
    move v4, v5

    .line 384
    goto :goto_5

    :cond_e
    move v5, v6

    .line 386
    goto :goto_6

    .line 402
    :cond_f
    invoke-virtual {p0, v7, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 406
    :goto_9
    return-void

    .line 404
    :cond_10
    invoke-virtual {p0, v7, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9

    :cond_11
    move v0, v1

    goto :goto_8
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 147
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 153
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 154
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 158
    :cond_1
    if-eqz p1, :cond_2

    .line 159
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 161
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V

    .line 162
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 114
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_2

    .line 115
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 117
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v1, v0, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 119
    if-nez p1, :cond_3

    .line 120
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 121
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 123
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 143
    :cond_2
    return-void

    .line 127
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 130
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 132
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 133
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 135
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 137
    if-eqz v0, :cond_4

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic setSplitView(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 171
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->initTitle()V

    .line 172
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 166
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->initTitle()V

    .line 167
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 538
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V

    .line 540
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z

    .line 541
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 297
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
