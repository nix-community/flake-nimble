{
  description = ''A library for cleanly creating an object or tuple based on another object or tuple'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-basedon-master.flake = false;
  inputs.src-basedon-master.type = "github";
  inputs.src-basedon-master.owner = "KaceCottam";
  inputs.src-basedon-master.repo = "basedOn";
  inputs.src-basedon-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-basedon-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-basedon-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-basedon-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}