{
  description = ''A sinatra-like web framework for Nim.'';
  inputs.src-jester-v0_4_0.flake = false;
  inputs.src-jester-v0_4_0.type = "github";
  inputs.src-jester-v0_4_0.owner = "dom96";
  inputs.src-jester-v0_4_0.repo = "jester";
  inputs.src-jester-v0_4_0.ref = "refs/tags/v0.4.0";
  
  
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

  outputs = { self, nixpkgs, src-jester-v0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jester-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jester-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}