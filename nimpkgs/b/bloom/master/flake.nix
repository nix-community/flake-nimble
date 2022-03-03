{
  description = ''Efficient Bloom filter implementation in Nim using MurmurHash3.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bloom-master.flake = false;
  inputs.src-bloom-master.type = "github";
  inputs.src-bloom-master.owner = "boydgreenfield";
  inputs.src-bloom-master.repo = "nimrod-bloom";
  inputs.src-bloom-master.ref = "refs/heads/master";
  inputs.src-bloom-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bloom-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bloom-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bloom-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}