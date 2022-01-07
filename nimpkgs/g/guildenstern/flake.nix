{
  description = ''
    Modular multithreading Linux HTTP server
  '';
  inputs.src-guildenstern.url = "https://github.com/olliNiinivaara/GuildenStern";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
