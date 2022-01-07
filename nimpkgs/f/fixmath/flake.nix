{
  description = ''
    LibFixMath 16:16 fixed point support for nim
  '';
  inputs.src-fixmath.url = "https://github.com/Jeff-Ciesielski/fixmath";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
