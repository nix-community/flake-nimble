{
  description = ''Game Boy Advance development library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-natu-master.flake = false;
  inputs.src-natu-master.type = "github";
  inputs.src-natu-master.owner = "exelotl";
  inputs.src-natu-master.repo = "natu";
  inputs.src-natu-master.ref = "refs/heads/master";
  inputs.src-natu-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-natu-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-natu-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-natu-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}