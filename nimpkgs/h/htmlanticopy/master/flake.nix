{
  description = ''Block copy of any text in HTML'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-htmlAntiCopy-master.flake = false;
  inputs.src-htmlAntiCopy-master.type = "github";
  inputs.src-htmlAntiCopy-master.owner = "thisago";
  inputs.src-htmlAntiCopy-master.repo = "htmlAntiCopy";
  inputs.src-htmlAntiCopy-master.ref = "refs/heads/master";
  inputs.src-htmlAntiCopy-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-htmlAntiCopy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htmlAntiCopy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-htmlAntiCopy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}