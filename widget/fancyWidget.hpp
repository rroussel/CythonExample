//  Copyright (C) 2017 Art and Logic.
//
// Declaration for the AFancyWidget.
//

#include <string>

class AFancyWidget
{
   public:
      AFancyWidget(const std::string& name);
      
      bool IsCorrect(const std::string& name);
      
      const std::string GetName();
      
   private:
      std::string m_name;
};