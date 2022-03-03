{
  description = ''Scraping API for www.nordnet.dk ready to integrate with Home Assistant (Hassio)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nordnet-v0_0_6.flake = false;
  inputs.src-nordnet-v0_0_6.type = "github";
  inputs.src-nordnet-v0_0_6.owner = "ThomasTJdev";
  inputs.src-nordnet-v0_0_6.repo = "nim_nordnet_api";
  inputs.src-nordnet-v0_0_6.ref = "refs/tags/v0.0.6";
  inputs.src-nordnet-v0_0_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nmqtt".type = "github";
  # inputs."nmqtt".owner = "riinr";
  # inputs."nmqtt".repo = "flake-nimble";
  # inputs."nmqtt".ref = "flake-pinning";
  # inputs."nmqtt".dir = "nimpkgs/n/nmqtt";
  # inputs."nmqtt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nmqtt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."q".type = "github";
  # inputs."q".owner = "riinr";
  # inputs."q".repo = "flake-nimble";
  # inputs."q".ref = "flake-pinning";
  # inputs."q".dir = "nimpkgs/q/q";
  # inputs."q".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."q".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nordnet-v0_0_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nordnet-v0_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nordnet-v0_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}