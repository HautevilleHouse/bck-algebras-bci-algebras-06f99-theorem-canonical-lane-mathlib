import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean

structure BCIAlgebra where
  carrier : Type u
  zero : carrier
  op : carrier → carrier → carrier
  axioms : carrier → carrier → carrier → Prop

defineBCIAlgebra : Prop := True

end BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean
end HautevilleHouse