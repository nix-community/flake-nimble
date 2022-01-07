{
  description = ''
    Tools for working with re-frame ClojureScript projects
  '';
  inputs.src-reframe.url = "https://github.com/rosado/reframe.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
