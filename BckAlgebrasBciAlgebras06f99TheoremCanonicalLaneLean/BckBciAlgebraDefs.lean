import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckBciAlgebras06F99

structure BckAlgebra (A : Type u) where
  mul : A → A → A
  one : A
  leftIdentity : ∀ a, mul one a = a
  rightIdentity : ∀ a, mul a one = a
  associativity : ∀ a b c, mul (mul a b) c = mul a (mul b c)
  bckAxiom : ∀ a b c, mul (mul a b) (mul a c) = mul (mul b a) (mul b c)

structure BciAlgebra (A : Type u) where
  mul : A → A → A
  one : A
  leftIdentity : ∀ a, mul one a = a
  rightIdentity : ∀ a, mul a one = a
  associativity : ∀ a b c, mul (mul a b) c = mul a (mul b c)
  bciAxiom : ∀ a b c, mul (mul a b) (mul a c) = mul (mul b a) (mul b c)
  implicative : ∀ a, mul a a = one

end BckBciAlgebras06F99
end HautevilleHouse
