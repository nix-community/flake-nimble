{
  description = ''
    Bindings for Greasemonkey API and an userscript header generator
  '';
  inputs.src-gm_api.url = "https://gitea.com/thisago/gm_api";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
