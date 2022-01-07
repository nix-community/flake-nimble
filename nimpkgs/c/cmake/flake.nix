{
  description = ''
    CMake for Nimble
  '';
  inputs.src-cmake.url = "https://github.com/genotrance/cmake";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
