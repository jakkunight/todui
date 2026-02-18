{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "todui";
  version = "0-unstable-2025-06-06";

  src = fetchFromGitHub {
    owner = "jakkunight";
    repo = "todui";
    rev = "1642e4e77510d32a793535b0b66c0b63f05bb032";
    hash = "sha256-FxnBSatb+Z7EyD00nMBlYIsh09Rvhk56F1+/6S7JtcU=";
  };

  cargoHash = "sha256-+BmbYoWjpdgviszoYV5jlMa0f91vG63FNfhHxKIvdbc=";

  meta = {
    description = "A TUI for your todos built in Rust with full CLI support";
    homepage = "https://github.com/jakkunight/todui";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "todui";
  };
})
