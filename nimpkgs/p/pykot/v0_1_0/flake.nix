{
  description = ''Porting some Python / Kotlin features to Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pykot-v0_1_0.flake = false;
  inputs.src-pykot-v0_1_0.type = "github";
  inputs.src-pykot-v0_1_0.owner = "jabbalaci";
  inputs.src-pykot-v0_1_0.repo = "nimpykot";
  inputs.src-pykot-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pykot-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pykot-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pykot-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}