{
  description = ''An Adaptive Index Library For Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-adix-master.flake = false;
  inputs.src-adix-master.type = "github";
  inputs.src-adix-master.owner = "c-blake";
  inputs.src-adix-master.repo = "adix";
  inputs.src-adix-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-adix-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-adix-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-adix-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}