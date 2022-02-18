{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zippy-master.flake = false;
  inputs.src-zippy-master.type = "github";
  inputs.src-zippy-master.owner = "guzba";
  inputs.src-zippy-master.repo = "zippy";
  inputs.src-zippy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zippy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zippy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}