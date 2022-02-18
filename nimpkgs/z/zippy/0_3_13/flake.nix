{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zippy-0_3_13.flake = false;
  inputs.src-zippy-0_3_13.type = "github";
  inputs.src-zippy-0_3_13.owner = "guzba";
  inputs.src-zippy-0_3_13.repo = "zippy";
  inputs.src-zippy-0_3_13.ref = "refs/tags/0.3.13";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zippy-0_3_13, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_3_13;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zippy-0_3_13"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}