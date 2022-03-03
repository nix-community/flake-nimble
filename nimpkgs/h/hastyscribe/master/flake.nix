{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hastyscribe-master.flake = false;
  inputs.src-hastyscribe-master.type = "github";
  inputs.src-hastyscribe-master.owner = "h3rald";
  inputs.src-hastyscribe-master.repo = "hastyscribe";
  inputs.src-hastyscribe-master.ref = "refs/heads/master";
  inputs.src-hastyscribe-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hastyscribe-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastyscribe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hastyscribe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}