use std::time::Instant;
fn main() {
    let start = Instant::now();
    let mut n = 0_u32;
    for i in 1..65536 {
        for j in 1..65536 {
            if i % j == 0 {
                n = n + 1;
            }
        }
    }
    println!("{}", n);
    println!(
        "{}.{}s",
        start.elapsed().as_secs(),
        start.elapsed().subsec_millis()
    );
}
