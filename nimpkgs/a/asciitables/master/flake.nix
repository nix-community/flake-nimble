{
  description = ''terminal ascii tables for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-asciitables-master.flake = false;
  inputs.src-asciitables-master.type = "github";
  inputs.src-asciitables-master.owner = "xmonader";
  inputs.src-asciitables-master.repo = "nim-asciitables";
  inputs.src-asciitables-master.ref = "refs/heads/master";
  inputs.src-asciitables-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-asciitables-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asciitables-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asciitables-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}