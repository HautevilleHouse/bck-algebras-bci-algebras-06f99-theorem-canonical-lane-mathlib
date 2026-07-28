import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean

structure IdealPackage (A : BCKAlgebra) where
  ideal : Set A
  zero_mem : A.zero ∈ ideal
  closed_under_mul : ∀ a b, a ∈ ideal → b ∈ ideal → A.mul a b ∈ ideal
  downwards_closed : ∀ a b, a ∈ ideal → A.le b a → b ∈ ideal

structure IdealEvidence {A : BCKAlgebra} (I : IdealPackage A) where
  zero_mem_closed : I.zero_mem
  closed_under_mul_closed : I.closed_under_mul
  downwards_closed_closed : I.downwards_closed

def IdealClosed {A : BCKAlgebra} (I : IdealPackage A) : Prop :=
  I.zero_mem ∧ I.closed_under_mul ∧ I.downwards_closed

theorem ideal_closed_from_evidence {A : BCKAlgebra} (I : IdealPackage A) (E : IdealEvidence I) :
  IdealClosed I := by
  exact ⟨E.zero_mem_closed, E.closed_under_mul_closed, E.downwards_closed_closed⟩

structure FilterPackage (A : BCIAlgebra) where
  filter : Set A
  top_mem : A.zero ∈ filter
  closed_under_mul : ∀ a b, a ∈ filter → b ∈ filter → A.mul a b ∈ filter
  upward_closed : ∀ a b, a ∈ filter → A.le a b → b ∈ filter

def FilterClosed {A : BCIAlgebra} (F : FilterPackage A) : Prop :=
  F.top_mem ∧ F.closed_under_mul ∧ F.upward_closed

end BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean
end HautevilleHouse