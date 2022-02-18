{
  description = ''Google API for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-googleapi-v0_1_0.flake = false;
  inputs.src-googleapi-v0_1_0.type = "github";
  inputs.src-googleapi-v0_1_0.owner = "treeform";
  inputs.src-googleapi-v0_1_0.repo = "googleapi";
  inputs.src-googleapi-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."quickjwt".type = "github";
  inputs."quickjwt".owner = "riinr";
  inputs."quickjwt".repo = "flake-nimble";
  inputs."quickjwt".ref = "flake-pinning";
  inputs."quickjwt".dir = "nimpkgs/q/quickjwt";

  outputs = { self, nixpkgs, flakeNimbleLib, src-googleapi-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-googleapi-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-googleapi-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}