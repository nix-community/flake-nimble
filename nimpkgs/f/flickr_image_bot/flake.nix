{
  description = ''Twitter bot for fetching flickr images with tags'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."flickr_image_bot-master".type = "github";
  inputs."flickr_image_bot-master".owner = "riinr";
  inputs."flickr_image_bot-master".repo = "flake-nimble";
  inputs."flickr_image_bot-master".ref = "flake-pinning";
  inputs."flickr_image_bot-master".dir = "nimpkgs/f/flickr_image_bot/master";
  inputs."flickr_image_bot-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flickr_image_bot-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}