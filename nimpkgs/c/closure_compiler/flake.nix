{
  description = ''
    Bindings for Closure Compiler web API.
  '';
  inputs.src-closure_compiler.url = "https://github.com/yglukhov/closure_compiler.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
