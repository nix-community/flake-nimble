{
  description = ''A Funge-98 interpreter written in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimfunge98-master.flake = false;
  inputs.src-nimfunge98-master.type = "other";
  inputs.src-nimfunge98-master.owner = "adyxax";
  inputs.src-nimfunge98-master.repo = "nimfunge98";
  inputs.src-nimfunge98-master.ref = "refs/heads/master";
  inputs.src-nimfunge98-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfunge98-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfunge98-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfunge98-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}