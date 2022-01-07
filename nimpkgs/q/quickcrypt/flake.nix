{
  description = ''
    A library for quickly and easily encrypting strings & files. User-friendly and highly compatible.
  '';
  inputs.src-quickcrypt.url = "https://github.com/theAkito/nim-quickcrypt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
