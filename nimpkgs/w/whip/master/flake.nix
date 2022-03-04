{
  description = ''Whip is high performance web application server based on httpbeast a nest for redix tree based routing with some extra opmtizations.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-whip-master.flake = false;
  inputs.src-whip-master.type = "github";
  inputs.src-whip-master.owner = "mattaylor";
  inputs.src-whip-master.repo = "whip";
  inputs.src-whip-master.ref = "refs/heads/master";
  inputs.src-whip-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."packedjson".type = "github";
  inputs."packedjson".owner = "riinr";
  inputs."packedjson".repo = "flake-nimble";
  inputs."packedjson".ref = "flake-pinning";
  inputs."packedjson".dir = "nimpkgs/p/packedjson";
  inputs."packedjson".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nest".type = "github";
  inputs."nest".owner = "riinr";
  inputs."nest".repo = "flake-nimble";
  inputs."nest".ref = "flake-pinning";
  inputs."nest".dir = "nimpkgs/n/nest";
  inputs."nest".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nest".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."httpbeast".type = "github";
  inputs."httpbeast".owner = "riinr";
  inputs."httpbeast".repo = "flake-nimble";
  inputs."httpbeast".ref = "flake-pinning";
  inputs."httpbeast".dir = "nimpkgs/h/httpbeast";
  inputs."httpbeast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-whip-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-whip-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-whip-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}