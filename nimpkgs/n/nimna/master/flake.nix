{
  description = ''Nucleic acid folding and design.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimna-master.flake = false;
  inputs.src-nimna-master.type = "github";
  inputs.src-nimna-master.owner = "mjendrusch";
  inputs.src-nimna-master.repo = "nimna";
  inputs.src-nimna-master.ref = "refs/heads/master";
  inputs.src-nimna-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimna-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimna-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimna-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}