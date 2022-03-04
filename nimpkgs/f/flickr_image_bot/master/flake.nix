{
  description = ''Twitter bot for fetching flickr images with tags'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-flickr_image_bot-master.flake = false;
  inputs.src-flickr_image_bot-master.type = "github";
  inputs.src-flickr_image_bot-master.owner = "snus-kin";
  inputs.src-flickr_image_bot-master.repo = "flickr-image-bot";
  inputs.src-flickr_image_bot-master.ref = "refs/heads/master";
  inputs.src-flickr_image_bot-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."https://github.com/snus-kin/twitter.nim".type = "github";
  inputs."https://github.com/snus-kin/twitter.nim".owner = "riinr";
  inputs."https://github.com/snus-kin/twitter.nim".repo = "flake-nimble";
  inputs."https://github.com/snus-kin/twitter.nim".ref = "flake-pinning";
  inputs."https://github.com/snus-kin/twitter.nim".dir = "nimpkgs/h/https://github.com/snus-kin/twitter.nim";
  inputs."https://github.com/snus-kin/twitter.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/snus-kin/twitter.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-flickr_image_bot-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flickr_image_bot-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-flickr_image_bot-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}