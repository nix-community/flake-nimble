{
  description = ''
    Wrapper for the nanomsg socket library that provides several common communication patterns
  '';
  inputs.src-nanomsg.url = "https://github.com/def-/nim-nanomsg";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
