{
  description = ''Nim Semi-Auto Bug Report Tool'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimbug-master.flake = false;
  inputs.src-nimbug-master.type = "github";
  inputs.src-nimbug-master.owner = "juancarlospaco";
  inputs.src-nimbug-master.repo = "nimbug";
  inputs.src-nimbug-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbug-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbug-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbug-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}