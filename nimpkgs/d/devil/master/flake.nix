{
  description = ''Wrapper for the DevIL image library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-devil-master.flake = false;
  inputs.src-devil-master.type = "github";
  inputs.src-devil-master.owner = "Varriount";
  inputs.src-devil-master.repo = "DevIL";
  inputs.src-devil-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-devil-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-devil-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-devil-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}