{
  description = ''API for www.eloverblik.dk'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-eloverblik-master.flake = false;
  inputs.src-eloverblik-master.type = "github";
  inputs.src-eloverblik-master.owner = "ThomasTJdev";
  inputs.src-eloverblik-master.repo = "nim_eloverblik_api";
  inputs.src-eloverblik-master.ref = "refs/heads/master";
  inputs.src-eloverblik-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nmqtt".type = "github";
  # inputs."nmqtt".owner = "riinr";
  # inputs."nmqtt".repo = "flake-nimble";
  # inputs."nmqtt".ref = "flake-pinning";
  # inputs."nmqtt".dir = "nimpkgs/n/nmqtt";
  # inputs."nmqtt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nmqtt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eloverblik-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eloverblik-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eloverblik-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}