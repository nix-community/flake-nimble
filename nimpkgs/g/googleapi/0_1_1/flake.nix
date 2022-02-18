{
  description = ''Google API for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-googleapi-0_1_1.flake = false;
  inputs.src-googleapi-0_1_1.type = "github";
  inputs.src-googleapi-0_1_1.owner = "treeform";
  inputs.src-googleapi-0_1_1.repo = "googleapi";
  inputs.src-googleapi-0_1_1.ref = "refs/tags/0.1.1";
  
  
  inputs."quickjwt".type = "github";
  inputs."quickjwt".owner = "riinr";
  inputs."quickjwt".repo = "flake-nimble";
  inputs."quickjwt".ref = "flake-pinning";
  inputs."quickjwt".dir = "nimpkgs/q/quickjwt";

  outputs = { self, nixpkgs, flakeNimbleLib, src-googleapi-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-googleapi-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-googleapi-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}