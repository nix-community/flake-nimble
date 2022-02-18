{
  description = ''Bindings for Simple and Fast Multimedia Library (through CSFML)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-csfml-master.flake = false;
  inputs.src-csfml-master.type = "github";
  inputs.src-csfml-master.owner = "oprypin";
  inputs.src-csfml-master.repo = "nim-csfml";
  inputs.src-csfml-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-csfml-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csfml-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-csfml-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}