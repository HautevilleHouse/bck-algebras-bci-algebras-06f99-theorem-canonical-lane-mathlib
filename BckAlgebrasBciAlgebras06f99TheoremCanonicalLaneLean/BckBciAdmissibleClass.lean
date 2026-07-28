import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean

structure BckBciAdmissibleObject where
  carrier : Type u
  bckStructure : BckAlgebras.BckAlgebra carrier
  bciStructure : BciAlgebras.BciAlgebra carrier
  consistent : Prop
  conclusion : consistent

structure AdmissibleClass where
  object : BckBciAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BckBciWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean
end HautevilleHouse