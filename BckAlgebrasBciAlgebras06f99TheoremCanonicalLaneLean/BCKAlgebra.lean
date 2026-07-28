import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean

structure BCKAlgebra where
  carrier : Type u
  zero : carrier
  op : carrier → carrier → carrier
  axioms : carrier → carrier → carrier → Prop

defineBCKAlgebra : Prop := True

end BckAlgebrasBciAlgebras06f99TheoremCanonicalLaneLean
end HautevilleHouse