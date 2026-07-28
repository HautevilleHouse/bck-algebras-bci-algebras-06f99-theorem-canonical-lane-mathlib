import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean

structure ImplicativeStructure (X : Type u) where
  bck : BckAlgebra X
  order : X → X → Prop
  orderDef : ∀ x y : X, order x y ↔ bck.impl x y = bck.zero
  preorderRefl : ∀ x : X, order x x
  preorderTrans : ∀ x y z : X, order x y → order y z → order x z
  antisymm : ∀ x y : X, order x y → order y x → x = y

def ImplicativeClosed {X : Type u} (I : ImplicativeStructure X) : Prop :=
  (∀ x : X, I.preorderRefl x) ∧
  (∀ x y z : X, I.preorderTrans x y z) ∧
  (∀ x y : X, I.antisymm x y)

theorem implicative_closed_iff {X : Type u} (I : ImplicativeStructure X) : ImplicativeClosed I := by
  exact ⟨I.preorderRefl, I.preorderTrans, I.antisymm⟩

end BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean
end HautevilleHouse