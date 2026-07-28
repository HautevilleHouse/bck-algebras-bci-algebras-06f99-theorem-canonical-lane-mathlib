import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean

def ConstrainedBCKBCIClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bck_bci_endgame (A : AdmissibleClass) : ConstrainedBCKBCIClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean
end HautevilleHouse