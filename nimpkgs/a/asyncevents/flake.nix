{
  description = ''
    Asynchronous event loop for progaming with MVC
  '';
  inputs.src-asyncevents.url = "https://github.com/tulayang/asyncevents";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
