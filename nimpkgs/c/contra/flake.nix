{
  description = ''
    Lightweight Contract Programming, Design by Contract, on 9 LoC, NimScript, JavaScript, compile-time.
  '';
  inputs.src-contra.url = "https://github.com/juancarlospaco/nim-contra";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
