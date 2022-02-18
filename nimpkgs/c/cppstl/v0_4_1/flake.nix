{
  description = ''Bindings for the C++ Standard Template Library (STL)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cppstl-v0_4_1.flake = false;
  inputs.src-cppstl-v0_4_1.type = "github";
  inputs.src-cppstl-v0_4_1.owner = "BigEpsilon";
  inputs.src-cppstl-v0_4_1.repo = "nim-cppstl";
  inputs.src-cppstl-v0_4_1.ref = "refs/tags/v0.4.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cppstl-v0_4_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cppstl-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cppstl-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}