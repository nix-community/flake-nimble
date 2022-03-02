{
  description = ''API for www.eloverblik.dk'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-eloverblik-v0_0_7.flake = false;
  inputs.src-eloverblik-v0_0_7.type = "github";
  inputs.src-eloverblik-v0_0_7.owner = "ThomasTJdev";
  inputs.src-eloverblik-v0_0_7.repo = "nim_eloverblik_api";
  inputs.src-eloverblik-v0_0_7.ref = "refs/tags/v0.0.7";
  inputs.src-eloverblik-v0_0_7.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nmqtt".type = "github";
  # inputs."nmqtt".owner = "riinr";
  # inputs."nmqtt".repo = "flake-nimble";
  # inputs."nmqtt".ref = "flake-pinning";
  # inputs."nmqtt".dir = "nimpkgs/n/nmqtt";
  # inputs."nmqtt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nmqtt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eloverblik-v0_0_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eloverblik-v0_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eloverblik-v0_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}