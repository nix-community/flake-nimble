{
  description = ''libipset wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-libipset-0_0_1.flake = false;
  inputs.src-libipset-0_0_1.type = "github";
  inputs.src-libipset-0_0_1.owner = "ba0f3";
  inputs.src-libipset-0_0_1.repo = "libipset.nim";
  inputs.src-libipset-0_0_1.ref = "refs/tags/0.0.1";
  inputs.src-libipset-0_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libipset-0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libipset-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libipset-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}