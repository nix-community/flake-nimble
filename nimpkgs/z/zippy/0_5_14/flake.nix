{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zippy-0_5_14.flake = false;
  inputs.src-zippy-0_5_14.type = "github";
  inputs.src-zippy-0_5_14.owner = "guzba";
  inputs.src-zippy-0_5_14.repo = "zippy";
  inputs.src-zippy-0_5_14.ref = "refs/tags/0.5.14";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zippy-0_5_14, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_5_14;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zippy-0_5_14"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}