{
  description = ''
    IPC interface to sway (or i3) compositors
  '';
  inputs.src-swayipc.url = "https://github.com/disruptek/swayipc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
