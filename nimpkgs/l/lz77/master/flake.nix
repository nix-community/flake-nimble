{
  description = ''Implementation of various LZ77 algorithms'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-lz77-master.flake = false;
  inputs.src-lz77-master.type = "github";
  inputs.src-lz77-master.owner = "sealmove";
  inputs.src-lz77-master.repo = "LZ77";
  inputs.src-lz77-master.ref = "refs/heads/master";
  inputs.src-lz77-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lz77-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lz77-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lz77-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}