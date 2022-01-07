{
  description = ''
    Nimterop makes C/C++ interop within Nim seamless
  '';
  inputs.src-nimterop.url = "https://github.com/genotrance/nimterop";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
