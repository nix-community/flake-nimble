{
  description = ''Engine-agnostic library for computing 2D raycasted lights'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-delight-master.flake = false;
  inputs.src-delight-master.type = "github";
  inputs.src-delight-master.owner = "liquid600pgm";
  inputs.src-delight-master.repo = "delight";
  inputs.src-delight-master.ref = "refs/heads/master";
  
  
  inputs."glm".type = "github";
  inputs."glm".owner = "riinr";
  inputs."glm".repo = "flake-nimble";
  inputs."glm".ref = "flake-pinning";
  inputs."glm".dir = "nimpkgs/g/glm";

  outputs = { self, nixpkgs, flakeNimbleLib, src-delight-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-delight-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-delight-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}