import "../lib/github.com/diku-dk/sobol/sobol-dir-50"
import "../lib/github.com/diku-dk/sobol/sobol"

module sobol = Sobol sobol_dir { let D: i64 = 2 }

let sqr (x:f64) = x * x

let in_circle (p:[sobol.D]f64) : bool =
  sqr p[0] + sqr p[1] < 1.0f64

let pi_arr [n] (arr: [n][sobol.D]f64) : f64 =
  let bs = map (i64.bool <-< in_circle) arr
  let sum = reduce (+) 0 bs
  in 4f64 * r64 sum / f64.i64 n

entry calc_pi (n:i64) : f64 =
  sobol.sobol n |> pi_arr
