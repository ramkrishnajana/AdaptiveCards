// DO NOT EDIT - Auto generated

// Generated with objc_viewmodel.j2

#import "SwiftInterfaceHeader.h"

#import "ACSBaseActionElement.h"
#import "ACSDateTimePreparser.h"
#import "ACSFontTypeConvertor.h"
#import "ACSForegroundColorConvertor.h"
#import "ACSTextSizeConvertor.h"
#import "ACSTextWeightConvertor.h"

//cpp includes
#import "BaseActionElement.h"
#import "DateTimePreparser.h"
#import "Enums.h"


#import "ACSTextRun.h"
#import "TextRun.h"


@implementation  ACSTextRun {
    std::shared_ptr<TextRun> mCppObj;
}

- (instancetype _Nonnull)initWithTextRun:(const std::shared_ptr<TextRun>)cppObj
{
    if (self = [super initWithInline: cppObj])
    {
        mCppObj = cppObj;
    }
    return self;
}

- (NSString * _Nullable)getText
{
 
    auto getTextCpp = mCppObj->GetText();
    return [NSString stringWithUTF8String:getTextCpp.c_str()];

}

- (void)setText:(NSString * _Nonnull)value
{
    auto valueCpp = std::string([value UTF8String]);
 
    mCppObj->SetText(valueCpp);
    
}

- (ACSDateTimePreparser * _Nullable)getTextForDateParsing
{
 
    auto getTextForDateParsingCpp = mCppObj->GetTextForDateParsing();
//    return [[ACSDateTimePreparser alloc] initWithDateTimePreparser:getTextForDateParsingCpp];
    return [[ACSDateTimePreparser alloc] init];

}

- (ACSTextSize)getTextSize
{
 
    auto getTextSizeCpp = mCppObj->GetTextSize();
    return getTextSizeCpp.has_value() ? [ACSTextSizeConvertor convertCpp:getTextSizeCpp.value_or(AdaptiveCards::TextSize::Default)] : ACSTextSizeNil;

}

- (void)setTextSize:(enum ACSTextSize)value
{
    auto valueCpp = [ACSTextSizeConvertor convertObj:value];
 
    mCppObj->SetTextSize(valueCpp);
    
}

- (ACSTextWeight)getTextWeight
{
 
    auto getTextWeightCpp = mCppObj->GetTextWeight();
    return getTextWeightCpp.has_value() ? [ACSTextWeightConvertor convertCpp:getTextWeightCpp.value_or(AdaptiveCards::TextWeight::Default)] : ACSTextWeightNil;

}

- (void)setTextWeight:(enum ACSTextWeight)value
{
    auto valueCpp = [ACSTextWeightConvertor convertObj:value];
 
    mCppObj->SetTextWeight(valueCpp);
    
}

- (ACSFontType)getFontType
{
 
    auto getFontTypeCpp = mCppObj->GetFontType();
    return getFontTypeCpp.has_value() ? [ACSFontTypeConvertor convertCpp:getFontTypeCpp.value_or(AdaptiveCards::FontType::Default)] : ACSFontTypeNil;

}

- (void)setFontType:(enum ACSFontType)value
{
    auto valueCpp = [ACSFontTypeConvertor convertObj:value];
 
    mCppObj->SetFontType(valueCpp);
    
}

- (ACSForegroundColor)getTextColor
{
 
    auto getTextColorCpp = mCppObj->GetTextColor();
    return getTextColorCpp.has_value() ?[ACSForegroundColorConvertor convertCpp:getTextColorCpp.value_or(AdaptiveCards::ForegroundColor::Default)] : ACSForegroundColorNil;

}

- (void)setTextColor:(enum ACSForegroundColor)value
{
    auto valueCpp = [ACSForegroundColorConvertor convertObj:value];
 
    mCppObj->SetTextColor(valueCpp);
    
}

- (bool)getIsSubtle
{
 
    auto getIsSubtleCpp = mCppObj->GetIsSubtle();
    return getIsSubtleCpp.value_or(false);

}

- (void)setIsSubtle:(bool)value
{
    auto valueCpp = value;
 
    mCppObj->SetIsSubtle(valueCpp);
    
}

- (bool)getItalic
{
 
    auto getItalicCpp = mCppObj->GetItalic();
    return getItalicCpp;

}

- (void)setItalic:(bool)value
{
    auto valueCpp = value;
 
    mCppObj->SetItalic(valueCpp);
    
}

- (bool)getStrikethrough
{
 
    auto getStrikethroughCpp = mCppObj->GetStrikethrough();
    return getStrikethroughCpp;

}

- (void)setStrikethrough:(bool)value
{
    auto valueCpp = value;
 
    mCppObj->SetStrikethrough(valueCpp);
    
}

- (bool)getHighlight
{
 
    auto getHighlightCpp = mCppObj->GetHighlight();
    return getHighlightCpp;

}

- (void)setHighlight:(bool)value
{
    auto valueCpp = value;
 
    mCppObj->SetHighlight(valueCpp);
    
}

- (void)setLanguage:(NSString * _Nonnull)value
{
    auto valueCpp = std::string([value UTF8String]);
 
    mCppObj->SetLanguage(valueCpp);
    
}

- (NSString * _Nullable)getLanguage
{
 
    auto getLanguageCpp = mCppObj->GetLanguage();
    return [NSString stringWithUTF8String:getLanguageCpp.c_str()];

}

- (bool)getUnderline
{
 
    auto getUnderlineCpp = mCppObj->GetUnderline();
    return getUnderlineCpp;

}

- (void)setUnderline:(bool)value
{
    auto valueCpp = value;
 
    mCppObj->SetUnderline(valueCpp);
    
}

- (ACSBaseActionElement * _Nullable)getSelectAction
{
 
    auto getSelectActionCpp = mCppObj->GetSelectAction();
    return [BridgeConverter convertFromBaseActionElement:getSelectActionCpp];

}

- (void)setSelectAction:(ACSBaseActionElement * _Nonnull)action
{
//    auto actionCpp = // NEED TO INSERT CODE //;
//
//    mCppObj->SetSelectAction(actionCpp);
    
}




@end
