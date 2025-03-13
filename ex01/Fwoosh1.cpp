#include "Fwoosh1.hpp"

Fwoosh::Fwoosh(): ASpell("Fwoosh", "fwooshed") {}
Fwoosh::~Fwoosh() {}

ASpell *Fwoosh::clone() const
{
    return (new Fwoosh());
}