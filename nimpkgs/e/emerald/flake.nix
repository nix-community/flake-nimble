{
  description = ''
    macro-based HTML templating engine
  '';
  inputs.src-emerald.url = "https://github.com/flyx/emerald";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
