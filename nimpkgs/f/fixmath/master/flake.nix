{
  description = ''LibFixMath 16:16 fixed point support for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-fixmath-master.flake = false;
  inputs.src-fixmath-master.type = "github";
  inputs.src-fixmath-master.owner = "Jeff-Ciesielski";
  inputs.src-fixmath-master.repo = "fixmath";
  inputs.src-fixmath-master.ref = "refs/heads/master";
  inputs.src-fixmath-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fixmath-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fixmath-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fixmath-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}