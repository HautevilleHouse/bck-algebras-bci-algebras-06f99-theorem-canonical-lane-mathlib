import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean.BCKAlgebra

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.axiomsClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  sorry

end BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean
end HautevilleHouse