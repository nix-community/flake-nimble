{
  description = ''Typelists in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-typelists-master.flake = false;
  inputs.src-typelists-master.type = "github";
  inputs.src-typelists-master.owner = "yglukhov";
  inputs.src-typelists-master.repo = "typelists";
  inputs.src-typelists-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-typelists-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-typelists-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-typelists-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}