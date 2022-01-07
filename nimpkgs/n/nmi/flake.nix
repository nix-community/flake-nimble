{
  description = ''
    nmi display animations aimed to correct users who accidentally enter nmi instead of nim.
  '';
  inputs.src-nmi.url = "https://github.com/jiro4989/nmi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
