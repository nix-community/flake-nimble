{
  description = ''A component/entity system'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-entoody-master.flake = false;
  inputs.src-entoody-master.type = "bitbucket";
  inputs.src-entoody-master.owner = "fowlmouth";
  inputs.src-entoody-master.repo = "entoody";
  inputs.src-entoody-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-entoody-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-entoody-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-entoody-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}