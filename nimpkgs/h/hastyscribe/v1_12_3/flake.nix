{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-hastyscribe-v1_12_3.flake = false;
  inputs.src-hastyscribe-v1_12_3.type = "github";
  inputs.src-hastyscribe-v1_12_3.owner = "h3rald";
  inputs.src-hastyscribe-v1_12_3.repo = "hastyscribe";
  inputs.src-hastyscribe-v1_12_3.ref = "refs/tags/v1.12.3";
  inputs.src-hastyscribe-v1_12_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hastyscribe-v1_12_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastyscribe-v1_12_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hastyscribe-v1_12_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}