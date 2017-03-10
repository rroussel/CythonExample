//  Copyright (C) 2017 Art and Logic.
//
// Implementation for the AFancyWidget.
//

#include "fancyWidget.hpp"

AFancyWidget::AFancyWidget(const std::string& name) :
   m_name(name)
{
}


bool AFancyWidget::IsCorrect(const std::string& name)
{
   return name == m_name;
}

const std::string AFancyWidget::GetName()
{
   return m_name;
}
