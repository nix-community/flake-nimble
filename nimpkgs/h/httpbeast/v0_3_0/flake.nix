{
  description = ''A performant and scalable HTTP server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-httpbeast-v0_3_0.flake = false;
  inputs.src-httpbeast-v0_3_0.type = "github";
  inputs.src-httpbeast-v0_3_0.owner = "dom96";
  inputs.src-httpbeast-v0_3_0.repo = "httpbeast";
  inputs.src-httpbeast-v0_3_0.ref = "refs/tags/v0.3.0";
  inputs.src-httpbeast-v0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/iffy/asynctools".type = "github";
  # inputs."https://github.com/iffy/asynctools".owner = "riinr";
  # inputs."https://github.com/iffy/asynctools".repo = "flake-nimble";
  # inputs."https://github.com/iffy/asynctools".ref = "flake-pinning";
  # inputs."https://github.com/iffy/asynctools".dir = "nimpkgs/h/https://github.com/iffy/asynctools";
  # inputs."https://github.com/iffy/asynctools".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/iffy/asynctools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-httpbeast-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpbeast-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-httpbeast-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}