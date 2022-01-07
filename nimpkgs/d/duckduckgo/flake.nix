{
  description = ''
    Duckduckgo search
  '';
  inputs.src-duckduckgo.url = "https://gitlab.com/lurlo/duckduckgo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
