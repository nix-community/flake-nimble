{
  description = ''Python-like 'struct' for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-struct-master.flake = false;
  inputs.src-struct-master.type = "github";
  inputs.src-struct-master.owner = "OpenSystemsLab";
  inputs.src-struct-master.repo = "struct.nim";
  inputs.src-struct-master.ref = "refs/heads/master";
  inputs.src-struct-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-struct-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-struct-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-struct-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}