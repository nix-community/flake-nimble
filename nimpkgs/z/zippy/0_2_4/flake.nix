{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-zippy-0_2_4.flake = false;
  inputs.src-zippy-0_2_4.type = "github";
  inputs.src-zippy-0_2_4.owner = "guzba";
  inputs.src-zippy-0_2_4.repo = "zippy";
  inputs.src-zippy-0_2_4.ref = "refs/tags/0.2.4";
  inputs.src-zippy-0_2_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zippy-0_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zippy-0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}