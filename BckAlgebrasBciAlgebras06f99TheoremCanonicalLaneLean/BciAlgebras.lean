import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean

structure BciAlgebra where
  carrier : Type
  sub : carrier → carrier → carrier
  zero : carrier
  leftIdentity : ∀ x, sub x x = zero
  rightIdentity : ∀ x, sub x zero = x
  associativity : ∀ x y z, sub (sub x y) z = sub x (sub (sub y z) zero)
  antisymmetry : ∀ x y, sub x y = zero → sub y x = zero → x = y

structure BciWitness (B : BciAlgebra) where
  closureProperty : Prop

def BciClosed (B : BciAlgebra) : Prop :=
  B.leftIdentity ∧ B.rightIdentity ∧ B.associativity ∧ B.antisymmetry

theorem bci_closed_from_witness (B : BciAlgebra) (W : BciWitness B) : BciClosed B := by
  exact And.intro B.leftIdentity (And.intro B.rightIdentity (And.intro B.associativity B.antisymmetry))

end BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean
end HautevilleHouse