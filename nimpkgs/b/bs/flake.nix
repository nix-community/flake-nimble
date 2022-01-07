{
  description = ''
    A good alternative to Makefile.
  '';
  inputs.src-bs.url = "https://github.com/maubg-debug/build-sys";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
