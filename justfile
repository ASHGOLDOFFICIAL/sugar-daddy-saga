build:
    cargo build --workspace --locked --verbose

deps:
    cargo machete

doc:
    RUSTDOCFLAGS="-D warnings" cargo doc --workspace --no-deps --locked

format:
    cargo fmt --all -- --check

lint:
    cargo clippy --workspace --all-targets --locked -- -D warnings

test:
    cargo test --workspace --locked --verbose

typos:
    typos

ci: format lint doc build test deps typos
