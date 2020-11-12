## dotty contextual abstractions

1. Использовалось ли когда либо ключевое слово **implicit** для contextual astractions в dotty?  (Да)
2. Использовалось ли когда либо ключевое слово **inject** для contextual astractions в dotty? (Нет)
3. Использовалось ли когда либо ключевое слово **given** для contextual astractions в dotty? (Да)
4. Использовалось ли когда либо ключевое слово **instance** для contextual astractions в dotty? (Нет)
5. Использовалось ли когда либо ключевое слово **delegate** для contextual astractions в dotty? (Да)
6. Использовалось ли когда либо ключевое слово **implied** для contextual astractions в dotty? (Да)
7. Использовалось ли когда либо ключевое слово **the** для contextual astractions в dotty? (Нет)

## typeclass laws

1. Есть ли среди законов typeclass **Foldable** ассоциативность? (Нет)
2. Есть ли среди законов typeclass **Monad** ассоциативность? (Да)
3. Есть ли среди законов typeclass **NonEmptyTraverse** ассоциативность? (Нет)
4. Есть ли среди законов typeclass **FunctorFilter** ассоциативность? (Нет)
5. Есть ли среди законов typeclass **SemigroupK** ассоциативность? (Да)
6. Есть ли среди законов typeclass **InvariantMonoidal** ассоциативность? (Да)

## Мутабельность в коллекциях

1. Есть в определении класса collection.immutable. **Vector** мутабельные поля _var_ (Нет)
2. Есть в определении класса collection.immutable. **Stream.Cons** мутабельные поля _var_ (Да)
3. Есть в определении класса collection.immutable. **::** мутабельные поля _var_ (Да)
4. Есть в определении класса collection.immutable. **LazyList** мутабельные поля _var_ (Нет)

## Неявные аргументы

1. Есть ли неявные (implicit аргументы) в определении метода **flatMap** класса **List** в scala **2.12** (Да)
2. Есть ли неявные (implicit аргументы) в определении метода **flatMap** класса **Future** в scala **2.13** (Да)
3. Есть ли неявные (implicit аргументы) в определении метода **flatMap** класса **Future** в scala **2.12** (Да)
4. Есть ли неявные (implicit аргументы) в определении метода **flatMap** класса **List** в scala **2.13** (Нет)
5. Есть ли неявные (implicit аргументы) в определении метода **flatMap** класса **monix.eval.Task** (Нет)
6. Есть ли неявные (implicit аргументы) в определении метода **start** класса **monix.eval.Task**  (Нет)
7. Есть ли неявные (implicit аргументы) в определении метода **start** класса **cats.effect.IO**  (Да)
8. Есть ли неявные (implicit аргументы) в определении метода **fork** класса **zio.ZIO**  (Нет)

## Старая стандартная библиотека

1. Существовал ли когда-то в стандартной библиотеке scala класс scala. **actors.Actor** (Да)
2. Существовал ли когда-то в стандартной библиотеке scala класс scala. **xml.Elem** (Да)
3. Существовал ли когда-то в стандартной библиотеке scala класс scala. **spring.Servlet** (Нет)
4. Существовал ли когда-то в стандартной библиотеке scala класс scala. **effect.IO** (Нет)
5. Существовал ли когда-то в стандартной библиотеке scala класс scala. **reflect.BeanInfo** (Да)
6. Существовал ли когда-то в стандартной библиотеке scala класс scala. **mobile.Location** (Да)
7. Существовал ли когда-то в стандартной библиотеке scala класс scala. **data.functor.foldable.Corecursive** (нет)
8. Существовал ли когда-то в стандартной библиотеке scala класс scala. **util.control.TailCalls.TailRec** (Да)

## Правда ли

1. akka-http развилась из библиотеки spray, вдохновлённой библиотекой blueeyes авторства John Degoes (Да)
2. fs2 развилась из библиотеки scalaz-stream (Да)
3. scala.concurrent.Future вдохновлялась абстракциями из twitter.util, вдохновлёнными абстракциями библиотеки  Chymyst авторства Sergei Winitzki  (Нет)
4. Раньше, чем вышла библиотека akka, liftweb представил свою библиотеку акторов (Да)
5. Miles Sabin был приглашёл в EPFL в группу разработки dotty, и уже перенёс несколько конструкций, вдохновлённых shapeless в scala 3 (Да)
6. Термин Tagless Final ввёл в обращение Edward Kmett как антипаттерн злоупотребления MTL-style (Нет)
7. EPFL совместно с Pivotal ведёт разработку новой версии известного фреймвкорка Spring на базе scala 3 под кодовым именем sprinkles ? (Нет)
8. Первые версии cats-effect были реализованы Tony Morris (Нет)