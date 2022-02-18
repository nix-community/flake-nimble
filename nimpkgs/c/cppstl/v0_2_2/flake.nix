{
  description = ''Bindings for the C++ Standard Template Library (STL)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cppstl-v0_2_2.flake = false;
  inputs.src-cppstl-v0_2_2.type = "github";
  inputs.src-cppstl-v0_2_2.owner = "BigEpsilon";
  inputs.src-cppstl-v0_2_2.repo = "nim-cppstl";
  inputs.src-cppstl-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cppstl-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cppstl-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cppstl-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}