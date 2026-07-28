import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckBciAlgebras06F99

structure BckBciEvidence (A : AdmissibleClass) where
  bridgeClosedProof : bridgeClosed A
  gateClosedProof : gateClosed A

def BckBciClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bck_bci_closure_from_evidence (A : AdmissibleClass) (E : BckBciEvidence A) :
    BckBciClosure A := by
  exact And.intro E.bridgeClosedProof E.gateClosedProof

end BckBciAlgebras06F99
end HautevilleHouse
