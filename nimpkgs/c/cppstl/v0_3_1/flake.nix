{
  description = ''Bindings for the C++ Standard Template Library (STL)'';
  inputs.src-cppstl-v0_3_1.flake = false;
  inputs.src-cppstl-v0_3_1.type = "github";
  inputs.src-cppstl-v0_3_1.owner = "BigEpsilon";
  inputs.src-cppstl-v0_3_1.repo = "nim-cppstl";
  inputs.src-cppstl-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-cppstl-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cppstl-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cppstl-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}