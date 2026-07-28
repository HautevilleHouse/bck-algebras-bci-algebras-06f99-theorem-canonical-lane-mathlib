import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean

structure BckAlgebra (X : Type u) where
  zero : X
  mul : X → X → X
  leftZero : ∀ x, mul zero x = zero
  rightZero : ∀ x, mul x zero = zero
  associativity : ∀ x y z, mul (mul x y) z = mul x (mul y z)
  involutive : ∀ x, mul (mul x x) x = x
  commutativity : ∀ x y, mul (mul x y) (mul y x) = zero

def BckIdeal (B : BckAlgebra X) (I : Set X) : Prop :=
  ∀ x y, x ∈ I → B.mul x y ∈ I ∧ B.mul y x ∈ I

structure BciAlgebra (X : Type u) extends BckAlgebra X where
  involution : ∀ x, mul (mul (mul zero x) (mul zero x)) x = x
  antitone : ∀ x y, mul (mul (mul zero x) (mul zero y)) (mul x y) = zero

def BciSubalgebra (B : BciAlgebra X) (S : Set X) : Prop :=
  S.contains B.zero ∧ ∀ x y, x ∈ S → y ∈ S → B.mul x y ∈ S

end BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean
end HautevilleHouse