{
  description = ''
    Opt parser using synopsis as specification, ported from Lua.
  '';
  inputs.src-lapp.url = "https://gitlab.3dicc.com/gokr/lapp.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
