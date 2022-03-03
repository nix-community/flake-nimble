{
  description = ''Template generator for gester'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nim_exodus-master.flake = false;
  inputs.src-nim_exodus-master.type = "github";
  inputs.src-nim_exodus-master.owner = "shinriyo";
  inputs.src-nim_exodus-master.repo = "nim_exodus";
  inputs.src-nim_exodus-master.ref = "refs/heads/master";
  inputs.src-nim_exodus-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nim_exodus-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_exodus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nim_exodus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}