{
  description = ''A RPC framework for building web APIs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nerve-0_1_0.flake = false;
  inputs.src-nerve-0_1_0.type = "github";
  inputs.src-nerve-0_1_0.owner = "nepeckman";
  inputs.src-nerve-0_1_0.repo = "nerve-rpc";
  inputs.src-nerve-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-nerve-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."httpbeast".type = "github";
  # inputs."httpbeast".owner = "riinr";
  # inputs."httpbeast".repo = "flake-nimble";
  # inputs."httpbeast".ref = "flake-pinning";
  # inputs."httpbeast".dir = "nimpkgs/h/httpbeast";
  # inputs."httpbeast".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."httpbeast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nerve-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nerve-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nerve-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}