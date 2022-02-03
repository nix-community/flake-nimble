{
  description = ''Twitter bot for fetching flickr images with tags'';
  inputs.src-flickr_image_bot-master.flake = false;
  inputs.src-flickr_image_bot-master.type = "github";
  inputs.src-flickr_image_bot-master.owner = "snus-kin";
  inputs.src-flickr_image_bot-master.repo = "flickr-image-bot";
  inputs.src-flickr_image_bot-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/snus-kin/twitter.nim".url = "path:../../../h/https://github.com/snus-kin/twitter.nim";
  inputs."https://github.com/snus-kin/twitter.nim".type = "github";
  inputs."https://github.com/snus-kin/twitter.nim".owner = "riinr";
  inputs."https://github.com/snus-kin/twitter.nim".repo = "flake-nimble";
  inputs."https://github.com/snus-kin/twitter.nim".ref = "flake-pinning";
  inputs."https://github.com/snus-kin/twitter.nim".dir = "nimpkgs/h/https://github.com/snus-kin/twitter.nim";

  outputs = { self, nixpkgs, src-flickr_image_bot-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flickr_image_bot-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-flickr_image_bot-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}