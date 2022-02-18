{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zippy-0_5_10.flake = false;
  inputs.src-zippy-0_5_10.type = "github";
  inputs.src-zippy-0_5_10.owner = "guzba";
  inputs.src-zippy-0_5_10.repo = "zippy";
  inputs.src-zippy-0_5_10.ref = "refs/tags/0.5.10";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zippy-0_5_10, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_5_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zippy-0_5_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}