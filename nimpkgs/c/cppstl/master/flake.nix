{
  description = ''Bindings for the C++ Standard Template Library (STL)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cppstl-master.flake = false;
  inputs.src-cppstl-master.type = "github";
  inputs.src-cppstl-master.owner = "BigEpsilon";
  inputs.src-cppstl-master.repo = "nim-cppstl";
  inputs.src-cppstl-master.ref = "refs/heads/master";
  inputs.src-cppstl-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cppstl-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cppstl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cppstl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}