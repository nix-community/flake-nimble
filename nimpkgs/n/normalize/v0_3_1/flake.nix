{
  description = ''Unicode normalization forms (tr15)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-normalize-v0_3_1.flake = false;
  inputs.src-normalize-v0_3_1.type = "github";
  inputs.src-normalize-v0_3_1.owner = "nitely";
  inputs.src-normalize-v0_3_1.repo = "nim-normalize";
  inputs.src-normalize-v0_3_1.ref = "refs/tags/v0.3.1";
  
  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  outputs = { self, nixpkgs, flakeNimbleLib, src-normalize-v0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-normalize-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-normalize-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}