{
  description = ''
    Wraps the bcrypt (blowfish) library for creating encrypted hashes (useful for passwords)
  '';
  inputs.src-bcrypt.url = "https://github.com/ithkuil/bcryptnim/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
