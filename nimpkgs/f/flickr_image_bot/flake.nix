{
  description = ''
    Twitter bot for fetching flickr images with tags
  '';
  inputs.src-flickr_image_bot.url = "https://github.com/snus-kin/flickr-image-bot";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
