use futhark_impl::{Error, FutharkContext};

fn main() -> Result<(), Error> {
    let mut ctx = FutharkContext::new()?;
    let res = ctx.calc_pi(1_000_000_000)?;

    println!("{}", res);
    Ok(())
}
