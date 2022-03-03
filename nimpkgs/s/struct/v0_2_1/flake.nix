{
  description = ''Python-like 'struct' for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-struct-v0_2_1.flake = false;
  inputs.src-struct-v0_2_1.type = "github";
  inputs.src-struct-v0_2_1.owner = "OpenSystemsLab";
  inputs.src-struct-v0_2_1.repo = "struct.nim";
  inputs.src-struct-v0_2_1.ref = "refs/tags/v0.2.1";
  inputs.src-struct-v0_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-struct-v0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-struct-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-struct-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}