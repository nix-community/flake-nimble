{
  description = ''
    Create ICS files for email invites, eg. invite.ics
  '';
  inputs.src-nimics.url = "https://github.com/ThomasTJdev/nimics";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
