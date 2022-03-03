{
  description = ''A simple MurmurHash3 wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-murmur3-master.flake = false;
  inputs.src-murmur3-master.type = "github";
  inputs.src-murmur3-master.owner = "boydgreenfield";
  inputs.src-murmur3-master.repo = "nimrod-murmur";
  inputs.src-murmur3-master.ref = "refs/heads/master";
  inputs.src-murmur3-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-murmur3-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-murmur3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-murmur3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}