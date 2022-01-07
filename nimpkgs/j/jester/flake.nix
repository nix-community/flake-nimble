{
  description = ''
    A sinatra-like web framework for Nim.
  '';
  inputs.src-jester.url = "https://github.com/dom96/jester/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
