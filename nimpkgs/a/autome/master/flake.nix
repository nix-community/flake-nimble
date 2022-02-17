{
  description = ''Write GUI automation scripts with Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-autome-master.flake = false;
  inputs.src-autome-master.type = "github";
  inputs.src-autome-master.owner = "miere43";
  inputs.src-autome-master.repo = "autome";
  inputs.src-autome-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-autome-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-autome-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-autome-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}