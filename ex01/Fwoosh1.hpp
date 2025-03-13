#pragma once

#include "ASpell1.hpp"

class Fwoosh: public ASpell
{
    public:
        Fwoosh();
        ~Fwoosh();

        virtual ASpell *clone() const;
};