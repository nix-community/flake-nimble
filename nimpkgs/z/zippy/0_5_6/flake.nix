{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-zippy-0_5_6.flake = false;
  inputs.src-zippy-0_5_6.type = "github";
  inputs.src-zippy-0_5_6.owner = "guzba";
  inputs.src-zippy-0_5_6.repo = "zippy";
  inputs.src-zippy-0_5_6.ref = "refs/tags/0.5.6";
  inputs.src-zippy-0_5_6.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zippy-0_5_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_5_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zippy-0_5_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}