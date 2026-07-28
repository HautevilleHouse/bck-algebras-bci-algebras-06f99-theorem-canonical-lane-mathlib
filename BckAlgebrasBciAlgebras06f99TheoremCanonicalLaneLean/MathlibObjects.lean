import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckBciAlgebras06F99

structure BckBciSpace where
  carrier : Type u
  operation : carrier → carrier → carrier
  constant : carrier
  axioms : Prop

structure BckBciAdmittedObject where
  space : BckBciSpace
  isBckOrBci : Prop
  hasImplication : Prop
  conclusion : isBckOrBci ∧ hasImplication

def BckBciWitnessClosed (O : BckBciAdmittedObject) : Prop :=
  O.isBckOrBci

end BckBciAlgebras06F99
end HautevilleHouse
