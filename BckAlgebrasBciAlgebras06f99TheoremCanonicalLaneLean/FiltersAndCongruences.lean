import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean

structure Filter (X : Type u) [BckAlgebra X] where
  carrier : Set X
  containsZero : (0 : X) ∈ carrier
  upwardClosed : ∀ x y : X, x ∈ carrier → impl x y = zero → y ∈ carrier

def FilterClosed {X : Type u} [BckAlgebra X] (F : Filter X) : Prop :=
  F.containsZero ∧ ∀ x y : X, x ∈ F.carrier → impl x y = zero → y ∈ F.carrier

theorem filter_closed_iff {X : Type u} [BckAlgebra X] (F : Filter X) : FilterClosed F := by
  exact ⟨F.containsZero, F.upwardClosed⟩

structure Congruence (X : Type u) [BciAlgebra X] where
  rel : X → X → Prop
  equivRel : Equivalence rel
  compatImpl : ∀ x y u v : X, rel x y → rel u v → rel (impl x u) (impl y v)

def CongruenceClosed {X : Type u} [BciAlgebra X] (C : Congruence X) : Prop :=
  C.equivRel.1 ∧ C.equivRel.2.1 ∧ C.equivRel.2.2 ∧ C.compatImpl

theorem congruence_closed_iff {X : Type u} [BciAlgebra X] (C : Congruence X) : CongruenceClosed C := by
  exact ⟨C.equivRel.1, C.equivRel.2.1, C.equivRel.2.2, C.compatImpl⟩

end BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean
end HautevilleHouse