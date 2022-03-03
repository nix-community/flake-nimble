{
  description = ''Array/Sequence/Object destructuring/unpacking macro'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-unpack-master.flake = false;
  inputs.src-unpack-master.type = "github";
  inputs.src-unpack-master.owner = "technicallyagd";
  inputs.src-unpack-master.repo = "unpack";
  inputs.src-unpack-master.ref = "refs/heads/master";
  inputs.src-unpack-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unpack-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unpack-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unpack-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}