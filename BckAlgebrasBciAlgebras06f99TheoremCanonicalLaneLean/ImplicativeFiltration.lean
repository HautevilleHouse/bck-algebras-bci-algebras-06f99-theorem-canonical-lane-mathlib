import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean

structure ImplicativeFiltration (A : BCKAlgebra) where
  chain : ℕ → Set A
  chain_zero : chain 0 = {A.zero}
  chain_succ : ∀ n x, x ∈ chain n.succ ↔ ∃ y z, y ∈ chain n ∧ z ∈ chain n ∧ x = A.mul y z

def FiltrationClosed (F : ImplicativeFiltration A) : Prop :=
  ∀ x, x = A.zero ∨ ∃ n, x ∈ F.chain n

theorem filtration_closed (F : ImplicativeFiltration A) : FiltrationClosed F := by
  intro x
  by_cases h : x = A.zero
  · left; exact h
  · right; refine 0; rw [F.chain_zero]; exact Set.mem_singleton x

end BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean
end HautevilleHouse