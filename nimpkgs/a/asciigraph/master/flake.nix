{
  description = ''Console ascii line charts in pure nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-asciigraph-master.flake = false;
  inputs.src-asciigraph-master.type = "github";
  inputs.src-asciigraph-master.owner = "Yardanico";
  inputs.src-asciigraph-master.repo = "asciigraph";
  inputs.src-asciigraph-master.ref = "refs/heads/master";
  inputs.src-asciigraph-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-asciigraph-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asciigraph-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asciigraph-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}