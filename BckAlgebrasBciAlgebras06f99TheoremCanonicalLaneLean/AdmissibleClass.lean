import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean

structure AdmissibleObject where
  carrier : Type u
  zero : carrier
  op : carrier → carrier → carrier
  axioms : Prop

structure AdmissibleClass where
  object : AdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.axiomsClosed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean
end HautevilleHouse