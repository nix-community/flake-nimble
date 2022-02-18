{
  description = ''Simple variant generator empowering easy heterogeneous type operations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sumtypes-master.flake = false;
  inputs.src-sumtypes-master.type = "github";
  inputs.src-sumtypes-master.owner = "beef331";
  inputs.src-sumtypes-master.repo = "sumtypes";
  inputs.src-sumtypes-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sumtypes-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sumtypes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sumtypes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}