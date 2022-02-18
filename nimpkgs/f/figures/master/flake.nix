{
  description = ''unicode symbols'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-figures-master.flake = false;
  inputs.src-figures-master.type = "github";
  inputs.src-figures-master.owner = "lmariscal";
  inputs.src-figures-master.repo = "figures";
  inputs.src-figures-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-figures-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-figures-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-figures-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}