{
  description = ''
    Bindings to the high-level Argon2 C API
  '';
  inputs.src-argon2_bind.url = "https://github.com/D-Nice/argon2_bind";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
