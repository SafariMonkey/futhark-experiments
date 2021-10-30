use genfut::{genfut, Opt};

fn main() {
    genfut(Opt {
        name: "futhark_impl".to_string(),
        file: std::path::PathBuf::from("src/impl.fut"),
        author: "Charlton Rodda <charlton.rodda@gmail.com>".to_string(),
        version: "0.1.0".to_string(),
        license: "MIT".to_string(),
        description: "Futhark side of the implementation".to_string(),
        cuda_include_path: std::env::var("CUDA_INCLUDE_PATH").ok(),
        cuda_library_path: std::env::var("CUDA_LIBRARY_PATH").ok(),
        opencl_include_path: std::env::var("OPENCL_INCLUDE_PATH").ok(),
        opencl_library_path: std::env::var("OPENCL_LIBRARY_PATH").ok(),
    })
}