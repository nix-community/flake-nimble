{
  description = ''API for www.eloverblik.dk'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-eloverblik-v0_0_1.flake = false;
  inputs.src-eloverblik-v0_0_1.type = "github";
  inputs.src-eloverblik-v0_0_1.owner = "ThomasTJdev";
  inputs.src-eloverblik-v0_0_1.repo = "nim_eloverblik_api";
  inputs.src-eloverblik-v0_0_1.ref = "refs/tags/v0.0.1";
  inputs.src-eloverblik-v0_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nmqtt".type = "github";
  # inputs."nmqtt".owner = "riinr";
  # inputs."nmqtt".repo = "flake-nimble";
  # inputs."nmqtt".ref = "flake-pinning";
  # inputs."nmqtt".dir = "nimpkgs/n/nmqtt";
  # inputs."nmqtt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nmqtt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eloverblik-v0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eloverblik-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eloverblik-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}