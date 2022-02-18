{
  description = ''A sinatra-like web framework for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jester-v0_4_1.flake = false;
  inputs.src-jester-v0_4_1.type = "github";
  inputs.src-jester-v0_4_1.owner = "dom96";
  inputs.src-jester-v0_4_1.repo = "jester";
  inputs.src-jester-v0_4_1.ref = "refs/tags/v0.4.1";
  
  
  inputs."httpbeast".type = "github";
  inputs."httpbeast".owner = "riinr";
  inputs."httpbeast".repo = "flake-nimble";
  inputs."httpbeast".ref = "flake-pinning";
  inputs."httpbeast".dir = "nimpkgs/h/httpbeast";

  
  inputs."asynctools".type = "github";
  inputs."asynctools".owner = "riinr";
  inputs."asynctools".repo = "flake-nimble";
  inputs."asynctools".ref = "flake-pinning";
  inputs."asynctools".dir = "nimpkgs/a/asynctools";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jester-v0_4_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jester-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jester-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}