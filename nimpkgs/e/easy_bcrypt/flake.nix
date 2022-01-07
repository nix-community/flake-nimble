{
  description = ''
    A simple wrapper providing a convenient reentrant interface for the bcrypt password hashing algorithm.
  '';
  inputs.src-easy_bcrypt.url = "https://github.com/Akito13/easy-bcrypt.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
