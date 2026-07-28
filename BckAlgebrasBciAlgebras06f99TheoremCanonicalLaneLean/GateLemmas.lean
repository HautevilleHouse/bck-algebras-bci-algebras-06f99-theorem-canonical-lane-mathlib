import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean.BCIAlgebra

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean
end HautevilleHouse