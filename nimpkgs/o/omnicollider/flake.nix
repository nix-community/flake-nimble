{
  description = ''
    SuperCollider wrapper for omni.
  '';
  inputs.src-omnicollider.url = "https://github.com/vitreo12/omnicollider";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
