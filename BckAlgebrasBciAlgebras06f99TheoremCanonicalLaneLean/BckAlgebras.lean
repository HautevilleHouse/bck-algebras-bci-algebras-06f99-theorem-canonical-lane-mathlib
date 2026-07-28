import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean

structure BckAlgebra where
  carrier : Type
  mul : carrier → carrier → carrier
  zero : carrier
  leftZero : ∀ x, mul zero x = zero
  rightZero : ∀ x, mul x zero = zero
  associativity : ∀ x y z, mul (mul x y) z = mul x (mul y z)
  idempotence : ∀ x, mul x x = x

structure BckWitness (B : BckAlgebra) where
  closureProperty : Prop

def BckClosed (B : BckAlgebra) : Prop :=
  B.leftZero ∧ B.rightZero ∧ B.associativity ∧ B.idempotence

theorem bck_closed_from_witness (B : BckAlgebra) (W : BckWitness B) : BckClosed B := by
  exact And.intro B.leftZero (And.intro B.rightZero (And.intro B.associativity B.idempotence))

end BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean
end HautevilleHouse