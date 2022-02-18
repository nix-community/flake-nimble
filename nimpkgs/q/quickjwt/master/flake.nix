{
  description = ''JSON Web Tokens for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-quickjwt-master.flake = false;
  inputs.src-quickjwt-master.type = "github";
  inputs.src-quickjwt-master.owner = "treeform";
  inputs.src-quickjwt-master.repo = "quickjwt";
  inputs.src-quickjwt-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-quickjwt-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-quickjwt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-quickjwt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}