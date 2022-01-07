{
  description = ''
    Internationalization at Compile Time for Nim. Macro to translate unmodified code from 1 INI file. NimScript compatible.
  '';
  inputs.src-nimterlingua.url = "https://github.com/juancarlospaco/nim-internimgua";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
