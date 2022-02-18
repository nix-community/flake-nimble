{
  description = ''A bridge between R and Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rnim-master.flake = false;
  inputs.src-rnim-master.type = "github";
  inputs.src-rnim-master.owner = "SciNim";
  inputs.src-rnim-master.repo = "rnim";
  inputs.src-rnim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rnim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}