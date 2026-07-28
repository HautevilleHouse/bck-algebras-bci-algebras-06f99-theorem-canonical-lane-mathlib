import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean

structure CommutativeBckAlgebra (X : Type u) extends BckAlgebra X where
  commutativity : ∀ x y : X, impl (impl x y) (impl y x) = zero

def CommutativeBckClosed (C : CommutativeBckAlgebra X) : Prop :=
  ∀ x y : X, C.commutativity x y

theorem commutative_bck_closed_iff (C : CommutativeBckAlgebra X) : CommutativeBckClosed C := by
  exact C.commutativity

structure BciClosure (X : Type u) [BciAlgebra X] where
  closureUnderImpl : ∀ (f : X → X), (∀ x : X, impl x (f x) = zero) → ∀ x : X, f x = x

def BciClosureClosed {X : Type u} [BciAlgebra X] (C : BciClosure X) : Prop :=
  ∀ (f : X → X), (∀ x : X, impl x (f x) = zero) → ∀ x : X, f x = x

theorem bci_closure_closed_iff {X : Type u} [BciAlgebra X] (C : BciClosure X) : BciClosureClosed C := by
  exact C.closureUnderImpl

end BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean
end HautevilleHouse