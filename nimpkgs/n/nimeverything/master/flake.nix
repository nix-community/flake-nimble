{
  description = ''everything  search engine wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimeverything-master.flake = false;
  inputs.src-nimeverything-master.type = "github";
  inputs.src-nimeverything-master.owner = "xland";
  inputs.src-nimeverything-master.repo = "nimeverything";
  inputs.src-nimeverything-master.ref = "refs/heads/master";
  inputs.src-nimeverything-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimeverything-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimeverything-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimeverything-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}