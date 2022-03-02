{
  description = ''A GiantBomb-wiki wrapper for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimbomb-master.flake = false;
  inputs.src-nimbomb-master.type = "github";
  inputs.src-nimbomb-master.owner = "Tyler-Yocolano";
  inputs.src-nimbomb-master.repo = "nimbomb";
  inputs.src-nimbomb-master.ref = "refs/heads/master";
  inputs.src-nimbomb-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbomb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbomb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbomb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}