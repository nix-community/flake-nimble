{
  description = ''
    NWSync Repository Management utilities
  '';
  inputs.src-nwsync.url = "https://github.com/Beamdog/nwsync";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
