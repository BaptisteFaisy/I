#pragma once

#include "ATarget1.hpp"

class Dummy: public ATarget
{
    public:
        Dummy();
        ~Dummy();

        virtual ATarget *clone() const;
};