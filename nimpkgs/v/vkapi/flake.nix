{
  description = ''
    A wrapper for the vk.com API (russian social network)
  '';
  inputs.src-vkapi.url = "https://github.com/Yardanico/nimvkapi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
