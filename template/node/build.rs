fn main() {
	let version = std::env::var("CARGO_PKG_VERSION").unwrap_or_else(|_| "0.0.0".to_string());
	println!("cargo:rustc-env=SUBSTRATE_CLI_IMPL_VERSION={version}");
	println!("cargo:rerun-if-changed=build.rs");
}
