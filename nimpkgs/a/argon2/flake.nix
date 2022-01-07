{
  description = ''
    A nim wrapper for the Argon2 hashing library
  '';
  inputs.src-argon2.url = "https://github.com/Ahrotahn/argon2";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
