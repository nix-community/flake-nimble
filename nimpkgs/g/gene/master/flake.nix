{
  description = ''Gene - a general purpose language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gene-master.flake = false;
  inputs.src-gene-master.type = "github";
  inputs.src-gene-master.owner = "gcao";
  inputs.src-gene-master.repo = "gene-new";
  inputs.src-gene-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gene-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gene-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gene-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}