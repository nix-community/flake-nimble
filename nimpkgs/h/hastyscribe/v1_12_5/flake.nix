{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hastyscribe-v1_12_5.flake = false;
  inputs.src-hastyscribe-v1_12_5.type = "github";
  inputs.src-hastyscribe-v1_12_5.owner = "h3rald";
  inputs.src-hastyscribe-v1_12_5.repo = "hastyscribe";
  inputs.src-hastyscribe-v1_12_5.ref = "refs/tags/v1.12.5";
  inputs.src-hastyscribe-v1_12_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hastyscribe-v1_12_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastyscribe-v1_12_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hastyscribe-v1_12_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}