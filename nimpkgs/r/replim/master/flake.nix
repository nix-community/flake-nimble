{
  description = ''most quick REPL of nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-replim-master.flake = false;
  inputs.src-replim-master.type = "github";
  inputs.src-replim-master.owner = "gmshiba";
  inputs.src-replim-master.repo = "replim";
  inputs.src-replim-master.ref = "refs/heads/master";
  inputs.src-replim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-replim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-replim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-replim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}