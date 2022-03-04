{
  description = ''A performant and scalable HTTP server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-httpbeast-master.flake = false;
  inputs.src-httpbeast-master.type = "github";
  inputs.src-httpbeast-master.owner = "dom96";
  inputs.src-httpbeast-master.repo = "httpbeast";
  inputs.src-httpbeast-master.ref = "refs/heads/master";
  inputs.src-httpbeast-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."asynctools".type = "github";
  inputs."asynctools".owner = "riinr";
  inputs."asynctools".repo = "flake-nimble";
  inputs."asynctools".ref = "flake-pinning";
  inputs."asynctools".dir = "nimpkgs/a/asynctools";
  inputs."asynctools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-httpbeast-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpbeast-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-httpbeast-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}