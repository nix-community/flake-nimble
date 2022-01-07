{
  description = ''
    A command handler for the dimscord discord library
  '';
  inputs.src-dimscmd.url = "https://github.com/ire4ever1190/dimscordCommandHandler";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
