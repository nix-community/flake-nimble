{
  description = ''Nim implementation of Snappy compression algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nim-snappy-master.flake = false;
  inputs.src-nim-snappy-master.type = "github";
  inputs.src-nim-snappy-master.owner = "status-im";
  inputs.src-nim-snappy-master.repo = "nim-snappy";
  inputs.src-nim-snappy-master.ref = "refs/heads/master";
  inputs.src-nim-snappy-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nim-snappy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim-snappy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nim-snappy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}